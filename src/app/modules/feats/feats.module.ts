import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FeatsComponent } from './feats.component';
import { SharedModule } from 'src/app/shared/shared.module';

@NgModule({
  declarations: [
    FeatsComponent
  ],
  imports: [
    CommonModule,
    SharedModule
  ],
  exports: [
    FeatsComponent
  ],
})
export class FeatsModule { }
