import { Injectable } from '@angular/core';
import { Subject } from 'rxjs';
import { ISpellFilter } from '../models/spell.model';

@Injectable({
  providedIn: 'root'
})
export class SpellFilterService {

  private _filterUpdate: Subject<ISpellFilter>;
  private _filterClear: Subject<void>;

  constructor() {
    this._filterUpdate = new Subject<ISpellFilter>();
    this._filterClear = new Subject<void>();
  }

  /**
   *
   * @param newFilter
   */
  updateFilters(newFilter: ISpellFilter): void {
    this._filterUpdate.next(newFilter);
  }

  /**
   *
   */
  clearFilters(): void {
    this._filterClear.next();
  }

  /**
   *
   */
  public get filterUpdate() : Subject<ISpellFilter> {
    return this._filterUpdate;
  }

  public get filterClear() : Subject<void> {
    return this._filterClear;
  }


}
