import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { SpellsComponent } from './spells.component';
import { SharedModule } from 'src/app/shared/shared.module';
import { FilterComponent } from './components/filter/filter.component';

@NgModule({
  declarations: [
    SpellsComponent,
    FilterComponent,
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
