import { Injectable } from '@angular/core';
import { Subject } from 'rxjs';
import { HttpService } from 'src/app/static/services/http.service';
import { environment } from 'src/environments/environment';
import { IFeatModel } from '../models/feat.model';

@Injectable({
  providedIn: 'root'
})
export class FeatService {

  private _feats?: Array<IFeatModel>;
  private _featUpdate: Subject<Array<IFeatModel>>;

  constructor(
    private _httpService: HttpService,
  ) {
    this._featUpdate = new Subject<Array<IFeatModel>>();
  }

  /**
   * Trigger a feats update request, either using the loaded data or
   * requesting new data.
   */
  getFeats(): void {
    if (!!this._feats) {
      this._featUpdate.next(this._feats);
    }
    else {
      this._httpService.get<Array<IFeatModel>>(environment.backendUri + '/feats')
      .subscribe((res: Array<IFeatModel>) => {
        this._feats = res;
        this._featUpdate.next(this._feats);
      });
    }
  }

  /**
   *
   * @param id
   * @returns
   */
  getFeat(id: number): IFeatModel | undefined {
    if (!!id && this._feats) {
      return this._feats[this._feats.findIndex((feat: IFeatModel) => feat.id === id)];
    }
  }

  /**
   *
   */
  public get featUpdate() : Subject<Array<IFeatModel>> {
    return this._featUpdate;
  }

}
