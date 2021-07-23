import { Component } from '@angular/core';
import { ObservableService } from 'src/app/core/services/observable.service';
import { Filter } from 'src/app/shared/interfaces/filter';
import { DndClassService } from 'src/app/shared/services/dnd-class.service';
import { SpellFilterService } from 'src/app/shared/services/spell-filter.service';

@Component({
  selector: 'app-filter-spell-class',
  templateUrl: './spell-class.component.html',
  styleUrls: ['./spell-class.component.css']
})
export class FilterSpellClassComponent implements Filter<string> {

  classes: Array<string>;
  currentClass: string;

  constructor(
    private _dndClassService: DndClassService,
    private _spellFilterService: SpellFilterService,
    private _observableService: ObservableService
  ) {
    this.classes = this._dndClassService.getSpellClasses();
    this.currentClass = this.classes[0];

    // Subscribe to filter clears
    this._observableService.subscribe(
      this._spellFilterService.filterClear,
      () => { this.filterClear(); }
    );
  }

  filterChange(newClass: string): void {
    this.currentClass = newClass;
    this._dndClassService.setCurrentSpellClass(this.currentClass);
  }

  filterClear(): void {
    this.filterChange(this.classes[0]);
  }

}
