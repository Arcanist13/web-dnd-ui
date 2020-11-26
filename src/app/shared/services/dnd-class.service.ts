import { EventEmitter, Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class DndClassService {

  private _classes: Array<string>;
  private _spellClasses: Array<string>;
  private _currentClass: string;

  private _classChangeEvent: EventEmitter<string>;

  constructor() {
    this._classes = ['Artificer', 'Barbarian', 'Bard', 'Cleric', 'Druid', 'Fighter', 'Monk', 'Paladin', 'Ranger', 'Rogue', 'Sorcerer', 'Warlock', 'Wizard']
    this._spellClasses = ['All Spells', 'Artificer', 'Bard', 'Cleric', 'Druid', 'Paladin', 'Ranger', 'Sorcerer', 'Warlock', 'Wizard'];
    this._currentClass = '';

    this._classChangeEvent = new EventEmitter<string>();
  }

  /**
   * Getter classes
   */
  public getClasses(): Array<string> {
    return this._classes;
  }

  /**
   * Getter classes
   */
  public getSpellClasses(): Array<string> {
    return this._spellClasses;
  }

  /**
   * Change the currently selected class
   *
   * @param currentClass  new selected class
   */
  public setCurrentSpellClass(currentClass: string): void {
    this._currentClass = currentClass;
  }

  /**
   * Event emitter for class changes
   *
   * @return  event emitter
   */
  public onSpellClassChange(): EventEmitter<string> {
    return this._classChangeEvent;
  }

}
