import { Component, OnDestroy, OnInit } from '@angular/core';
import { Subject, Subscription } from 'rxjs';
import { SpellModel } from 'src/app/shared/models/spell.model';
import { SpellService } from 'src/app/shared/services/spell.service';

@Component({
  selector: 'app-spells',
  templateUrl: './spells.component.html',
  styleUrls: ['./spells.component.css']
})
export class SpellsComponent implements OnInit, OnDestroy {

  public filter = '';

  private _subscriptions: Array<Subscription>;
  spellUpdate: Subject<Array<SpellModel>>;

  constructor(
    private _spellService: SpellService
  ) {
    this.spellUpdate = new Subject<Array<SpellModel>>();
    this._subscriptions = [];

    // Subscribe to changes in the spell list
    this._subscriptions.push(
      this._spellService.onSpellUpdate().subscribe((result: Array<SpellModel>) => {
        this.spellUpdate.next(result);
      })
    );
  }

  ngOnInit(): void {
    this._spellService.getSpells();
  }

  ngOnDestroy(): void {
    this._subscriptions.forEach((sub: Subscription) => {
      sub.unsubscribe();
    });
  }

}
