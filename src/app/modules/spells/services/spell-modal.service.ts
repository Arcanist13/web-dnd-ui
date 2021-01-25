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

  openSpellModal(id: number): void {
    this._spellModal.next(id);
  }

  onSpellModal(): Subject<number> {
    return this._spellModal;
  }

}
