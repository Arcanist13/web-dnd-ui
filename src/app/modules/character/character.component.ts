import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { UserService } from 'src/app/modules/user/services/user.service';
import { ObservableService } from 'src/app/shared/services/observable.service';

@Component({
  selector: 'app-character',
  templateUrl: './character.component.html',
  styleUrls: ['./character.component.css'],
  providers: [ObservableService]
})
export class CharacterComponent {

  constructor(
    private _observableService: ObservableService,
    private _router: Router,
    private _userService: UserService
  ) {

    // Check user is logged in
    this.checkLoggedIn(this._userService.loggedIn);

    // Subscribe to logouts
    this._observableService.subscribe(
      this._userService.loginUpdate,
      (state: boolean) => { this.checkLoggedIn(state); }
    );

    // Update the previousPage session storage
    sessionStorage.setItem('previousPage', 'character');
  }

  /**
   * Check if the user is logged in, redirect if they aren't
   *
   * @param state log in state
   */
  checkLoggedIn(state: boolean): void {
    if (!state) {
      this._router.navigate(['/login']);
    }
  }

}
