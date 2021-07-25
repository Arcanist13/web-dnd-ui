import { Component, OnDestroy, OnInit } from '@angular/core';
import { Subscription } from 'rxjs';
import { IFeatModel } from 'src/app/shared/models/feat.model';
import { ISpellFilter } from 'src/app/shared/models/spell.model';
import { FeatService } from 'src/app/shared/services/feat.service';
import { SpellFilterService } from 'src/app/shared/services/spell-filter.service';
import { FeatModalService } from './services/feat-modal.service';

@Component({
  selector: 'app-feats',
  templateUrl: './feats.component.html',
  styleUrls: ['./feats.component.css']
})
export class FeatsComponent implements OnInit, OnDestroy {

  private _subscriptions: Array<Subscription>;

  public feats: Array<IFeatModel>;
  public featFilter: string;

  constructor(
    private _featService: FeatService,
    private _featModalService: FeatModalService,
    private _spellFilterService: SpellFilterService
  ) {
    this._subscriptions = [];

    this.feats = [];
    this.featFilter = '';

    // Subscribe to updates in the feat list
    this._subscriptions.push(
      this._featService.featUpdate.subscribe(
        (_feats: Array<IFeatModel>) => {
          this.feats = _feats;
        }
      )
    );

    // Subscribe to changes in the filter
    this._subscriptions.push(
      this._spellFilterService.filterUpdate.subscribe(
        (filter: ISpellFilter) => {
          this.featFilter = filter.name ? filter.name.toLowerCase() : '';
        }
      )
    );
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


  /**
   * Clear subs
   */
   ngOnDestroy(): void {
    this._subscriptions.forEach((sub: Subscription) => sub.unsubscribe() );
  }

}
