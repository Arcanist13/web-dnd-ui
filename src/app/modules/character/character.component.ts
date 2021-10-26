import { Component } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { Router } from '@angular/router';
import { UserService } from 'src/app/modules/user/services/user.service';
import { ConfirmDialogComponent } from 'src/app/shared/dialog/confirm-dialog/confirm-dialog.component';
import { ICharacter, ICharacterData } from 'src/app/shared/models/character.model';
import { ObservableService } from 'src/app/shared/services/observable.service';
import { HttpService } from 'src/app/static/services/http.service';
import { STORAGE_KEY_PREVIOUS_PAGE } from 'src/app/static/storage_keys.constant';
import { NewCharacterComponent } from './components/new-character/new-character.component';
import { CharacterDataService } from './services/character-data.service';
import { CharacterService } from './services/character.service';

@Component({
  selector: 'app-character',
  templateUrl: './character.component.html',
  styleUrls: ['./character.component.css'],
  providers: [ObservableService]
})
export class CharacterComponent {

  public characters: Array<ICharacter>;

  constructor(
    private _observableService: ObservableService,
    private _userService: UserService,
    public _dialog: MatDialog,
    private _characterDataService: CharacterDataService,
    private _characterService: CharacterService
  ) {
    this.characters = [];

    // Subscribe to logouts
    this._observableService.subscribe(
      this._userService.loginUpdate,
      (state: boolean) => { this._userService.checkLoggedIn(state); },
      () => { this._userService.checkLoggedIn(false); }
    );

    // Subscribe to character updates
    this._observableService.subscribe(
      this._characterDataService.onCharactersUpdate,
      (chars: Array<ICharacter>) => {
        this.characters = chars;
      }
    )

    // Get the initial character list
    this.getCharacters();

    // Update the previousPage session storage
    localStorage.setItem(STORAGE_KEY_PREVIOUS_PAGE, 'character');
  }

  /**
   * Get the users current characters
   */
  getCharacters(): void {
    this._characterDataService.characters.then((chars: Array<ICharacter>) => {
      this.characters = chars;
    });
  }

  /**
   * Open the create character dialog allowing input options
   */
  createCharacterDialog(char?: ICharacter): void {
    const dialogRef = this._dialog.open(NewCharacterComponent, { data: char });
    dialogRef.afterClosed().subscribe((res: ICharacterData) => {
      if (!!res) {
        if(!!char) {
          this._characterService.editCharacter(char.id, res);
        } else {
          this._characterService.createCharacter(res);
        }
      }
    });
  }

  /**
   * Confirm screen for deleting a character
   *
   * @param char character information
   */
  deleteCharacterDialog(char: ICharacter): void {
    const dialogRef = this._dialog.open(ConfirmDialogComponent, { data: 'Are you sure you wish to delete "' + char.name + '"?' });
    dialogRef.afterClosed().subscribe((res: boolean) => {
      if (res) {
        this._characterService.deleteCharacter(char.id);
        this.characters = this.characters.filter((c: ICharacter) => c.id !== char.id);
      }
    });
  }

}
