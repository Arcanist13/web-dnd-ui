import { Component } from '@angular/core';
import { DndClassService } from 'src/app/shared/services/dnd-class.service';

@Component({
  selector: 'app-filter',
  templateUrl: './filter.component.html',
  styleUrls: ['./filter.component.css']
})
export class FilterComponent {

  classes: Array<string>;
  currentClass: string;

  constructor(
    private _dndClassService: DndClassService,
  ) {
    this.classes = this._dndClassService.getSpellClasses();
    this.currentClass = this.classes[0];
  }

  /**
   * Update the currently selected class filter
   *
   * @param newClass  new class filter
   */
  public setClass(newClass: string) {
    this.currentClass = newClass;
    this._dndClassService.setCurrentSpellClass(this.currentClass);
  }

  /**
   * Clear all filters
   */
  public clearFilter(): void {
    this.setClass('');
  }

}
