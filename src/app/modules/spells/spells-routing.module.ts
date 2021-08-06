import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { SpellsComponent } from './spells.component';

const SPELLS_ROUTES = [
  {
    path: '', component: SpellsComponent
  }
];

@NgModule({
  imports: [
    RouterModule.forChild(SPELLS_ROUTES)
  ]
})
export class SpellsRoutingModule { }
