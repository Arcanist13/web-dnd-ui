import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { CharacterComponent } from './character.component';
import { SharedModule } from 'src/app/shared/shared.module';
import { NewCharacterComponent } from './components/new-character/new-character.component';
import { AppRoutingModule } from 'src/app/app-routing.module';
import { ViewCharacterComponent } from './components/view-character/view-character.component';
import { SpellsModule } from '../spells/spells.module';

@NgModule({
  declarations: [
    CharacterComponent,
    NewCharacterComponent,
    ViewCharacterComponent
  ],
  imports: [
    CommonModule,
    SharedModule,
    AppRoutingModule,
    SpellsModule
  ],
  exports: [
    CharacterComponent
  ]
})
export class CharacterModule { }
