import { Component, Input, OnDestroy, PipeTransform } from '@angular/core';
import { FormControl } from '@angular/forms';
import { Subscription } from 'rxjs';
import { Filter } from 'src/app/shared/interfaces/filter';
import { SpellFilterService } from 'src/app/shared/services/spell-filter.service';

@Component({
  selector: 'app-filter-spell-list-generic',
  templateUrl: './spell-list-generic.component.html',
  styleUrls: ['./spell-list-generic.component.css']
})
export class FilterSpellListGenericComponent implements OnDestroy, Filter<void> {

  @Input() filterTitle!: string;
  @Input() filterKey!: string;
  @Input() filterOptions!: Array<string | number>;
  @Input() filterPipe?: PipeTransform;

  private _subscriptions: Array<Subscription>;

  public filterForm = new FormControl();

  constructor(
    private _spellFilterService: SpellFilterService,
  ) {
    this._subscriptions = [];

    // Subscribe to filter clears
    this._subscriptions.push(
      this._spellFilterService.filterClear.subscribe(
        () => { this.filterClear(); }
      )
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

  /**
   * Clear subs
   */
   ngOnDestroy(): void {
    this._subscriptions.forEach((sub: Subscription) => sub.unsubscribe() );
  }

}
