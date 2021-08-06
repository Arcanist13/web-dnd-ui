import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { AdminComponent } from './admin.component';
import { SharedModule } from 'src/app/shared/shared.module';
import { CampaignComponent } from './components/campaign/campaign.component';
import { AppRoutingModule } from 'src/app/app-routing.module';
import { UsersComponent } from './components/users/users.component';

@NgModule({
  declarations: [
    AdminComponent,
    CampaignComponent,
    UsersComponent
  ],
  imports: [
    CommonModule,
    SharedModule,
    AppRoutingModule
  ],
  exports: [
    AdminComponent
  ]
})
export class AdminModule { }
