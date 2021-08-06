import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './modules/user/components/login/login.component';
import { CharacterComponent } from './modules/character/character.component';
import { NewCharacterComponent } from './modules/character/components/new-character/new-character.component';
import { FeatsComponent } from './modules/feats/feats.component';
import { SpellsComponent } from './modules/spells/spells.component';
import { RegisterComponent } from './modules/user/components/register/register.component';

const routes: Routes = [
  { path: 'login', component: LoginComponent },
  { path: 'register', component: RegisterComponent },
  { path: 'character', component: CharacterComponent, children: [
    { path: 'new', component: NewCharacterComponent }
  ] },
  { path: 'spells', component: SpellsComponent },
  { path: 'feats', component: FeatsComponent },
  { path: '**', redirectTo: '/spells' }
];

@NgModule({
  imports: [RouterModule.forRoot(routes, { relativeLinkResolution: 'legacy' })],
  exports: [RouterModule]
})
export class AppRoutingModule { }
