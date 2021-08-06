import { Component, OnInit } from '@angular/core';
import { IFeatModel } from 'src/app/shared/models/feat.model';
import { ISpellFilter } from 'src/app/shared/models/spell.model';
import { FeatService } from 'src/app/shared/services/feat.service';
import { ObservableService } from 'src/app/shared/services/observable.service';
import { SpellFilterService } from 'src/app/shared/services/spell-filter.service';
import { FeatModalService } from './services/feat-modal.service';

@Component({
  selector: 'app-feats',
  templateUrl: './feats.component.html',
  styleUrls: ['./feats.component.css'],
  providers: [ObservableService]
})
export class FeatsComponent implements OnInit {

  public feats: Array<IFeatModel>;
  public featFilter: string;

  constructor(
    private _observableService: ObservableService,
    private _featService: FeatService,
    private _featModalService: FeatModalService,
    private _spellFilterService: SpellFilterService
  ) {

    this.feats = [];
    this.featFilter = '';

    // Subscribe to updates in the feat list
    this._observableService.subscribe(
      this._featService.featUpdate,
      (_feats: Array<IFeatModel>) => { this.feats = _feats; }
    );

    // Subscribe to changes in the filter
    this._observableService.subscribe(
      this._spellFilterService.filterUpdate,
      (filter: ISpellFilter) => {
        this.featFilter = filter.name ? filter.name.toLowerCase() : '';
      }
    );

    // Update the previousPage session storage
    sessionStorage.setItem('previousPage', 'feats');
  }

  ngOnInit(): void {
    this._featService.getFeats();
  }

  /**
   * Check if the given feat passes the current feature
   *
   * @param feat  feat to check
   * @returns     filter pass status
   */
   checkFilter(feat: IFeatModel): boolean {
    return feat.name.toLowerCase().includes(this.featFilter);
  }

  /**
   * Trigger a spell modal popup
   *
   * @param id  spell id
   */
   openFeatModal(id: number): void {
    this._featModalService.openFeatModal(id);
  }

}
