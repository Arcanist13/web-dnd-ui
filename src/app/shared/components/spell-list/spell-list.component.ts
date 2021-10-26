import { Component, Input } from '@angular/core';
import { Sort } from '@angular/material/sort';
import { Subject } from 'rxjs';
import { CharacterDataService } from 'src/app/modules/character/services/character-data.service';
import { SpellModalService } from 'src/app/modules/spells/services/spell-modal.service';
import { UserService } from 'src/app/modules/user/services/user.service';
import { ICharacter } from '../../models/character.model';
import { IFavouriteSpell, ISpellFilter, ISpellModel } from '../../models/spell.model';
import { ObservableService } from '../../services/observable.service';
import { SpellFilterService } from '../../services/spell-filter.service';
import { SpellService } from '../../services/spell.service';

@Component({
  selector: 'app-spell-list',
  templateUrl: './spell-list.component.html',
  styleUrls: ['./spell-list.component.css'],
  providers: [ObservableService]
})
export class SpellListComponent {

  @Input() spellUpdate!: Subject<Array<ISpellModel>>;
  @Input() filter!: ISpellFilter;
  @Input() leveled!: boolean;

  private sortSettings: Sort | undefined;
  public spells: Array<ISpellModel>;
  public favSpells: Array<number>;
  public character: number | undefined;
  baseSpells: Array<ISpellModel> | undefined;
  public loggedIn: boolean;

  constructor(
    private _observableService: ObservableService,
    private _spellModalService: SpellModalService,
    private _spellFilterService: SpellFilterService,
    private _characterDataService: CharacterDataService,
    private _spellService: SpellService,
    private _userService: UserService,
  ) {
    this.spells = [];
    this.favSpells = [];
    this.loggedIn = false;

    // Get the current character information and favourite spells
    this.character = this._characterDataService.character?.id;
    this._observableService.subscribe(
      this._spellService.onFavouriteUpdate,
      (favs: Array<IFavouriteSpell>) => {
        this.favSpells = favs.map((fav: IFavouriteSpell) => fav.spell_id);
      }
    );
    if (this.character) {
      this._spellService.favouriteSpellIds(this.character);
    }

    // Subscribe to future character changes
    this._observableService.subscribe(
      this._characterDataService.onCharacterChange,
      (char: ICharacter) => {
        this.character = char.id;
        this._spellService.favouriteSpellIds(this.character);
      }
    );

    // Subscribe to logouts
    this.loggedIn = this._userService.loggedIn;
    this._observableService.subscribe(
      this._userService.loginUpdate,
      (state: boolean) => { this.loggedIn = state; }
    );

    // Subscribe to filter clear
    this._observableService.subscribe(
      this._spellFilterService.filterClear,
      () => { this.filter = {}; }
    );

    // Subscribe to filter changes
    this._observableService.subscribe(
      this._spellFilterService.filterUpdate,
      (newFilter: ISpellFilter) => {
        this.filter = {
          ...this.filter,
          ...newFilter
        };
      }
    );

    // Subscribe to spell list changes
    this._observableService.subscribe(
      this._spellService.onSpellUpdate,
      (spells: Array<ISpellModel>) => {
        this.spells = spells.slice();
        if (this.sortSettings !== undefined) {
          this.sortData(this.sortSettings);
        }
      }
    );
  }

  /**
   * Favourite a spell prompting the user to select a character if on isn't selected
   *
   * @param spell_id  spell to favourite
   * @param state     favourite state (set, unset)
   */
  favouriteSpell(spell_id: number, state: boolean): void {
    if (this.character === undefined) {
      this._characterDataService.promptSelectCharacter().then((char_id: number | undefined) => {
        if (char_id !== undefined) {
          this.character = char_id;
          this.setFavouriteSpell(spell_id, state);
        }
      });
    } else {
      this.setFavouriteSpell(spell_id, state);
    }
  }

  /**
   * Internal function to set/unset the favourite spell and request the change in the
   * backend.
   *
   * @param spell_id  favourite spell id
   * @param state     set or unset state
   */
  private setFavouriteSpell(spell_id: number, state: boolean): void {
    if (this.character) {
      this._spellService.favouriteSpell(spell_id, this.character, state);
    }
  }

  /**
   * Check if the given spell passes the current feature
   *
   * @param spell spell to check
   * @returns     filter pass status
   */
  checkFilter(spell: ISpellModel): boolean {
    return this._spellFilterService.checkSpellFilter(spell, this.filter);
  }

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
   * @param sort  Material sort object
   */
  sortData(sort: Sort): void {
    this.sortSettings = sort;

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
        return this.compare(a[sort.active as keyof ISpellModel], b[sort.active as keyof ISpellModel], isAsc);
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
