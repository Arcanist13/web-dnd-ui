import { Injectable } from '@angular/core';
import { Subject } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class FeatModalService {

  private _featModal: Subject<number>;

  constructor() {
    this._featModal = new Subject<number>();
  }

  /**
   * Open the spell modal for the given spell id
   *
   * @param id  spell id
   */
   openFeatModal(id: number): void {
    this._featModal.next(id);
  }

  /**
   * Modal open event
   *
   * @returns modal
   */
  public get onFeatModal(): Subject<number> {
    return this._featModal;
  }

}
