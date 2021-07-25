import { Component, OnDestroy } from '@angular/core';
import { Subscription } from 'rxjs';
import { Filter } from 'src/app/shared/interfaces/filter';
import { DndClassService } from 'src/app/shared/services/dnd-class.service';
import { SpellFilterService } from 'src/app/shared/services/spell-filter.service';

@Component({
  selector: 'app-filter-spell-class',
  templateUrl: './spell-class.component.html',
  styleUrls: ['./spell-class.component.css']
})
export class FilterSpellClassComponent implements OnDestroy, Filter<string> {

  private _subscriptions: Array<Subscription>;

  classes: Array<string>;
  currentClass: string;

  constructor(
    private _dndClassService: DndClassService,
    private _spellFilterService: SpellFilterService,
  ) {
    this._subscriptions = [];

    this.classes = this._dndClassService.getSpellClasses();
    this.currentClass = this.classes[0];

    // Subscribe to filter clears
    this._subscriptions.push(
      this._spellFilterService.filterClear.subscribe(
        () => { this.filterClear(); }
      )
    );
  }

  filterChange(newClass: string): void {
    this.currentClass = newClass;
    this._dndClassService.setCurrentSpellClass(this.currentClass);
  }

  filterClear(): void {
    this.filterChange(this.classes[0]);
  }

  /**
   * Clear subs
   */
   ngOnDestroy(): void {
    this._subscriptions.forEach((sub: Subscription) => sub.unsubscribe() );
  }

}
