import { Pipe, PipeTransform } from '@angular/core';
import { CharacterDataService } from 'src/app/modules/character/services/character-data.service';
import { IClass } from '../models/class.model';

@Pipe({
  name: 'classFromId'
})
export class ClassFromIdPipe implements PipeTransform {

  constructor(
    private _characterDataService: CharacterDataService
  ) {}

  /**
   * Convert a class id into the class name string
   *
   * @param class_id  class id to find
   * @returns         class name
   */
  async transform(class_id: number): Promise<string | undefined> {
    return new Promise((resolve) => {
      if (class_id !== undefined) {
        this._characterDataService.classes.then((data: Array<IClass>) => {
          resolve(data.find((cls: IClass) => cls.id === class_id)?.name);
        });
      }
      else {
        resolve(undefined);
      }
    });
  }

}
