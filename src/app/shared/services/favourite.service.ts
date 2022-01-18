import { Injectable } from '@angular/core';
import { Subject } from 'rxjs';
import { CharacterDataService } from 'src/app/modules/character/services/character-data.service';
import { HttpService } from 'src/app/static/services/http.service';
import { environment } from 'src/environments/environment';
import { ICharacter } from '../models/character.model';
import { IFavouriteSpell } from '../models/spell.model';
import { ObservableService } from './observable.service';

@Injectable({
  providedIn: 'root'
})
export class FavouriteService extends ObservableService {

  private character: number | undefined;

  private _favouriteSpells: Array<IFavouriteSpell>;
  private _favouriteUpdate: Subject<Array<IFavouriteSpell>>;

  constructor(
    private _characterDataService: CharacterDataService,
    private _httpService: HttpService,
  ) {
    super();

    this._favouriteSpells = [];
    this._favouriteUpdate = new Subject<Array<IFavouriteSpell>>();

    this.character = this._characterDataService.character?.id;
    this.subscribe(
      this._characterDataService.onCharacterChange,
      (char: ICharacter) => this.character = char.id
    )
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
   * Get the list of favourite spell ids
   *
   * @param char_id character to get fav spells of
   */
  public favouriteSpellIds(char_id: number): void {
    this._httpService.get<Array<IFavouriteSpell>>(
      environment.backendUri + '/favourite/spell_ids/' + char_id.toString()
    ).subscribe((result: Array<IFavouriteSpell>) => {
      this._favouriteSpells = result;
      this._favouriteUpdate.next(result);
    });
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
      this.updateFavouriteSpell(spell_id, this.character, state);
    }
  }

  /**
   * Favourite or unfavourite a spell for a character
   *
   * @param spell_id  spell id
   * @param char_id   character id
   */
  private updateFavouriteSpell(spell_id: number, char_id: number, state: boolean): void {
    const data = {
      character_id: char_id,
      spell_id
    };

    if (state) {
      this._httpService.post<void>(
        environment.backendUri + '/favourite/spell',
        data
      ).subscribe(() => {
        this.favouriteSpellIds(char_id);
      });
    } else {
      this._httpService.delete<void>(
        environment.backendUri + '/favourite/spell/' + char_id.toString() + '/' + spell_id.toString(),
      ).subscribe(() => {
        this.favouriteSpellIds(char_id);
      });
    }
  }

  /**
   * Event for favourite spell list update
   *
   * @return  favourite spell observable
   */
  public get onFavouriteUpdate() : Subject<Array<IFavouriteSpell>> {
    return this._favouriteUpdate;
  }

  /**
   * Get the list of favourite spell IDs
   */
  public get getFavouriteSpellIds() : Array<number> {
    return this._favouriteSpells.map((fav: IFavouriteSpell) => fav.spell_id);;
  }

}
