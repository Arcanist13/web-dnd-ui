import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { CharacterDataService } from 'src/app/modules/character/services/character-data.service';
import { UserService } from 'src/app/modules/user/services/user.service';
import { ICharacter } from 'src/app/shared/models/character.model';
import { ObservableService } from 'src/app/shared/services/observable.service';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css'],
  providers: [ObservableService]
})
export class HeaderComponent {

  navCollapsed: boolean;
  loggedIn: boolean;
  admin: boolean;
  selectedCharacter: ICharacter | undefined;

  constructor(
    private _observableService: ObservableService,
    private _characterDataService: CharacterDataService,
    private _userService: UserService,
    private _router: Router,
  ) {
    this.navCollapsed = true;
    this.loggedIn = this._userService.userInfo ? true : false;
    this.admin = this._userService.isAdmin;

    // Listen for changes in user login state
    this._observableService.subscribe(
      this._userService.loginUpdate,
      (state: boolean) => {
        this.loggedIn = state;
        this.admin = this._userService.isAdmin;
        this.selectedCharacter = this._characterDataService.character;
      }
    );

    // Listen for character selection events
    this._observableService.subscribe(
      this._characterDataService.onCharacterChange,
      (char: ICharacter) => {
        if (char) {
          this.selectedCharacter = char;
        } else {
          this.selectedCharacter = undefined;
        }
      }
    )
  }

  /**
   * Navigate and close the menu bar
   *
   * @param route path string
   */
  navigate(route: string): void {
    this.navCollapsed = true;
    this._router.navigate([route]);
  }

  /**
   * Trigger a user logout event
   */
  logout(): void {
    this.navCollapsed = true;
    this._userService.logout();
  }

  /**
   * Select an active character
   */
  selectCharacter(): void {
    this._characterDataService.promptSelectCharacter().then(() => this.navCollapsed = true);
  }

}
