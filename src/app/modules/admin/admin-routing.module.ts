import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { AdminComponent } from './admin.component';
import { CampaignComponent } from './components/campaign/campaign.component';
import { UsersComponent } from './components/users/users.component';

const ADMIN_ROUTES = [
  {
    path: '', component: AdminComponent, children: [
      { path: 'campaign', component: CampaignComponent },
      { path: 'users', component: UsersComponent }
    ]
  }
];

@NgModule({
  imports: [
    RouterModule.forChild(ADMIN_ROUTES)
  ]
})
export class AdminRoutingModule { }
