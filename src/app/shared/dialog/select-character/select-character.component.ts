import { Component, Inject } from '@angular/core';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { ICharacter } from '../../models/character.model';

@Component({
  selector: 'app-select-character',
  templateUrl: './select-character.component.html',
  styleUrls: ['./select-character.component.css']
})
export class SelectCharacterComponent {

  public characters: Array<ICharacter> = [];

  constructor(
    public dialogRef: MatDialogRef<SelectCharacterComponent>,
    @Inject(MAT_DIALOG_DATA) public data: Promise<Array<ICharacter>>
  ) {
    data.then((chars: Array<ICharacter>) => this.characters = chars);
  }

  /**
   * Set the current character
   *
   * @param char  character to select
   * @returns     character id
   */
  setCharacter(char: ICharacter) : number {
    return char.id;
  }

  /**
   * Close the dialog
   */
  close(): void {
    this.dialogRef.close();
  }

}
