import { Injectable } from '@angular/core';
import { ICampaign } from 'src/app/shared/models/campaign.model';
import { ICharacter } from 'src/app/shared/models/character.model';
import { IClass, IClassArchetype } from 'src/app/shared/models/class.model';
import { IRace, ISubRace } from 'src/app/shared/models/race.model';
import { HttpService } from 'src/app/static/services/http.service';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class CharacterDataService {

  private _campaigns: Array<ICampaign>;
  private _characters: Array<ICharacter>;
  private _races: Array<IRace>;
  private _subRaces: Array<ISubRace>;
  private _classes: Array<IClass>;
  private _archetypes: Array<IClassArchetype>;

  constructor(
    private _httpService: HttpService
  ) {
    this._campaigns = [];
    this._characters = [];
    this._races = [];
    this._subRaces = [];
    this._classes = [];
    this._archetypes = [];
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
    }
  }

  /**
   * Remove a character from the list
   *
   * @param char_id character to remove
   */
  removeCharacter(char_id: number): void {
    this._characters.filter((char: ICharacter) =>
      char.id !== char_id
    );
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
