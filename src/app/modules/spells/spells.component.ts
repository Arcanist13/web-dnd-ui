import { Component, OnInit } from '@angular/core';
import { Subject } from 'rxjs';
import { ObservableService } from 'src/app/core/services/observable.service';
import { ISpellModel } from 'src/app/shared/models/spell.model';
import { SpellFilterService } from 'src/app/shared/services/spell-filter.service';
import { SpellService } from 'src/app/shared/services/spell.service';

@Component({
  selector: 'app-spells',
  templateUrl: './spells.component.html',
  styleUrls: ['./spells.component.css']
})
export class SpellsComponent implements OnInit {

  spellUpdate: Subject<Array<ISpellModel>>;

  constructor(
    private _spellService: SpellService,
    private _spellFilterService: SpellFilterService,
    private _observableService: ObservableService
  ) {
    this.spellUpdate = new Subject<Array<ISpellModel>>();

    // Subscribe to changes in the spell list
    this._observableService.subscribe(
      this._spellService.onSpellUpdate(),
      (result: Array<ISpellModel>) => {
        this.spellUpdate.next(result);
      }
    );
  }

  /**
   * Clear the spell filters
   */
  clearSpellFilter(): void {
    this._spellFilterService.clearFilters();
  }

  /**
   * Get the initial spell set
   */
  ngOnInit(): void {
    this._spellService.getSpells();
  }

}
