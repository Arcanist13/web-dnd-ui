import { Component, Input, PipeTransform } from '@angular/core';
import { FormControl } from '@angular/forms';
import { Filter } from 'src/app/shared/interfaces/filter';
import { ObservableService } from 'src/app/shared/services/observable.service';
import { SpellFilterService } from 'src/app/shared/services/spell-filter.service';

@Component({
  selector: 'app-filter-spell-list-generic',
  templateUrl: './spell-list-generic.component.html',
  styleUrls: ['./spell-list-generic.component.css'],
  providers: [ObservableService]
})
export class FilterSpellListGenericComponent implements Filter<void> {

  @Input() filterTitle!: string;
  @Input() filterKey!: string;
  @Input() filterOptions!: Array<string | number>;
  @Input() filterPipe?: PipeTransform;

  public filterForm = new FormControl();

  constructor(
    private _observableService: ObservableService,
    private _spellFilterService: SpellFilterService,
  ) {
    // Subscribe to filter clears
    this._observableService.subscribe(
      this._spellFilterService.filterClear,
      () => { this.filterClear(); }
    );
  }

  /**
   * Update the changed filter
   */
  filterChange(): void {
    if (this.filterKey !== undefined && this.filterOptions !== undefined) {
      this._spellFilterService.updateFilters({[this.filterKey]: this.filterForm.value});
    }
  }

  /**
   * Clear the set filters
   */
  filterClear(): void {
    this.filterForm.reset();
  }

}
