import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { CharacterComponent } from './character.component';
import { SharedModule } from 'src/app/shared/shared.module';
import { NewCharacterComponent } from './components/new-character/new-character.component';
import { AppRoutingModule } from 'src/app/app-routing.module';

@NgModule({
  declarations: [
    CharacterComponent,
    NewCharacterComponent
  ],
  imports: [
    CommonModule,
    SharedModule,
    AppRoutingModule
  ],
  exports: [
    CharacterComponent
  ]
})
export class CharacterModule { }
