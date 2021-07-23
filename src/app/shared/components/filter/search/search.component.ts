import { Component } from '@angular/core';
import { ObservableService } from 'src/app/core/services/observable.service';
import { Filter } from 'src/app/shared/interfaces/filter';
import { SpellFilterService } from '../../../services/spell-filter.service';

@Component({
  selector: 'app-search',
  templateUrl: './search.component.html',
  styleUrls: ['./search.component.css']
})
export class SearchComponent implements Filter<void> {

  filter: string;

  constructor(
    private _spellFilterService: SpellFilterService,
    private _observableService: ObservableService
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
