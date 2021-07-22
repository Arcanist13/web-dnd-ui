import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './core/components/login/login.component';
import { RegisterComponent } from './core/components/register/register.component';
import { CharacterComponent } from './modules/character/character.component';
import { FeatsComponent } from './modules/feats/feats.component';
import { SpellsComponent } from './modules/spells/spells.component';

const routes: Routes = [
  { path: 'login', component: LoginComponent },
  { path: 'register', component: RegisterComponent },
  { path: 'character', component: CharacterComponent },
  { path: 'spells', component: SpellsComponent },
  { path: 'feats', component: FeatsComponent },
  { path: '**', component: SpellsComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes, { relativeLinkResolution: 'legacy' })],
  exports: [RouterModule]
})
export class AppRoutingModule { }
