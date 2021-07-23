import { Component } from '@angular/core';
import { FormControl } from '@angular/forms';
import { ObservableService } from 'src/app/core/services/observable.service';
import { Filter } from 'src/app/shared/interfaces/filter';
import { SpellFilterService } from 'src/app/shared/services/spell-filter.service';

@Component({
  selector: 'app-filter-spell-level',
  templateUrl: './spell-level.component.html',
  styleUrls: ['./spell-level.component.css']
})
export class FilterSpellLevelComponent implements Filter<void> {

  public filterLevel = new FormControl();
  public filterLevels = [...Array(10).keys()];

  constructor(
    private _spellFilterService: SpellFilterService,
    private _observableService: ObservableService
  ) {
    // Subscribe to filter clears
    this._observableService.subscribe(
      this._spellFilterService.filterClear,
      () => { this.filterClear(); }
    );
  }

  /**
   * Emit a filter change event
   */
  filterChange(): void {
    this._spellFilterService.updateFilters({level: this.filterLevel.value});
  }

  /**
   * Clear the filter
   */
  filterClear(): void {
    this.filterLevel.reset();
  }

}
