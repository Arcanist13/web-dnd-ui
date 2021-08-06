import { Injectable } from '@angular/core';
import { HttpService } from 'src/app/static/services/http.service';

@Injectable({
  providedIn: 'root'
})
export class CharacterService {

  constructor(
    private _httpService: HttpService
  ) { }
}
