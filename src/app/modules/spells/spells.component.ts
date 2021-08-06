import { AfterViewInit, Component, OnDestroy } from '@angular/core';
import { Subject, Subscription } from 'rxjs';
import { ISpellModel, CSpellAttack, CSpellCasttime, CSpellDamage, CSpellSave, CSpellCondition, CSpellLevel } from 'src/app/shared/models/spell.model';
import { SpellLevelPipe } from 'src/app/shared/pipes/spell-level.pipe';
import { SpellFilterService } from 'src/app/shared/services/spell-filter.service';
import { SpellService } from 'src/app/shared/services/spell.service';

@Component({
  selector: 'app-spells',
  templateUrl: './spells.component.html',
  styleUrls: ['./spells.component.css']
})
export class SpellsComponent implements AfterViewInit, OnDestroy {

  private _subscriptions: Array<Subscription>;

  // Define constants
  public _CSpellAttack = CSpellAttack;

  public filterArray = [
    {title: 'Spell Level', key: 'level', list: CSpellLevel, pipe: new SpellLevelPipe()},
    {title: 'Casting Time', key: 'cast_time', list: CSpellCasttime},
    {title: 'Attack Type', key: 'attack_type', list: CSpellAttack},
    {title: 'Save Type', key: 'save_type', list: CSpellSave},
    {title: 'Damage Type', key: 'damage_type', list: CSpellDamage},
    {title: 'Condition', key: 'condition_type', list: CSpellCondition},
  ]

  constructor(
    private _spellService: SpellService,
    private _spellFilterService: SpellFilterService
  ) {
    this._subscriptions = [];

    // Update the previousPage session storage
    sessionStorage.setItem('previousPage', 'spells');
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
  ngAfterViewInit(): void {
    this._spellService.getSpells('All Spells');
  }

  /**
   * Clear subs
   */
  ngOnDestroy(): void {
    this._subscriptions.forEach((sub: Subscription) => sub.unsubscribe() );
  }

}
