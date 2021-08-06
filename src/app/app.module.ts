import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { StaticModule } from './static/static.module';
import { OAuthModule } from 'angular-oauth2-oidc';

import { SpellsModule } from './modules/spells/spells.module';
import { FeatsModule } from './modules/feats/feats.module';
import { CharacterModule } from './modules/character/character.module';
import { UserModule } from './modules/user/user.module';
import { AdminModule } from './modules/admin/admin.module';

const APP_MODULES = [
  AdminModule,
  UserModule,
  SpellsModule,
  FeatsModule,
  CharacterModule,
]

@NgModule({
  declarations: [
    AppComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    StaticModule,
    OAuthModule.forRoot({
      resourceServer: {
        allowedUrls: ['http://192.168.1.21:5000/'],
        sendAccessToken: true
      }
    }),
    APP_MODULES
  ],
  providers: [],
  bootstrap: [
    AppComponent
  ]
})
export class AppModule { }
