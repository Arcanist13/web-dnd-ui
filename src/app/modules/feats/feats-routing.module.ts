import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { FeatsComponent } from './feats.component';

const FEATS_ROUTES = [
  {
    path: '', component: FeatsComponent
  }
];

@NgModule({
  imports: [
    RouterModule.forChild(FEATS_ROUTES)
  ]
})
export class FeatsRoutingModule { }
