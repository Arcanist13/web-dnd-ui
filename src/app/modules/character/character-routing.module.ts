import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { UserActiveGuard } from 'src/app/static/guards/user-active.guard';
import { CharacterComponent } from './character.component';
import { NewCharacterComponent } from './components/new-character/new-character.component';
import { ViewCharacterComponent } from './components/view-character/view-character.component';

const CHARACTER_ROUTES = [
  {
    path: '', component: CharacterComponent, children: [], canActivate: [UserActiveGuard],
  },
  {
    path: ':id', component: ViewCharacterComponent, children: [], canActivate: [UserActiveGuard]
  }
];

@NgModule({
  imports: [
    RouterModule.forChild(CHARACTER_ROUTES)
  ]
})
export class CharacterRoutingModule { }
