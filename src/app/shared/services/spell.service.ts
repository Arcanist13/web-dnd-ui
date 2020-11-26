import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { Observable } from 'rxjs';
import { SpellModel } from 'src/app/shared/models/spell.model';

@Injectable({
  providedIn: 'root'
})
export class SpellService {

  constructor(
    private _http: HttpClient
  ) { }

  /**
   * Get the list of all spells
   */
  getSpells(): Observable<Array<SpellModel>> {
    return this._http.get<Array<SpellModel>>(environment.backendUri + '/spell')
  }

  /**
   * Get a spell by it's ID
   *
   * @param id spell id
   *
   */
  getSpell(id: number): Observable<SpellModel> {
    return this._http.get<SpellModel>(environment.backendUri + '/spell/' + id)
  }

}
