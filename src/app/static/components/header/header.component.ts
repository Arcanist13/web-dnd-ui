import { Component } from '@angular/core';
import { UserService } from 'src/app/modules/user/services/user.service';
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

  constructor(
    private _observableService: ObservableService,
    private _userService: UserService
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
      }
    );
  }

  /**
   * Trigger a user logout event
   */
  logout(): void {
    this._userService.logout();
  }

}
