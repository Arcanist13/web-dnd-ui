import { Injectable } from '@angular/core';
import { Subject } from 'rxjs';
import { HttpService } from 'src/app/static/services/http.service';
import { STORAGE_KEY_CLASSES, STORAGE_KEY_CURRENT_CLASS, STORAGE_KEY_SPELL_CLASSES } from 'src/app/static/storage_keys.constant';
import { environment } from 'src/environments/environment';
import { IClass } from '../models/class.model';

@Injectable({
  providedIn: 'root'
})
export class DndClassService {

  private _classes: Array<IClass>;
  private _spellClasses: Array<string>;
  private _currentClass: string;

  private _classChangeEvent: Subject<string>;

  constructor(
    private _httpService: HttpService
  ) {
    this._classes = [];
    this._spellClasses = [];
    const stored = localStorage.getItem(STORAGE_KEY_CURRENT_CLASS);
    this._currentClass = stored ? stored : '';

    this.getClassList();
    this.getSpellClassList();

    this._classChangeEvent = new Subject<string>();
  }

  /**
   * Get the list of classes that can use spells
   */
  private getSpellClassList(): void {
    const spellClasses = localStorage.getItem(STORAGE_KEY_SPELL_CLASSES);
    if (spellClasses) {
      this._spellClasses = JSON.parse(spellClasses) as Array<string>;
    } else {
      this._httpService.get<Array<string>>(environment.backendUri + '/spell/class/list')
      .subscribe((spellClasses: Array<string>) => {
        this._spellClasses = spellClasses;
        localStorage.setItem(STORAGE_KEY_SPELL_CLASSES, JSON.stringify(this._spellClasses));
      });
    }
  }

  /**
   * Get the list of classes from storage or the backend
   */
  private getClassList(): void {
    const classes = localStorage.getItem(STORAGE_KEY_CLASSES);
    if (classes) {
      this._classes = JSON.parse(classes) as Array<IClass>;
    } else {
      this._httpService.get<Array<IClass>>(environment.backendUri + '/classes')
      .subscribe((classes: Array<IClass>) => {
        this._classes = classes;
        localStorage.setItem(STORAGE_KEY_CLASSES, JSON.stringify(this._classes));
      });
    }
  }

  /**
   * Getter classes
   */
  public getClasses(): Array<IClass> {
    return this._classes;
  }

  /**
   * Getter classes
   */
  public getSpellClasses(): Array<string> {
    return this._spellClasses;
  }

  /**
   * Get a class name from it's ID
   *
   * @param class_id  class id
   * @returns         class string or empty string
   */
  public getClassName(class_id: number): string {
    const cls = this._classes.find((cls: IClass) => cls.id === class_id)
    return cls ? cls.name : '';
  }

  /**
   * Change the currently selected class
   *
   * @param currentClass  new selected class
   */
  public setCurrentSpellClass(currentClass: string): void {
    this._currentClass = currentClass;
    localStorage.setItem(STORAGE_KEY_CURRENT_CLASS, this._currentClass);
    this._classChangeEvent.next(this._currentClass);
  }

  /**
   * Get the currently selected class
   *
   * @return  the selected class
   */
  public getCurrentSpellClass(): string {
    return this._currentClass;
  }

  /**
   * Event emitter for class changes
   *
   * @return  event emitter
   */
  public get onSpellClassChange() : Subject<string> {
    return this._classChangeEvent;
  }

}
