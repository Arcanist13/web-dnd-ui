import { Component, Inject } from '@angular/core';
import { FormControl, Validators } from '@angular/forms';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { UserService } from 'src/app/modules/user/services/user.service';
import { ICampaign } from 'src/app/shared/models/campaign.model';
import { ICharacter, ICharacterData } from 'src/app/shared/models/character.model';
import { IClass, IClassArchetype } from 'src/app/shared/models/class.model';
import { IRace, ISubRace } from 'src/app/shared/models/race.model';
import { CharacterDataService } from '../../services/character-data.service';

@Component({
  selector: 'app-new-character',
  templateUrl: './new-character.component.html',
  styleUrls: ['./new-character.component.css']
})
export class NewCharacterComponent {

  public name = new FormControl('', [Validators.required]);

  public campaign_id = new FormControl('', [Validators.required]);
  public campaign_options: Array<ICampaign> = [];

  public race_id = new FormControl('', [Validators.required]);
  public race_options: Array<IRace> = [];
  public sub_race_id = new FormControl('', []);
  public sub_race_options: Array<ISubRace> = [];

  public class_id = new FormControl('', [Validators.required]);
  public class_options: Array<IClass> = [];
  public archetype_id = new FormControl('', []);
  public archetype_options: Array<IClassArchetype> = [];

  public level = new FormControl('', [Validators.required]);
  public level_options = Array.from({length: 20}, (_, i) => i + 1);

  public description = new FormControl('', []);
  public age = new FormControl('', []);

  constructor(
    public dialogRef: MatDialogRef<NewCharacterComponent>,
    @Inject(MAT_DIALOG_DATA) public data: ICharacter,
    private _userService: UserService,
    private _characterDataService: CharacterDataService
  ) {
    // Get campaign options
    this._characterDataService.campaigns.then((res: Array<ICampaign>) => {
      this.campaign_options = res;
    });
    // Get race options
    this._characterDataService.races.then((res: Array<IRace>) => {
      this.race_options = res;
    });
    // Get sub-race options
    this.race_id.valueChanges.subscribe(() => {
      this.getSubRaceOptions();
    });
    // Get class options
    this._characterDataService.classes.then((res: Array<IClass>) => {
      this.class_options = res;
    })
    // Get archetype options
    this.class_id.valueChanges.subscribe(() => {
      this.getArchetypeOptions();
    });

    if (!!data) {
      this.name.setValue(data.name);
      this.campaign_id.setValue(data.campaign_id);
      this.race_id.setValue(data.race_id);
      this.sub_race_id.setValue(data.sub_race_id);
      this.class_id.setValue(data.class_id);
      this.archetype_id.setValue(data.archetype_id);
      this.level.setValue(data.level);
      this.description.setValue(data.description);
      this.age.setValue(data.age);
    }
  }

  /**
   * Get the error message for the name parameter
   *
   * @returns error string
   */
  getErrorMessage() {
    if (this.name.hasError('required')) {
      return 'You must enter a value';
    }
  }

  /**
   * Close the dialog
   */
  close(): void {
    this.dialogRef.close();
  }

  /**
   * When the race updates update the list of sub races and select the first one
   */
  getSubRaceOptions(): void {
    this._characterDataService.subRaces.then((res: Array<ISubRace>) => {
      this.sub_race_options = res.filter((subRace: ISubRace) => subRace.race_id === this.race_id.value);
      if (this.sub_race_options.length > 0) {
        if (this.data.sub_race_id !== undefined) {
          this.sub_race_id.setValue(this.data.sub_race_id);
        } else {
          this.sub_race_id.setValue(this.sub_race_options[0].id);
        }
      }
      else {
        this.sub_race_id.reset();
      }
    });
  }

  /**
   * When the class changes update the list of class archetypes
   */
  getArchetypeOptions(): void {
    this._characterDataService.archetypes.then((res: Array<IClassArchetype>) => {
      this.archetype_options = res.filter((archetype: IClassArchetype) => archetype.class_id === this.class_id.value);
      if (this.archetype_options.length === 0) {
        this.archetype_id.reset();
      }
    })
  }

  /**
   * Check if the form is valid
   *
   * @returns form valid
   */
  validData(): boolean {
    return this.name.valid &&
    this.campaign_id.valid &&
    this.race_id.valid &&
    this.class_id.valid &&
    this.level.valid
  }

  /**
   * Build the character info from the form fields
   *
   * @returns
   */
  getCharacterData(): ICharacterData | undefined {
    const user_id = this._userService.userInfo?.id;
    if (user_id !== undefined) {
      return {
        name: this.name.value,
        user_id,
        campaign_id: this.campaign_id.value,
        race_id: this.race_id.value,
        class_id: this.class_id.value,
        level: this.level.value,
        description: this.description.value ? this.description.value : undefined,
        age: this.age.value ? this.age.value : undefined,
        sub_race_id: this.sub_race_id.value ? this.sub_race_id.value : undefined,
        archetype_id: this.archetype_id.value ? this.archetype_id.value : undefined
      }
    }
    return;
  }

}
