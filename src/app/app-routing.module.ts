import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { CharacterComponent } from './modules/character/character.component';
import { FeatsComponent } from './modules/feats/feats.component';
import { SpellsComponent } from './modules/spells/spells.component';

const routes: Routes = [
  { path: 'character', component: CharacterComponent },
  { path: 'spells', component: SpellsComponent },
  { path: 'feats', component: FeatsComponent },
  { path: '**', component: SpellsComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
