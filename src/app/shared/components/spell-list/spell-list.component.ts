import { Component, Input } from '@angular/core';
import { Sort } from '@angular/material/sort';
import { Subject } from 'rxjs';
import { SpellModalService } from 'src/app/modules/spells/services/spell-modal.service';
import { ISpellFilter, ISpellModel } from '../../models/spell.model';
import { ObservableService } from '../../services/observable.service';
import { SpellFilterService } from '../../services/spell-filter.service';
import { SpellService } from '../../services/spell.service';

@Component({
  selector: 'app-spell-list',
  templateUrl: './spell-list.component.html',
  styleUrls: ['./spell-list.component.css'],
  providers: [ObservableService]
})
export class SpellListComponent {

  @Input() spellUpdate!: Subject<Array<ISpellModel>>;
  @Input() filter!: ISpellFilter;
  @Input() leveled!: boolean;

  private sortSettings: Sort | undefined;
  public spells: Array<ISpellModel>;
  baseSpells: Array<ISpellModel> | undefined;

  constructor(
    private _observableService: ObservableService,
    private _spellModalService: SpellModalService,
    private _spellFilterService: SpellFilterService,
    private _spellService: SpellService
  ) {
    this.spells = [];

    // Subscribe to filter clear
    this._observableService.subscribe(
      this._spellFilterService.filterClear,
      () => { this.filter = {}; }
    );

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

    // Subscribe to spell list changes
    this._observableService.subscribe(
      this._spellService.onSpellUpdate,
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
    return this._spellFilterService.checkSpellFilter(spell, this.filter);
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
