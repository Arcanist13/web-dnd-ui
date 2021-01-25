import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { HttpClientModule } from '@angular/common/http';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { SpellListComponent } from './components/spell-list/spell-list.component';
import { SpellModalComponent } from './components/spell-modal/spell-modal.component';
import { SpellLevelPipe } from './pipes/spell-level.pipe';
import { SpellComponentsPipe } from './pipes/spell-components.pipe';
import { SpellCasttimePipe } from './pipes/spell-casttime.pipe';

@NgModule({
  declarations: [
    SpellListComponent,
    SpellModalComponent,
    SpellLevelPipe,
    SpellComponentsPipe,
    SpellCasttimePipe,
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
    SpellModalComponent,
    SpellLevelPipe,
  ]
})
export class SharedModule { }
