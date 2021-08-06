import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { CharacterComponent } from './character.component';
import { NewCharacterComponent } from './components/new-character/new-character.component';

const CHARACTER_ROUTES = [
  {
    path: '', component: CharacterComponent, children: [
      { path: 'new', component: NewCharacterComponent }
    ]
  }
];

@NgModule({
  imports: [
    RouterModule.forChild(CHARACTER_ROUTES)
  ]
})
export class CharacterRoutingModule { }
