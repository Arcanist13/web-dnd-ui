import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './modules/user/components/login/login.component';
import { FeatsComponent } from './modules/feats/feats.component';
import { SpellsComponent } from './modules/spells/spells.component';
import { RegisterComponent } from './modules/user/components/register/register.component';

const CORE_ROUTES: Routes = [
  {
    path: 'user',
    loadChildren: () => import('src/app/modules/user/user-routing.module').then(m => m.UserRoutingModule)
  },
  {
    path: 'character',
    loadChildren: () => import('src/app/modules/character/character-routing.module').then(m => m.CharacterRoutingModule)
  },
  {
    path: 'spells',
    loadChildren: () => import('src/app/modules/spells/spells-routing.module').then(m => m.SpellsRoutingModule)
  },
  {
    path: 'feats',
    loadChildren: () => import('src/app/modules/feats/feats-routing.module').then(m => m.FeatsRoutingModule)
  },
  { path: '**', redirectTo: '/spells' }
];

@NgModule({
  imports: [
    RouterModule.forRoot(CORE_ROUTES, { relativeLinkResolution: 'legacy' })
  ],
  exports: [
    RouterModule
  ]
})
export class AppRoutingModule { }
