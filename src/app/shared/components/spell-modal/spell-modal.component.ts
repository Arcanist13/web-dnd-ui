import { Component, ViewChild } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { UserService } from 'src/app/modules/user/services/user.service';
import { ISpellModel } from 'src/app/shared/models/spell.model';
import { SpellService } from 'src/app/shared/services/spell.service';
import { SpellModalService } from '../../../modules/spells/services/spell-modal.service';
import { FavouriteService } from '../../services/favourite.service';
import { ObservableService } from '../../services/observable.service';

@Component({
  selector: 'app-spell-modal',
  templateUrl: './spell-modal.component.html',
  styleUrls: ['./spell-modal.component.css'],
  providers: [ObservableService]
})
export class SpellModalComponent {

  spell!: ISpellModel;
  public favourite: boolean;
  public loggedIn: boolean;
  @ViewChild("spellModalContent", {static: false}) modalRef!: HTMLElement;

  constructor(
    private _observableService: ObservableService,
    private _spellModalService: SpellModalService,
    private _spellService: SpellService,
    private _modalService: NgbModal,
    private _favouriteService: FavouriteService,
    private _userService: UserService,
  ) {
    this.favourite = false;
    this.loggedIn = false;

    // Subscribe to logouts
    this.loggedIn = this._userService.loggedIn;
    this._observableService.subscribe(
      this._userService.loginUpdate,
      (state: boolean) => { this.loggedIn = state; }
    );

    // Listen for spell modal calls and load the spell information
    this._observableService.subscribe(
      this._spellModalService.onSpellModal,
      (id: number) => {
        this._spellService.getSpell(id).subscribe(
          (res: ISpellModel) => {
            if (res) {
              this.spell = res;
              this.favourite = this._favouriteService.getFavouriteSpellIds.includes(id);
              this.startModal();
              this._spellService.storeSpell(res);
            }
          }
        );
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
    this.favourite = !this.favourite;
    this._favouriteService.favouriteSpell(spell_id, state);
  }


  /**
   * Open the modal interface
   */
  startModal(): void {
    this._modalService.open(
      this.modalRef,
      {
        size: 'xl',
        scrollable: true
      }
    )
  }

  /**
   * Close the modal
   */
  closeModal(): void { }

}
