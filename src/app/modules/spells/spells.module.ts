import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { SpellsComponent } from './spells.component';
import { SharedModule } from 'src/app/shared/shared.module';
import { FilterSpellLevelComponent } from '../../shared/components/filter/filter-level/filter-level.component';
import { FilterSpellCasttimeComponent } from '../../shared/components/filter/filter-casttime/filter-casttime.component';
import { FilterSpellClassComponent } from '../../shared/components/filter/filter-class/filter-class.component';

@NgModule({
  declarations: [
    SpellsComponent,
    FilterSpellLevelComponent,
    FilterSpellCasttimeComponent,
    FilterSpellClassComponent,
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
