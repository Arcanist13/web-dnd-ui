import { Injectable } from '@angular/core';
import { HttpService } from 'src/app/static/services/http.service';
import { environment } from 'src/environments/environment';
import { ILabel } from '../models/label.model';
import { ObservableService } from './observable.service';
import { CharacterDataService } from 'src/app/modules/character/services/character-data.service';
import { ICharacter } from '../models/character.model';
import { UserService } from 'src/app/modules/user/services/user.service';

@Injectable({
  providedIn: 'root'
})
export class LabelService extends ObservableService {

  private _labels: Array<ILabel>;
  private _spellMap: Map<number, Array<ILabel>>;

  constructor(
    private _httpService: HttpService,
    private _characterDataService: CharacterDataService,
    private _userService: UserService,
  ) {
    super();

    this._labels = [];
    this._spellMap = new Map<number, Array<ILabel>>();

    // Subscribe to login changes
    this.subscribe(
      this._characterDataService.onCharacterChange,
      ((char: ICharacter) => {
        this._labels = [];
        this._spellMap.clear();
        if (char) {
          this.getCharacterLabels();
        }
      })
    );

    // Reset the labels on login / logout
    this.subscribe(
      this._userService.loginUpdate,
      ((state: boolean) => {
        this.resetLabels();
      })
    );
  }

  /**
   * Request the users labels from the backend to populate the spell map
   */
  private getCharacterLabels(): void {
    this._httpService.get<Array<ILabel>>(
      environment.backendUri + '/labels/' + this._characterDataService.character?.id.toString()
    ).subscribe((results: Array<ILabel>) => {
      this._labels = results;
      // Update the spell map
      this._labels.forEach((label: ILabel) => {
        this.addOrUpdateLabelMap(label);
      });
    });
  }

  /**
   * Add a label to the spell label map, updating the entry if the spell id is already present
   *
   * @param label label to add
   */
  private addOrUpdateLabelMap(label: ILabel): void {
    if (!this._spellMap.has(label.spell_id)) {
      // Create new entry
      this._spellMap.set(label.spell_id, [label]);
    }
    else {
      // Update existing entry
      this._spellMap.set(label.spell_id, [...this._spellMap.get(label.spell_id)!, label]);
    }
  }

  /**
   * Remove the label from the spell map array
   *
   * @param label label to remove
   */
  private removeLabelFromMap(label: ILabel): void {
    const mapArray = this._spellMap.get(label.spell_id);
    if (mapArray !== undefined) {
      this._spellMap.set(label.spell_id, mapArray.filter((_label: ILabel) => _label.id !== label.id));
    }
  }

  /**
   * Add a new user label, updating the backend and the in memory store and map
   *
   * @param label new label
   * @returns     the created label
   */
  public addUserLabel(label: ILabel): Promise<ILabel> {
    return new Promise<ILabel>((resolve) => {
      if (label !== undefined) {
        this._httpService.post<ILabel>(
          environment.backendUri + '/label/add/' + this._characterDataService.character?.id.toString(),
          label
        ).subscribe((res: ILabel) => {
          this._labels.push(res);
          this.addOrUpdateLabelMap(res);
          resolve(res);
        });
      }
    });
  }

  /**
   * Delete a user label, updating the backend and the in memory store and map
   *
   * @param label label to remove
   */
  public deleteUserLabel(label: ILabel): void {
    if (label !== undefined) {
      this._labels = this._labels.filter((_label: ILabel) => _label.id !== label.id);
      this.removeLabelFromMap(label);
      this._httpService.delete<void>(
        environment.backendUri + '/label/' + this._characterDataService.character?.id.toString() + '/' + label.id.toString()
      ).subscribe(() => {});
    }
  }

  /**
   * Get the labels for a given spell
   *
   * @param spellId spell id
   * @returns       user spell labels
   */
  public getLabelsForSpell(spellId: number): Array<ILabel> | undefined {
    return this._spellMap.get(spellId);
  }

  /**
   * Check if the user has labels for the given spell
   *
   * @param spellId spell id
   * @returns       if labels exist
   */
  public hasLabelsForSpell(spellId: number): boolean {
    return this._spellMap.has(spellId);
  }

  /**
   * Get all of the users labels
   *
   * @returns all user labels
   */
  public getLabels(): Array<ILabel> {
    return this._labels;
  }

  /**
   * Clear all labels
   */
  public resetLabels(): void {
    this._labels = [];
    this._spellMap.clear();
  }
}
