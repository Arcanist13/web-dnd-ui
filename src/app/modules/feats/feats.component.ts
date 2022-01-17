import { Component, OnInit } from '@angular/core';
import { Sort } from '@angular/material/sort';
import { IFeatModel } from 'src/app/shared/models/feat.model';
import { ISpellFilter } from 'src/app/shared/models/spell.model';
import { FeatService } from 'src/app/shared/services/feat.service';
import { ObservableService } from 'src/app/shared/services/observable.service';
import { SpellFilterService } from 'src/app/shared/services/spell-filter.service';
import { STORAGE_KEY_PREVIOUS_PAGE } from 'src/app/static/storage_keys.constant';
import { FeatModalService } from './services/feat-modal.service';

@Component({
  selector: 'app-feats',
  templateUrl: './feats.component.html',
  styleUrls: ['./feats.component.css'],
  providers: [ObservableService]
})
export class FeatsComponent implements OnInit {

  public feats: Array<IFeatModel>;
  private _baseFeats?: Array<IFeatModel>;
  public featFilter: string;

  private sortSettings: Sort | undefined;

  constructor(
    private _observableService: ObservableService,
    private _featService: FeatService,
    private _featModalService: FeatModalService,
    private _spellFilterService: SpellFilterService
  ) {

    this.feats = [];
    this.featFilter = '';

    // Subscribe to updates in the feat list
    this._observableService.subscribe(
      this._featService.featUpdate,
      (_feats: Array<IFeatModel>) => {
        this.feats = _feats;
        if (this.sortSettings !== undefined) {
          this.sortData(this.sortSettings);
        }
      }
    );

    // Subscribe to changes in the filter
    this._observableService.subscribe(
      this._spellFilterService.filterUpdate,
      (filter: ISpellFilter) => {
        this.featFilter = filter.name ? filter.name.toLowerCase() : '';
      }
    );

    // Update the previousPage session storage
    localStorage.setItem(STORAGE_KEY_PREVIOUS_PAGE, 'feats');
  }

  ngOnInit(): void {
    this._featService.getFeats();
  }

  /**
   * Check if the given feat passes the current feature
   *
   * @param feat  feat to check
   * @returns     filter pass status
   */
  checkFilter(feat: IFeatModel): boolean {
    return feat.name.toLowerCase().includes(this.featFilter);
  }

  /**
   * Sort the spells array based on the column
   *
   * @param sort  Material sort object
   */
  sortData(sort: Sort): void {
    this.sortSettings = sort;

    // Save the initial array order
    if (this._baseFeats === undefined) {
      this._baseFeats = this.feats.slice();
    }

    if (!sort.active || sort.direction === '') {
      // Update to initial order
      this.feats = this._baseFeats.slice();
    }
    else {
      // Sort on category
      this.feats.sort((a, b) => {
        const isAsc = sort.direction === 'asc';
        return this.compare(a[sort.active as keyof IFeatModel], b[sort.active as keyof IFeatModel], isAsc);
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
  private compare(a: number | string | undefined, b: number | string | undefined, isAsc: boolean): number {
    if (a === undefined) { a = ''; }
    if (b === undefined) { b = ''; }
    if (typeof a === 'string' && typeof b === 'string') {
      return (a.toLowerCase() < b.toLowerCase() ? -1 : 1) * (isAsc ? 1 : -1);
    }
    return (a < b ? -1 : 1) * (isAsc ? 1 : -1);
  }

  /**
   * Trigger a spell modal popup
   *
   * @param id  spell id
   */
  openFeatModal(id: number): void {
    this._featModalService.openFeatModal(id);
  }

}
