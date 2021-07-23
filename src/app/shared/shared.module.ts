import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { HttpClientModule } from '@angular/common/http';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { ReactiveFormsModule, FormsModule } from '@angular/forms';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

import { SpellListComponent } from './components/spell-list/spell-list.component';
import { SpellModalComponent } from './components/spell-modal/spell-modal.component';

import { SpellLevelPipe } from './pipes/spell-level.pipe';
import { SpellComponentsPipe } from './pipes/spell-components.pipe';
import { SpellCasttimePipe } from './pipes/spell-casttime.pipe';
import { SpellClassesPipe } from './pipes/spell-classes.pipe';

import { MatSortModule } from '@angular/material/sort';
import { MatOptionModule } from '@angular/material/core';
import { MatCardModule } from '@angular/material/card';
import { MatInputModule } from '@angular/material/input';
import { MatMenuModule } from '@angular/material/menu';
import { MatIconModule } from '@angular/material/icon';
import { MatSelectModule } from '@angular/material/select';
import { MatButtonModule } from '@angular/material/button';
import { SearchComponent } from './components/filter/search/search.component';
import { SpellLevelDisplayPipe } from './pipes/spell-level-display.pipe';

const MATERIAL_IMPORTS = [
  MatSortModule,
  MatCardModule,
  MatInputModule,
  MatMenuModule,
  MatIconModule,
  MatSelectModule,
  MatOptionModule,
  MatButtonModule,
];

const SHARED_COMPONENTS = [
  SpellListComponent,
  SpellModalComponent,
  SearchComponent,
];

const SHARED_PIPES = [
  SpellLevelDisplayPipe,
  SpellComponentsPipe,
  SpellCasttimePipe,
  SpellClassesPipe,
  SpellLevelPipe
];

@NgModule({
  declarations: [
    ...SHARED_COMPONENTS,
    ...SHARED_PIPES,
  ],
  imports: [
    CommonModule,
    NgbModule,
    HttpClientModule,
    BrowserAnimationsModule,
    FormsModule,
    ReactiveFormsModule,
    ...MATERIAL_IMPORTS
  ],
  exports: [
    NgbModule,
    HttpClientModule,
    BrowserAnimationsModule,
    FormsModule,
    ReactiveFormsModule,
    ...SHARED_COMPONENTS,
    ...SHARED_PIPES,
    ...MATERIAL_IMPORTS
  ]
})
export class SharedModule { }
