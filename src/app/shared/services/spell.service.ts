import { Injectable } from '@angular/core';
import { HttpClient, HttpErrorResponse } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { Observable, Subject, throwError } from 'rxjs';
import { catchError } from 'rxjs/operators';
import { ISpellModel } from 'src/app/shared/models/spell.model';
import { DndClassService } from './dnd-class.service';

@Injectable({
  providedIn: 'root'
})
export class SpellService {

  private _spellUpdate: Subject<Array<ISpellModel>>;

  constructor(
    private _http: HttpClient,
    private _classService: DndClassService
  ) {
    this._spellUpdate = new Subject<Array<ISpellModel>>();

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
    let request: Observable<Array<ISpellModel>>;

    if (!currentClass || currentClass === 'All Spells') {
      request = this._http.get<Array<ISpellModel>>(environment.backendUri + '/spells');
    }
    else {
      request = this._http.get<Array<ISpellModel>>(environment.backendUri + '/spell/class/' + currentClass);
    }

    request.pipe(catchError(this.handleError))
      .subscribe((result: Array<ISpellModel>) => {
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
  getSpell(id: number): Observable<ISpellModel> {
    return this._http.get<ISpellModel>(environment.backendUri + '/spell/' + id)
      .pipe(catchError(this.handleError));
  }

  /**
   * Spell list change emitter
   *
   * @return    spell list observable
   */
  onSpellUpdate(): Subject<Array<ISpellModel>> {
    return this._spellUpdate;
  }

  /**
   * Handle HTTP request errors
   *
   * @param error HTTP error message
   * @returns     empty observable error
   */
  private handleError(error: HttpErrorResponse): Observable<never> {
    if (error.error instanceof ErrorEvent) {
      // A client-side or network error occurred. Handle it accordingly.
      console.error('ERROR (spell.service): Client Error ', error.error.message);
    } else {
      // The backend returned an unsuccessful response code.
      // The response body may contain clues as to what went wrong.
      console.error(
        `ERROR (spell.service): HTTP Error ${error.status}, ` +
        `Message: ${error.error}`);
    }
    // Return an observable with a user-facing error message.
    return throwError('Request failed.');
  }

}
