import { Component } from '@angular/core';
import { ObservableService } from '../../services/observable.service';
import { UserService } from '../../services/user.service';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent {

  navCollapsed: boolean;
  loggedIn: boolean;

  constructor(
    private _observableService: ObservableService,
    private _userService: UserService
  ) {
    this.navCollapsed = true;
    this.loggedIn = this._userService.userInfo ? true : false;

    // Listen for changes in user login state
    this._observableService.subscribe(
      this._userService.loggedIn,
      (state: boolean) => { this.loggedIn = state; }
    )
  }

  /**
   * Trigger a user logout event
   */
  logout(): void {
    this._userService.logout();
  }

}
