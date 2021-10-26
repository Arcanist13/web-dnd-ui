import { Injectable } from '@angular/core';
import { Subject } from 'rxjs';
import { HttpService } from 'src/app/static/services/http.service';
import { STORAGE_KEY_FEATS } from 'src/app/static/storage_keys.constant';
import { environment } from 'src/environments/environment';
import { IFeatModel } from '../models/feat.model';

@Injectable({
  providedIn: 'root'
})
export class FeatService {

  private _feats: Array<IFeatModel>;
  private _featUpdate: Subject<Array<IFeatModel>>;

  constructor(
    private _httpService: HttpService,
  ) {
    const feats = localStorage.getItem(STORAGE_KEY_FEATS);
    if (feats) {
      this._feats = JSON.parse(feats) as Array<IFeatModel>;
    } else {
      this._feats = [];
    }

    this._featUpdate = new Subject<Array<IFeatModel>>();
  }

  /**
   * Trigger a feats update request, either using the loaded data or
   * requesting new data.
   */
  getFeats(): void {
    console.log(this._feats)
    if (this._feats.length > 0) {
      this._featUpdate.next(this._feats);
    }
    else {
      this._httpService.get<Array<IFeatModel>>(environment.backendUri + '/feats')
      .subscribe((res: Array<IFeatModel>) => {
        this._feats = res;
        this._featUpdate.next(this._feats);
        localStorage.setItem(STORAGE_KEY_FEATS, JSON.stringify(this._feats));
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
