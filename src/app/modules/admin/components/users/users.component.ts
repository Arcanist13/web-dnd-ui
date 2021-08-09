import { Component } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { ConfirmDialogComponent } from 'src/app/shared/dialog/confirm-dialog/confirm-dialog.component';
import { IUser } from 'src/app/shared/models/user.model';
import { HttpService } from 'src/app/static/services/http.service';
import { environment } from 'src/environments/environment';

@Component({
  selector: 'app-users',
  templateUrl: './users.component.html',
  styleUrls: ['./users.component.css']
})
export class UsersComponent {

  public users: Array<IUser>;

  constructor(
    private _httpService: HttpService,
    public _dialog: MatDialog
  ) {
    this.users = [];

    // Get the list of users
    this._httpService.get<Array<IUser>>(
      environment.backendUri + '/users'
    ).subscribe((res: Array<IUser>) => {
      this.users = res;
    });
  }

  /**
   * Open a create campaign dialog
   */
  confirmDeleteDialog(user_id: number): void {
    const msg = 'Confirm that you wish to delete user "' + this.users.find((usr: IUser) => usr.id === user_id)?.username + '"?';
    const dialogRef = this._dialog.open(ConfirmDialogComponent, { data: msg });

    dialogRef.afterClosed().subscribe((res: boolean) => {
      if (!!res) {
        this.deleteUser(user_id);
      }
    });
  }

  /**
   * Delete a campaign
   *
   * @param id  campaign id to remove
   */
  deleteUser(id: number): void {
    this._httpService.delete<boolean>(
      environment.backendUri + '/users/remove/' + id
    ).subscribe((res: boolean) => {
      this.users = this.users.filter((user: IUser) =>  user.id !== id);
    });
  }

}
