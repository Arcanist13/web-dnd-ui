import { Injectable } from '@angular/core';
import { ICharacterData, ICharacter } from 'src/app/shared/models/character.model';
import { HttpService } from 'src/app/static/services/http.service';
import { environment } from 'src/environments/environment';
import { CharacterDataService } from './character-data.service';

@Injectable({
  providedIn: 'root'
})
export class CharacterService {

  constructor(
    private _httpService: HttpService,
    private _characterDataService: CharacterDataService
  ) { }

  /**
   * Create a character
   *
   * @param char  character info
   */
  createCharacter(char: ICharacterData): void {
    this._httpService.post<ICharacter>(
      environment.backendUri + '/character/add',
      char
    ).subscribe((res: ICharacter) => {
      if (!!res) {
        this._characterDataService.addCharacter(res);
      }
    });
  }

  /**
   * Edit an existing character
   *
   * @param char_id character id
   * @param char    character info
   */
  editCharacter(char_id: number, char: ICharacterData): void {
    this._httpService.post<ICharacter>(
      environment.backendUri + '/character/edit/' + char_id.toString(),
      char
    ).subscribe((res: ICharacter) => {
      if (!!res) {
        this._characterDataService.addCharacter(res);
      }
    });
  }

  /**
   * Delete a character
   *
   * @param char_id character id
   */
  deleteCharacter(char_id: number): void {
    this._httpService.delete<boolean>(
      environment.backendUri + '/character/remove/' + char_id.toString()
    ).subscribe((res: boolean) => {
      this._characterDataService.removeCharacter(char_id);
    });
  }

}
