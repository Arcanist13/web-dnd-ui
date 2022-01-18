import { Injectable } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { Subject } from 'rxjs';
import { SelectCharacterComponent } from 'src/app/shared/dialog/select-character/select-character.component';
import { ICampaign } from 'src/app/shared/models/campaign.model';
import { ICharacter } from 'src/app/shared/models/character.model';
import { IClass, IClassArchetype } from 'src/app/shared/models/class.model';
import { IRace, ISubRace } from 'src/app/shared/models/race.model';
import { HttpService } from 'src/app/static/services/http.service';
import { STORAGE_KEY_CURRENT_CHAR } from 'src/app/static/storage_keys.constant';
import { environment } from 'src/environments/environment';
import { UserService } from '../../user/services/user.service';

@Injectable({
  providedIn: 'root'
})
export class CharacterDataService {

  private _campaigns: Array<ICampaign>;
  private _characters: Array<ICharacter>;
  private _character: ICharacter | undefined;
  private _races: Array<IRace>;
  private _subRaces: Array<ISubRace>;
  private _classes: Array<IClass>;
  private _archetypes: Array<IClassArchetype>;

  private _onCharacterChange: Subject<ICharacter>;
  private _onCharactersUpdate: Subject<Array<ICharacter>>;

  constructor(
    private _httpService: HttpService,
    public _dialog: MatDialog,
    private _userService: UserService
  ) {
    this._campaigns = [];
    this._characters = [];
    this._races = [];
    this._subRaces = [];
    this._classes = [];
    this._archetypes = [];

    this._onCharacterChange = new Subject<ICharacter>();
    this._onCharactersUpdate = new Subject<Array<ICharacter>>();

    // Attempt to load a stored character
    this.loadCharacter();
  }

  /**
   * Get the list of current campaigns
   */
  public get campaigns() : Promise<Array<ICampaign>> {
    return new Promise((resolve) => {
      if (this._campaigns.length === 0) {
        this._httpService.get<Array<ICampaign>>(
          environment.backendUri + '/campaigns'
        ).subscribe((res: Array<ICampaign>) => {
          this._campaigns = res;
          resolve(res);
        });
      } else {
        resolve(this._campaigns);
      }
    });
  }

  /**
   * Get the list of user characters
   */
  public get characters() : Promise<Array<ICharacter>> {
    return new Promise((resolve) => {
      if (this._characters.length === 0) {
        this._httpService.get<Array<ICharacter>>(
          environment.backendUri + '/characters'
        ).subscribe((res: Array<ICharacter>) => {
          this._characters = res;
          resolve(res);
        });
      } else {
        resolve(this._characters);
      }
    });
  }

  /**
   * Prompt the user to select and active character
   *
   * @returns character id or undefined if none selected
   */
  public promptSelectCharacter(): Promise<number | undefined> {
    return new Promise((resolve) => {
      if (this._userService.loggedIn) {
        // Prompt to select a character
        const dialogRef = this._dialog.open(SelectCharacterComponent, { data: this.characters });
        dialogRef.afterClosed().subscribe((char_id: number | undefined) => {
          if (char_id) {
            this.selectCharacter(char_id);
          }
          resolve(char_id);
        });
      } else {
        resolve(undefined);
      }
    });
  }

  /**
   * Select a character
   *
   * @param id  character id
   * @returns   character information
   */
  public selectCharacter(id: number) : Promise<ICharacter> {
    return new Promise((resolve) => {
      const findChar = this._characters.find((char: ICharacter) => char.id === id);
      if (findChar !== undefined) {
        this._character = findChar;
        this.saveCharacter();
        this._onCharacterChange.next(this._character);
        resolve(findChar);
      } else {
        this._httpService.get<ICharacter>(
          environment.backendUri + '/character/' + id
        ).subscribe((res: ICharacter) => {
          if (res) {
            this._character = res;
            this.saveCharacter();
            this._onCharacterChange.next(this._character);
          }
          resolve(res);
        });
      }
    })
  }

  /**
   * Store the current character to the local session
   */
  saveCharacter(): void {
    localStorage.setItem(STORAGE_KEY_CURRENT_CHAR, JSON.stringify(this._character));
  }

  /**
   * Load a character from storage
   */
  loadCharacter(): void {
    const charString = localStorage.getItem(STORAGE_KEY_CURRENT_CHAR);
    if (charString) {
      this._character = JSON.parse(charString) as ICharacter;
    }
  }

  /**
   * Add a created character to the character list. This avoids having to
   * send another character list request.
   *
   * @param char
   */
  addCharacter(char: ICharacter): void {
    if (!!char) {
      const findIdx = this._characters.findIndex((_char: ICharacter) => _char.id === char.id);
      if (findIdx !== -1) {
        this._characters[findIdx] = char;
      }
      else {
        this._characters.push(char);
      }
      this._onCharactersUpdate.next(this._characters);
    }
  }

  /**
   * Remove a character from the list
   *
   * @param char_id character to remove
   */
  removeCharacter(char_id: number): void {
    this._characters = this._characters.filter((char: ICharacter) =>
      char.id !== char_id
    );
    this._onCharactersUpdate.next(this._characters);
  }

  /**
   * Get the current selected character
   */
  public get character() : ICharacter | undefined {
    return this._character;
  }

  /**
   * Character change event
   */
  public get onCharacterChange() : Subject<ICharacter> {
    return this._onCharacterChange;
  }

  /**
   * Event for character changes
   */
  public get onCharactersUpdate() : Subject<Array<ICharacter>> {
    return this._onCharactersUpdate;
  }

  /**
   * Get the list of possible races
   */
  public get races() : Promise<Array<IRace>> {
    return new Promise((resolve) => {
      if (this._races.length === 0) {
        this._httpService.get<Array<IRace>>(
          environment.backendUri + '/races'
        ).subscribe((res: Array<IRace>) => {
          this._races = res;
          resolve(res);
        });
      } else {
        resolve(this._races);
      }
    });
  }

  /**
   * Get the list of all subraces
   */
  public get subRaces() : Promise<Array<ISubRace>> {
    return new Promise((resolve) => {
      if (this._subRaces.length === 0) {
        this._httpService.get<Array<ISubRace>>(
          environment.backendUri + '/subraces'
        ).subscribe((res: Array<ISubRace>) => {
          this._subRaces = res;
          resolve(res);
        });
      } else {
        resolve(this._subRaces);
      }
    });
  }

  /**
   * Get the list of all classed
   */
  public get classes() : Promise<Array<IClass>> {
    return new Promise((resolve) => {
      if (this._classes.length === 0) {
        this._httpService.get<Array<IClass>>(
          environment.backendUri + '/classes'
        ).subscribe((res: Array<IClass>) => {
          this._classes = res;
          resolve(res);
        });
      } else {
        resolve(this._classes);
      }
    });
  }

  /**
   * Get the list of all class archetypes
   */
  public get archetypes() : Promise<Array<IClassArchetype>> {
    return new Promise((resolve) => {
      if (this._archetypes.length === 0) {
        this._httpService.get<Array<IClassArchetype>>(
          environment.backendUri + '/archetypes'
        ).subscribe((res: Array<IClassArchetype>) => {
          this._archetypes = res;
          resolve(res);
        });
      } else {
        resolve(this._archetypes);
      }
    });
  }

}
