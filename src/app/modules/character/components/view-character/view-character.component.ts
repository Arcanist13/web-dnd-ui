import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { UserService } from 'src/app/modules/user/services/user.service';
import { ICharacter } from 'src/app/shared/models/character.model';
import { ISpellModel } from 'src/app/shared/models/spell.model';
import { DndClassService } from 'src/app/shared/services/dnd-class.service';
import { ObservableService } from 'src/app/shared/services/observable.service';
import { SpellService } from 'src/app/shared/services/spell.service';
import { STORAGE_KEY_PREVIOUS_PAGE } from 'src/app/static/storage_keys.constant';
import { CharacterDataService } from '../../services/character-data.service';
import { CharacterViewService } from '../../services/character-view.service';

@Component({
  selector: 'app-view-character',
  templateUrl: './view-character.component.html',
  styleUrls: ['./view-character.component.css'],
  providers: [ ObservableService ]
})
export class ViewCharacterComponent implements OnInit {

  private _character!: ICharacter;
  public className: string = '';

  constructor(
    private _observableService: ObservableService,
    private _classService: DndClassService,
    private _characterDataService: CharacterDataService,
    private _characterViewService: CharacterViewService,
    private _spellService: SpellService,
    private _activatedRoute: ActivatedRoute,
    private _userService: UserService,
    private _router: Router,
  ) {}

  ngOnInit(): void {
    const charID = +(this._activatedRoute.snapshot.url[0].path);

    // Subscribe to logouts
    this._observableService.subscribe(
      this._userService.loginUpdate,
      (state: boolean) => { this._userService.checkLoggedIn(state); },
      () => { this._userService.checkLoggedIn(false); }
    );

    // Load the character information
    if (charID !== undefined && !isNaN(charID)) {
      this._characterDataService.selectCharacter(charID).then((char: ICharacter) => {
        this._character = char;
        this.loadCharacterInformation();
      });
    }

    // Update the previousPage session storage
    localStorage.setItem(STORAGE_KEY_PREVIOUS_PAGE, 'character/' + charID);
  }

  /**
   * Load all information needed
   */
  loadCharacterInformation(): void {
    this._spellService.favouriteSpells(this._character.id);
    this.className = this._classService.getClassName(this._character.class_id);
  }

  /**
   * Navigate to the spell list of the given class
   */
  classSpells(): void {
    if (this.className) {
      this._classService.setCurrentSpellClass(this.className);
    }
    this._router.navigate(['/spells']);
  }

}
