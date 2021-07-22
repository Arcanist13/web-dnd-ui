import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Subject } from 'rxjs';
import { IRegisterUser, IUser } from 'src/app/shared/models/user.model';
import { environment } from 'src/environments/environment';
import { AuthService } from './auth.service';

@Injectable({
  providedIn: 'root'
})
export class UserService {

  private _loggedIn: Subject<boolean>;
  private _userInfo: IUser | undefined;

  constructor(
    private _authService: AuthService,
    private _http: HttpClient,
  ) {
    this._loggedIn = new Subject<boolean>();
    this._userInfo = undefined;

    // On init check if already logged in and have a valid token
    this._authService.login()
    .then((user: IUser) => {
      this.updateUser(user);
    })
    .catch(() => {
      this.logout();
    });
  }

  /**
   * Login a user with a username and password
   *
   * @param username  users username
   * @param password  users password
   * @returns         promise result
   */
  login(username: string, password: string): Promise<void> {
    return this._authService.login(username, password).then((user: IUser) => {
      this.updateUser(user);
    });
  }

  /**
   * Logout the current user
   *
   * @returns promise result
   */
  logout(): Promise<void> {
    return this._authService.logout().then(() => {
      this.updateUser();
    });
  }

  /**
   * Register a new user account and login.
   *
   * @param username  new account username (must be unique)
   * @param email     new user email, optional
   * @param password  new user password
   * @returns         register result
   */
  register(username: string, email: string, password: string): Promise<void> {
    return this._http.post<IRegisterUser>(
      environment.backendUri + '/register',
      {
        username, email, password
      } as IRegisterUser
    ).toPromise().then(() => {
      this.login(username, password);
    });
  }

  /**
   * Update the user information of reset it if there isn't any.
   *
   * @param user  user information
   */
  private updateUser(user?: IUser): void {
    this._userInfo = user;
    this._loggedIn.next(!!this._userInfo);
  }

  /**
   * Get an observable of the logged in state.
   *
   * @returns login state observable
   */
  public get loggedIn(): Subject<boolean> {
    return this._loggedIn;
  }
  /**
   * Get the current user information.
   *
   * @returns user information or undefined
   */
  public get userInfo() : IUser | undefined {
    return this._userInfo
  }

}
