import { AfterViewInit, Component, Input, OnInit } from '@angular/core';
import {Sort} from '@angular/material/sort';
import { SpellModalService } from 'src/app/modules/spells/services/spell-modal.service';
import { SpellModel } from '../../models/spell.model';

@Component({
  selector: 'app-spell-list',
  templateUrl: './spell-list.component.html',
  styleUrls: ['./spell-list.component.css']
})
export class SpellListComponent {

  @Input() spells!: Array<SpellModel>;
  @Input() leveled!: boolean;

  baseSpells: Array<SpellModel> | undefined;

  constructor(private _spellModalService: SpellModalService) {}

  /**
   * Trigger a spell modal popup
   *
   * @param id  spell id
   */
  openSpellModal(id: number): void {
    this._spellModalService.openSpellModal(id);
  }

  /**
   * Sort the spells array based on the column
   *
   * @param sort
   */
  sortData(sort: Sort): void {
    // Save the initial array order
    if (this.baseSpells === undefined) {
      this.baseSpells = this.spells.slice();
    }

    if (!sort.active || sort.direction === '') {
      // Update to initial order
      this.spells = this.baseSpells.slice();
    }
    else {
      // Sort on category
      this.spells.sort((a, b) => {
        const isAsc = sort.direction === 'asc';
        return this.compare(a[sort.active as keyof SpellModel], b[sort.active as keyof SpellModel], isAsc);
      });
    }
  }

  /**
   * Compare two spells for equivalence
   *
   * @param a     spell
   * @param b     spell
   * @param isAsc sort order
   * @returns
   */
  private compare(a: number | string, b: number | string, isAsc: boolean) {
    if (typeof a === 'string' && typeof b === 'string') {
      return (a.toLowerCase() < b.toLowerCase() ? -1 : 1) * (isAsc ? 1 : -1);
    }
    return (a < b ? -1 : 1) * (isAsc ? 1 : -1);
  }

}
