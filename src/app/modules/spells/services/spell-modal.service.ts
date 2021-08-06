import { Injectable } from '@angular/core';
import { Subject } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class SpellModalService {

  private _spellModal: Subject<number>;

  constructor() {
    this._spellModal = new Subject<number>();
  }

  /**
   * Open the spell modal for the given spell id
   *
   * @param id  spell id
   */
  openSpellModal(id: number): void {
    this._spellModal.next(id);
  }

  /**
   * Modal open event
   *
   * @returns modal
   */

  public get onSpellModal() : Subject<number> {
    return this._spellModal;
  }

}
