import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { Observable, of, Subject } from 'rxjs';
import { IFavouriteSpell, ISpellModel } from 'src/app/shared/models/spell.model';
import { DndClassService } from './dnd-class.service';
import { HttpService } from 'src/app/static/services/http.service';
import { ObservableService } from './observable.service';
import { STORAGE_KEY_SPELLS } from 'src/app/static/storage_keys.constant';

@Injectable({
  providedIn: 'root'
})
export class SpellService extends ObservableService {

  private _spellUpdate: Subject<Array<ISpellModel>>;
  private _favouriteUpdate: Subject<Array<IFavouriteSpell>>;

  // Memory storage
  private _classSpellMap: Map<string, Array<ISpellModel>>;

  constructor(
    private _httpService: HttpService,
    private _classService: DndClassService
  ) {
    super();

    this._spellUpdate = new Subject<Array<ISpellModel>>();
    this._favouriteUpdate = new Subject<Array<IFavouriteSpell>>();

    this._classSpellMap = new Map<string, Array<ISpellModel>>();

    // Load spells from storage if possible
    const spells = localStorage.getItem(STORAGE_KEY_SPELLS);
    if (spells) {
      this._classSpellMap = new Map(JSON.parse(spells)) as Map<string, Array<ISpellModel>>;
    }

    this.subscribe(
      this._classService.onSpellClassChange,
      (newClass: string) => {
        this.getSpells(newClass);
      }
    );
  }

  /**
   * Get the list of all spells
   *
   * @param currentClass  the current spell class filter
   */
  public getSpells(currentClass: string = ''): void {
    // Check if we've already loaded the spells
    if (this._classSpellMap.has(currentClass)) {
      this._spellUpdate.next(this._classSpellMap.get(currentClass));
      return;
    }

    // Build the request string
    let addr = '';
    if (!currentClass || currentClass === 'All Spells') {
      addr = environment.backendUri + '/spells';
    }
    else {
      addr = environment.backendUri + '/spell/class/' + currentClass;
    }

    this._httpService.get<Array<ISpellModel>>(addr)
      .subscribe((result: Array<ISpellModel>) => {
        this._spellUpdate.next(result);
        this._classSpellMap.set(currentClass, result);
        localStorage.setItem(STORAGE_KEY_SPELLS, JSON.stringify([...this._classSpellMap]));
      }
    );
  }

  /**
   * Get the favourite spells for a character
   *
   * @param char_id character id
   */
  public favouriteSpells(char_id: number): void {
    this._httpService.get<Array<ISpellModel>>(
      environment.backendUri + '/favourite/spells/' + char_id.toString()
    ).subscribe((result: Array<ISpellModel>) => {
      this._spellUpdate.next(result);
    });
  }

  /**
   * Get the list of favourite spell ids
   *
   * @param char_id character to get fav spells of
   */
  public favouriteSpellIds(char_id: number): void {
    this._httpService.get<Array<IFavouriteSpell>>(
      environment.backendUri + '/favourite/spell_ids/' + char_id.toString()
    ).subscribe((result: Array<IFavouriteSpell>) => {
      this._favouriteUpdate.next(result);
    });
  }

  /**
   * Favourite or unfavourite a spell for a character
   *
   * @param spell_id  spell id
   * @param char_id   character id
   */
  public favouriteSpell(spell_id: number, char_id: number, state: boolean): void {
    const data = {
      character_id: char_id,
      spell_id
    };

    if (state) {
      this._httpService.post<void>(
        environment.backendUri + '/favourite/spell',
        data
      ).subscribe(() => {
        this.favouriteSpellIds(char_id);
      });
    } else {
      this._httpService.delete<void>(
        environment.backendUri + '/favourite/spell/' + char_id.toString() + '/' + spell_id.toString(),
      ).subscribe(() => {
        this.favouriteSpellIds(char_id);
      });
    }
  }

  /**
   * Get a spell by it's ID
   *
   * @param id  spell id
   *
   * @return    spell information promise
   */
  public getSpell(id: number): Observable<ISpellModel> {
    const spell = this._classSpellMap.get('All Spells')?.find((spl: ISpellModel) => spl.id === id);
    if (spell?.description) {
      return new Observable((observer) => {
        observer.next(spell);
        observer.complete();
      });
    }
    return this._httpService.get<ISpellModel>(environment.backendUri + '/spell/' + id);
  }

  /**
   * Store extra spell information in the local storage. This is used after a spell is requested from
   * the backend for the first time as initially not all spell information is requested.
   *
   * @param spell full spell information
   */
  public storeSpell(spell: ISpellModel): void {
    const findSpell = this._classSpellMap.get('All Spells')?.find((spl: ISpellModel) => spl.id === spell.id);
    if (findSpell) {
      findSpell.description = spell.description;
      findSpell.classes = spell.classes;
      findSpell.page = spell.page;
      findSpell.visual = spell.visual;
      localStorage.setItem(STORAGE_KEY_SPELLS, JSON.stringify([...this._classSpellMap]));
    }
  }

  /**
   * Spell list change emitter
   *
   * @return    spell list observable
   */
  public get onSpellUpdate() : Subject<Array<ISpellModel>> {
    return this._spellUpdate
  }

  /**
   * Event for favourite spell list update
   *
   * @return  favourite spell observable
   */
  public get onFavouriteUpdate() : Subject<Array<IFavouriteSpell>> {
    return this._favouriteUpdate;
  }


}
