import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { HttpClientModule } from '@angular/common/http';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { SpellListComponent } from './components/spell-list/spell-list.component';

@NgModule({
  declarations: [
    SpellListComponent,
  ],
  imports: [
    CommonModule,
    NgbModule,
    HttpClientModule,
  ],
  exports: [
    NgbModule,
    HttpClientModule,
    SpellListComponent,
  ]
})
export class SharedModule { }
