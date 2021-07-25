import { Component, Input, OnDestroy } from '@angular/core';
import { Subscription } from 'rxjs';
import { Filter } from 'src/app/shared/interfaces/filter';
import { SpellFilterService } from '../../../services/spell-filter.service';

@Component({
  selector: 'app-search',
  templateUrl: './search.component.html',
  styleUrls: ['./search.component.css']
})
export class SearchComponent implements OnDestroy, Filter<void> {

  @Input() searchTitle?: string;

  private _subscriptions: Array<Subscription>;

  filter: string;

  constructor(
    private _spellFilterService: SpellFilterService,
  ) {
    this._subscriptions = [];

    this.filter = '';

    // Subscribe to filter clears
    this._subscriptions.push(
      this._spellFilterService.filterClear.subscribe(
        () => { this.filterClear(); }
      )
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

  /**
   * Clear subs
   */
   ngOnDestroy(): void {
    this._subscriptions.forEach((sub: Subscription) => sub.unsubscribe() );
  }

}
