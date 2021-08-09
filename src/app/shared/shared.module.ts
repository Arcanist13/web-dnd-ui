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
import { ListSplitPipe } from './pipes/list-split.pipe';

import { MatDialogModule } from '@angular/material/dialog';
import { MatTabsModule } from '@angular/material/tabs';
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
import { FilterSpellClassComponent } from './components/filter/spell-class/spell-class.component';
import { FilterSpellListGenericComponent } from './components/filter/spell-list-generic/spell-list-generic.component';
import { FeatModalComponent } from './components/feat-modal/feat-modal.component';
import { StringListCountPipe } from './pipes/string-list-count.pipe';
import { ConfirmDialogComponent } from './dialog/confirm-dialog/confirm-dialog.component';

const MATERIAL_IMPORTS = [
  MatTabsModule,
  MatSortModule,
  MatCardModule,
  MatInputModule,
  MatMenuModule,
  MatIconModule,
  MatSelectModule,
  MatOptionModule,
  MatButtonModule,
  MatDialogModule,
];

const SHARED_COMPONENTS = [
  SpellListComponent,
  SpellModalComponent,
  FeatModalComponent,
  SearchComponent,
  FilterSpellListGenericComponent,
  FilterSpellClassComponent,
];

const SHARED_DIALOG = [
  ConfirmDialogComponent
]

const SHARED_PIPES = [
  SpellLevelDisplayPipe,
  SpellComponentsPipe,
  SpellCasttimePipe,
  ListSplitPipe,
  SpellLevelPipe,
  StringListCountPipe,
];

@NgModule({
  declarations: [
    ...SHARED_COMPONENTS,
    ...SHARED_PIPES,
    ...SHARED_DIALOG,
    StringListCountPipe,
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
    ...MATERIAL_IMPORTS,
    ...SHARED_DIALOG,
  ]
})
export class SharedModule { }
