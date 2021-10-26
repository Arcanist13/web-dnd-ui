import { Component } from '@angular/core';
import { Filter } from 'src/app/shared/interfaces/filter';
import { DndClassService } from 'src/app/shared/services/dnd-class.service';
import { ObservableService } from 'src/app/shared/services/observable.service';
import { SpellFilterService } from 'src/app/shared/services/spell-filter.service';
import { STORAGE_KEY_CURRENT_CLASS } from 'src/app/static/storage_keys.constant';

@Component({
  selector: 'app-filter-spell-class',
  templateUrl: './spell-class.component.html',
  styleUrls: ['./spell-class.component.css'],
  providers: [ObservableService]
})
export class FilterSpellClassComponent implements Filter<string> {

  classes: Array<string>;
  currentClass: string;

  constructor(
    private _observableService: ObservableService,
    private _dndClassService: DndClassService,
    private _spellFilterService: SpellFilterService,
  ) {
    this.classes = this._dndClassService.getSpellClasses();
    const stored = localStorage.getItem(STORAGE_KEY_CURRENT_CLASS);
    this.currentClass = stored ? stored : this.classes[0];

    // Subscribe to filter clears
    this._observableService.subscribe(
      this._spellFilterService.filterClear,
      () => { this.filterClear(); }
    );

    this._observableService.subscribe(
      this._dndClassService.onSpellClassChange,
      (cls: string) => this.currentClass = cls
    );
  }

  /**
   * Change the class filter
   *
   * @param newClass
   */
  filterChange(newClass: string): void {
    this.currentClass = newClass;
    localStorage.setItem(STORAGE_KEY_CURRENT_CLASS, this.currentClass);
    this._dndClassService.setCurrentSpellClass(this.currentClass);
  }

  /**
   * Clear the current class filter
   */
  filterClear(): void {
    localStorage.setItem(STORAGE_KEY_CURRENT_CLASS, this.classes[0]);
    this.filterChange(this.classes[0]);
  }

}
