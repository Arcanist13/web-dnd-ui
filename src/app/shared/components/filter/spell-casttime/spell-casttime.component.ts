import { Component } from '@angular/core';
import { FormControl } from '@angular/forms';
import { ObservableService } from 'src/app/core/services/observable.service';
import { Filter } from 'src/app/shared/interfaces/filter';
import { CSpellCasttime } from 'src/app/shared/models/spell.model';
import { SpellFilterService } from 'src/app/shared/services/spell-filter.service';

@Component({
  selector: 'app-filter-spell-casttime',
  templateUrl: './spell-casttime.component.html',
  styleUrls: ['./spell-casttime.component.css']
})
export class FilterSpellCasttimeComponent implements Filter<void> {

  public filterCasttime = new FormControl();
  public filterCasttimes: Array<string> = CSpellCasttime;

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
    this._spellFilterService.updateFilters({cast_time: this.filterCasttime.value});
  }

  filterClear(): void {
    this.filterCasttime.reset();
  }

}
