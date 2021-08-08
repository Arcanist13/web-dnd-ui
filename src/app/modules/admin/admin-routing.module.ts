import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { AdminComponent } from './admin.component';

const ADMIN_ROUTES = [
  {
    path: '', component: AdminComponent
  }
];

@NgModule({
  imports: [
    RouterModule.forChild(ADMIN_ROUTES)
  ]
})
export class AdminRoutingModule { }
