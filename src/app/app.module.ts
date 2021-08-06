import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { CoreModule } from './core/core.module';
import { OAuthModule } from 'angular-oauth2-oidc';

import { SpellsModule } from './modules/spells/spells.module';
import { FeatsModule } from './modules/feats/feats.module';
import { CharacterModule } from './modules/character/character.module';

@NgModule({
  declarations: [
    AppComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    CoreModule,
    OAuthModule.forRoot({
      resourceServer: {
        allowedUrls: ['http://192.168.1.21:5000/'],
        sendAccessToken: true
      }
    }
    ),
    SpellsModule,
    FeatsModule,
    CharacterModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
