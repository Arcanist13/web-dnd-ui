import { Component, OnDestroy } from '@angular/core';
import { Subscription } from 'rxjs';
import { UserService } from '../../services/user.service';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnDestroy {

  private _subscriptions: Array<Subscription>;

  navCollapsed: boolean;
  loggedIn: boolean;

  constructor(
    private _userService: UserService
  ) {
    this._subscriptions = [];

    this.navCollapsed = true;
    this.loggedIn = this._userService.userInfo ? true : false;

    // Listen for changes in user login state
    this._subscriptions.push(
      this._userService.loginUpdate.subscribe(
        (state: boolean) => { this.loggedIn = state; }
      )
    );
  }

  /**
   * Trigger a user logout event
   */
  logout(): void {
    this._userService.logout();
  }

  /**
   * Clear subs
   */
  ngOnDestroy(): void {
    this._subscriptions.forEach((sub: Subscription) => sub.unsubscribe() );
  }

}
