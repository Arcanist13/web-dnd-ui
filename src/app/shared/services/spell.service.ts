import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { Observable, Subject } from 'rxjs';
import { SpellModel } from 'src/app/shared/models/spell.model';
import { DndClassService } from './dnd-class.service';

@Injectable({
  providedIn: 'root'
})
export class SpellService {

  private _spellUpdate: Subject<Array<SpellModel>>;

  constructor(
    private _http: HttpClient,
    private _classService: DndClassService
  ) {
    this._spellUpdate = new Subject<Array<SpellModel>>();

    this._classService.onSpellClassChange().subscribe((newClass: string) => {
      this.getSpells(newClass);
    })
  }

  /**
   * Get the list of all spells
   *
   * @param currentClass  the current spell class filter
   */
  getSpells(currentClass: string = ''): void {
    let request: Observable<Array<SpellModel>>;

    if (!currentClass || currentClass === 'All Spells') {
      request = this._http.get<Array<SpellModel>>(environment.backendUri + '/spell');
    }
    else {
      request = this._http.get<Array<SpellModel>>(environment.backendUri + '/spell/class/' + currentClass);
    }

    request.subscribe((result: Array<SpellModel>) => {
      this._spellUpdate.next(result);
    })
  }

  /**
   * Get a spell by it's ID
   *
   * @param id  spell id
   *
   * @return    spell information promise
   */
  getSpell(id: number): Observable<SpellModel> {
    return this._http.get<SpellModel>(environment.backendUri + '/spell/' + id)
  }

  /**
   * Spell list change emitter
   *
   * @return    spell list observable
   */
  onSpellUpdate(): Subject<Array<SpellModel>> {
    return this._spellUpdate;
  }

}
