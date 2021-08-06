import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { Observable, Subject } from 'rxjs';
import { ISpellModel } from 'src/app/shared/models/spell.model';
import { DndClassService } from './dnd-class.service';
import { HttpService } from 'src/app/static/services/http.service';
import { ObservableService } from './observable.service';

@Injectable({
  providedIn: 'root'
})
export class SpellService extends ObservableService {

  private _spellUpdate: Subject<Array<ISpellModel>>;

  // Memory storage
  private _classSpellMap: Map<string, Array<ISpellModel>>;

  constructor(
    private _httpService: HttpService,
    private _classService: DndClassService
  ) {
    super();

    this._spellUpdate = new Subject<Array<ISpellModel>>();

    this._classSpellMap = new Map<string, Array<ISpellModel>>();

    this.subscribe(
      this._classService.onSpellClassChange,
      (newClass: string) => {
        this.getSpells(newClass);
      }
    );
  }

  /**
   * Get the list of all spells
   *
   * @param currentClass  the current spell class filter
   */
  getSpells(currentClass: string = ''): void {
    // Check if we've already loaded the spells
    if (this._classSpellMap.has(currentClass)) {
      this._spellUpdate.next(this._classSpellMap.get(currentClass));
      return;
    }

    // Build the request string
    let addr = '';
    if (!currentClass || currentClass === 'All Spells') {
      addr = environment.backendUri + '/spells';
    }
    else {
      addr = environment.backendUri + '/spell/class/' + currentClass;
    }

    this._httpService.get<Array<ISpellModel>>(addr)
      .subscribe((result: Array<ISpellModel>) => {
        this._spellUpdate.next(result);
        this._classSpellMap.set(currentClass, result);
      }
    );
  }

  /**
   * Get a spell by it's ID
   *
   * @param id  spell id
   *
   * @return    spell information promise
   */
  getSpell(id: number): Observable<ISpellModel> {
    return this._httpService.get<ISpellModel>(environment.backendUri + '/spell/' + id);
  }

  /**
   * Spell list change emitter
   *
   * @return    spell list observable
   */

  public get onSpellUpdate() :  Subject<Array<ISpellModel>> {
    return this._spellUpdate
  }

}
