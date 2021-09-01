import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { UserActiveGuard } from 'src/app/static/guards/user-active.guard';
import { UserAdminGuard } from 'src/app/static/guards/user-admin.guard';
import { AdminComponent } from './admin.component';

const ADMIN_ROUTES = [
  {
    path: '', component: AdminComponent, canActivate: [UserActiveGuard, UserAdminGuard]
  }
];

@NgModule({
  imports: [
    RouterModule.forChild(ADMIN_ROUTES)
  ]
})
export class AdminRoutingModule { }
