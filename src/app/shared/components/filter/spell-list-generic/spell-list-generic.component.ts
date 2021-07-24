import { Component, Input, PipeTransform } from '@angular/core';
import { FormControl } from '@angular/forms';
import { ObservableService } from 'src/app/core/services/observable.service';
import { Filter } from 'src/app/shared/interfaces/filter';
import { SpellFilterService } from 'src/app/shared/services/spell-filter.service';

@Component({
  selector: 'app-filter-spell-list-generic',
  templateUrl: './spell-list-generic.component.html',
  styleUrls: ['./spell-list-generic.component.css']
})
export class FilterSpellListGenericComponent implements Filter<void> {

  @Input() filterTitle!: string;
  @Input() filterKey!: string;
  @Input() filterOptions!: Array<string | number>;
  @Input() filterPipe?: PipeTransform;

  public filterForm = new FormControl();

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

  filterChange(): void {
    if (this.filterKey !== undefined && this.filterOptions !== undefined) {
      this._spellFilterService.updateFilters({[this.filterKey]: this.filterForm.value});
    }
  }

  filterClear(): void {
    this.filterForm.reset();
  }

}
