import { Component, OnDestroy } from '@angular/core';
import { Router } from '@angular/router';
import { Subscription } from 'rxjs';
import { UserService } from 'src/app/core/services/user.service';

@Component({
  selector: 'app-character',
  templateUrl: './character.component.html',
  styleUrls: ['./character.component.css']
})
export class CharacterComponent implements OnDestroy {

  private _subscriptions: Array<Subscription>;

  constructor(
    private _router: Router,
    private _userService: UserService
  ) {
    this._subscriptions = [];

    // Check user is logged in
    this.checkLoggedIn(this._userService.loggedIn);

    // Subscribe to logouts
    this._subscriptions.push(
      this._userService.loginUpdate.subscribe(
        (state: boolean) => { this.checkLoggedIn(state); }
      )
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

  /**
   * Clear all subscriptions
   */
  ngOnDestroy(): void {
    this._subscriptions.forEach((sub: Subscription) => sub.unsubscribe() );
  }

}
