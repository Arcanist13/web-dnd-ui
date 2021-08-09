import { Injectable } from '@angular/core';
import { AuthConfig, OAuthService } from 'angular-oauth2-oidc';
import { ITokenUser, IUser } from 'src/app/shared/models/user.model';

export const authCodeFlowConfig: AuthConfig = {
  tokenEndpoint: "http://192.168.1.21:5000/token",
  userinfoEndpoint: "http://192.168.1.21:5000/users/me",
  clientId: "dnd-web-ui",
  dummyClientSecret: "geheim",
  scope: "openid profile",
  oidc: false,
  showDebugInformation: true,
  sessionChecksEnabled: false,
  requireHttps: false
};

/**
 * Provides OAuth2 authentication services to the application.
 *
 * https://manfredsteyer.github.io/angular-oauth2-oidc/docs/
 */
@Injectable({
  providedIn: 'root'
})
export class AuthService {

  constructor(
    private oAuthService: OAuthService,
  ) {
    // Configure the oauth service
    this.oAuthService.configure(authCodeFlowConfig);
    this.oAuthService.setStorage(sessionStorage);
  }

  /**
   * Login the current user to the oauth service, if a username and password are not
   * provided it will attempt to load an existing profile from storage.
   *
   * @param username  user username
   * @param password  user password
   * @returns         login result
   */
  async login(username?: string, password?: string): Promise<{info: IUser}> {
    if (username !== undefined && password !== undefined) {
      const res: ITokenUser = await this.oAuthService.fetchTokenUsingPasswordFlowAndLoadUserProfile(username, password) as ITokenUser;
      return res;
    }
    return this.oAuthService.loadUserProfile() as Promise<{info: IUser}>;
  }

  /**
   * Log the user out of the oauth service.
   *
   * @returns logout result
   */
  async logout(): Promise<void> {
    return this.oAuthService.logOut();
  }

  /**
   * Get the information for the current logged in user.
   *
   * @returns user information
   */
  getCurrentUserInfo(): IUser {
    return this.oAuthService.getIdentityClaims() as IUser;
  }
}
