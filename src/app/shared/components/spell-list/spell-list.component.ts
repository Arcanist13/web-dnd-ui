import { AfterViewInit, Component, Input } from '@angular/core';
import { Sort } from '@angular/material/sort';
import { Subject } from 'rxjs';
import { ObservableService } from 'src/app/core/services/observable.service';
import { SpellModalService } from 'src/app/modules/spells/services/spell-modal.service';
import { ISpellFilter, ISpellModel } from '../../models/spell.model';
import { SpellFilterService } from '../../services/spell-filter.service';

@Component({
  selector: 'app-spell-list',
  templateUrl: './spell-list.component.html',
  styleUrls: ['./spell-list.component.css']
})
export class SpellListComponent implements AfterViewInit {

  @Input() spellUpdate!: Subject<Array<ISpellModel>>;
  @Input() filter!: ISpellFilter;
  @Input() leveled!: boolean;

  private sortSettings: Sort | undefined;
  public spells: Array<ISpellModel>;
  baseSpells: Array<ISpellModel> | undefined;

  constructor(
    private _spellModalService: SpellModalService,
    private _observableService: ObservableService,
    private _spellFilterService: SpellFilterService
  ) {
    this.spells = [];

    // Subscribe to filter clear
    this._observableService.subscribe(
      this._spellFilterService.filterClear,
      () => {
        this.filter = {};
      }
    )

    // Subscribe to filter changes
    this._observableService.subscribe(
      this._spellFilterService.filterUpdate,
      (newFilter: ISpellFilter) => {
        this.filter = {
          ...this.filter,
          ...newFilter
        };
      }
    );
  }

  /**
   * After the view is initialised subscribe to spell changes
   */
  ngAfterViewInit(): void {
    this._observableService.subscribe(
      this.spellUpdate,
      (spells: Array<ISpellModel>) => {
        this.spells = spells.slice();
        if (this.sortSettings !== undefined) {
          this.sortData(this.sortSettings);
        }
      }
    );
  }

  /**
   * Check if the given spell passes the current feature
   *
   * @param spell spell to check
   * @returns     filter pass status
   */
  checkFilter(spell: ISpellModel): boolean {
    if (this.filter) {
      if (this.filter.name && (this.filter.name !== '' && !spell.name.toLowerCase().includes(this.filter.name.toLowerCase()))) {
        return false;
      }
      else if (this.filter.level && (this.filter.level.length !== 0 && !this.filter.level.includes(+(spell.level)))) {
        return false;
      }
      else if (this.filter.cast_time && (this.filter.cast_time.length !== 0 && !this.casttimeMatch(this.filter.cast_time, spell.cast_time))) {
        return false;
      }
      else if (this.filter.ritual && (spell.ritual === this.filter.ritual)) {
        return false;
      }
    }
    return true;
  }

  /**
   * Trigger a spell modal popup
   *
   * @param id  spell id
   */
  openSpellModal(id: number): void {
    this._spellModalService.openSpellModal(id);
  }

  /**
   * Check if the spell cast time is in the given list
   *
   * @param list  list to check against
   * @param value cast time to check
   * @returns     match result
   */
  casttimeMatch(list: Array<string>, value: string): boolean {
    let match = false;
    for (let casttime of list) {
      if (value.toLowerCase().includes(casttime.toLowerCase())) {
        return true;
      }
    }
    return match;
  }

  /**
   * Sort the spells array based on the column
   *
   * @param sort  Material sort object
   */
  sortData(sort: Sort): void {
    this.sortSettings = sort;

    // Save the initial array order
    if (this.baseSpells === undefined) {
      this.baseSpells = this.spells.slice();
    }

    if (!sort.active || sort.direction === '') {
      // Update to initial order
      this.spells = this.baseSpells.slice();
    }
    else {
      // Sort on category
      this.spells.sort((a, b) => {
        const isAsc = sort.direction === 'asc';
        return this.compare(a[sort.active as keyof ISpellModel], b[sort.active as keyof ISpellModel], isAsc);
      });
    }
  }

  /**
   * Compare two spells for equivalence
   *
   * @param a     spell
   * @param b     spell
   * @param isAsc sort order
   * @returns
   */
  private compare(a: number | string, b: number | string, isAsc: boolean) {
    if (typeof a === 'string' && typeof b === 'string') {
      return (a.toLowerCase() < b.toLowerCase() ? -1 : 1) * (isAsc ? 1 : -1);
    }
    return (a < b ? -1 : 1) * (isAsc ? 1 : -1);
  }

}
