import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { ObservableService } from 'src/app/shared/services/observable.service';
import { UserService } from '../user/services/user.service';

@Component({
  selector: 'app-admin',
  templateUrl: './admin.component.html',
  styleUrls: ['./admin.component.css'],
  providers: [ ObservableService ]
})
export class AdminComponent {

  constructor(
    private _observableService: ObservableService,
    private _userService: UserService,
    private _router: Router,
  ) {
    // Subscribe to logouts
    this._observableService.subscribe(
      this._userService.loginUpdate,
      (state: boolean) => {
        if (!state) {
          this._router.navigate(['/']);
        }
      }
    );
  }

}
