import { AfterViewInit, Component, OnDestroy } from '@angular/core';
import { Subscription } from 'rxjs';
import { CSpellAttack, CSpellCasttime, CSpellDamage, CSpellSave, CSpellCondition, CSpellLevel, CSpellSchool, CSpellBoolean } from 'src/app/shared/models/spell.model';
import { BooleanOptionPipe } from 'src/app/shared/pipes/boolean-option.pipe';
import { SpellLevelPipe } from 'src/app/shared/pipes/spell-level.pipe';
import { DndClassService } from 'src/app/shared/services/dnd-class.service';
import { SpellFilterService } from 'src/app/shared/services/spell-filter.service';
import { SpellService } from 'src/app/shared/services/spell.service';
import { STORAGE_KEY_PREVIOUS_PAGE } from 'src/app/static/storage_keys.constant';

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
    {title: 'School', key: 'school', list: CSpellSchool},
    {title: 'Ritual', key: 'ritual', list: CSpellBoolean, pipe: new BooleanOptionPipe()},
    {title: 'Concentration', key: 'concentration', list: CSpellBoolean, pipe: new BooleanOptionPipe()},
  ]

  constructor(
    private _spellService: SpellService,
    private _spellFilterService: SpellFilterService,
    private _classService: DndClassService,
  ) {
    this._subscriptions = [];

    // Update the previousPage session storage
    localStorage.setItem(STORAGE_KEY_PREVIOUS_PAGE, 'spells');
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
    this._spellService.getSpells(this._classService.getCurrentSpellClass());
  }

  /**
   * Clear subs
   */
  ngOnDestroy(): void {
    this._subscriptions.forEach((sub: Subscription) => sub.unsubscribe() );
  }

}
