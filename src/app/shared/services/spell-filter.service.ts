import { Injectable } from '@angular/core';
import { Subject } from 'rxjs';
import { ISpellFilter, ISpellModel } from '../models/spell.model';

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
   * Notify a filter update
   *
   * @param newFilter
   */
  updateFilters(newFilter: ISpellFilter): void {
    this._filterUpdate.next(newFilter);
  }

  /**
   * Notify to clear the spell filters
   */
  clearFilters(): void {
    this._filterClear.next();
  }

  /**
   * Check if a spell passes the given filter
   *
   * @param spell   spell to check
   * @param filter  filter to parse against
   */
  checkSpellFilter(spell: ISpellModel, filter: ISpellFilter): boolean {
    if (!!filter) {
      for (let _key in filter) {
        const key = _key as keyof (ISpellFilter | ISpellModel);
        const value = filter[key];
        if (!!value) {
          if (typeof value === 'string') {
            if (!this.filterString(spell[key] as string, value.toLowerCase())) {
              return false;
            }
          }
          else if (typeof value === 'number') {
            if (spell[key] !== value) {
              return false;
            }
          }
          else if (Array.isArray(value)) {
            if ((value as Array<number | string>).length !== 0 && !this.filterArrayMatch(value, spell[key])) {
              return false;
            }
          }
        }
      }
    }
    return true;
  }

  /**
   * Checks if two strings pass as a filter, so checks s1 equals s2 as well as
   * s1 includes s2, and s2 includes s1
   *
   * @param _val1 first string
   * @param _val2 second string
   * @returns     filter result
   */
   filterString(_val1: string, _val2: string): boolean {
    if (!_val1 || !_val2) {
      return false;
    }
    const val1 = _val1.toLowerCase();
    const val2 = _val2.toLowerCase();
    if (val1 === val2 || val1.includes(val2) || val2.includes(val1)) {
      return true;
    }
    return false;
  }

  /**
   * Check if the spell information is in the given list
   *
   * @param list  list to check against
   * @param value value to check
   * @returns     match result
   */
   filterArrayMatch(list: Array<string | number>, _value: string | number): boolean {
    for (let _listVal of list) {
      if (typeof _listVal === 'string' && this.filterString((_value as string), _listVal)) {
        return true;
      }
      else if (typeof _listVal === 'number' && (_value as number) == (_listVal as number)) {
        return true;
      }
    }
    return false;
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
