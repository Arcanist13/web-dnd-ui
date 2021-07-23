import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { SpellsComponent } from './spells.component';
import { SharedModule } from 'src/app/shared/shared.module';

@NgModule({
  declarations: [
    SpellsComponent,
  ],
  imports: [
    CommonModule,
    SharedModule,
  ],
  providers: [ ],
  exports: [
    SpellsComponent,
  ]
})
export class SpellsModule { }
