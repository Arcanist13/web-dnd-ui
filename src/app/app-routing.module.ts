import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

const CORE_ROUTES: Routes = [
  {
    path: 'user',
    loadChildren: () => import('src/app/modules/user/user-routing.module').then(m => m.UserRoutingModule)
  },
  {
    path: 'admin',
    loadChildren: () => import('src/app/modules/admin/admin-routing.module').then(m => m.AdminRoutingModule)
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
