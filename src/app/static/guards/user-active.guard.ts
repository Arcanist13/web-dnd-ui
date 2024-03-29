import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, CanActivate, Router, RouterStateSnapshot, UrlTree } from '@angular/router';
import { Observable } from 'rxjs';
import { AuthService } from '../services/auth.service';

@Injectable({
  providedIn: 'root'
})
export class UserActiveGuard implements CanActivate {
  constructor(
    private _authService: AuthService,
    private _router: Router
  ) {}

  canActivate(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot): Observable<boolean | UrlTree> | Promise<boolean | UrlTree> | boolean | UrlTree
  {
    return new Promise<boolean>((resolve, _) => {
      this._authService.login().then(() => {
        resolve(true);
      })
      .catch(() => {
        this._router.navigate(['/user/login']);
        resolve(false);
      });
    });
  }

}
