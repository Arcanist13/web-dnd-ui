import { Component, Input } from '@angular/core';
import { Filter } from 'src/app/shared/interfaces/filter';
import { ObservableService } from 'src/app/shared/services/observable.service';
import { SpellFilterService } from '../../../services/spell-filter.service';

@Component({
  selector: 'app-search',
  templateUrl: './search.component.html',
  styleUrls: ['./search.component.css'],
  providers: [ObservableService]
})
export class SearchComponent implements Filter<void> {

  @Input() searchTitle?: string;

  filter: string;

  constructor(
    private _observableService: ObservableService,
    private _spellFilterService: SpellFilterService,
  ) {
    this.filter = '';

    // Subscribe to filter clears
    this._observableService.subscribe(
      this._spellFilterService.filterClear,
      () => { this.filterClear(); }
    );
  }

  /**
   * Notify of a new filter
   */
  filterChange(): void {
    this._spellFilterService.updateFilters({name: this.filter});
  }

  /**
   * Clear the search filter
   */
  filterClear(): void {
    this.filter = '';
    this.filterChange();
  }

}
