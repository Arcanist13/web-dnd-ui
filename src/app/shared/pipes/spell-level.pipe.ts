import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'spellLevel'
})
export class SpellLevelPipe implements PipeTransform {

  /**
   * Get the spell level string with prefix
   *
   * @param level spell level
   * @returns     level string prefix
   */
  transform(level: number): string {
    let result = '';
    if (level == 0) {
      result = 'Cantrip';
    }
    else {
      let post = '';
      if (level == 1) {
        post = 'st';
      }
      else if (level == 2) {
        post = 'nd';
      }
      else if (level == 3) {
        post = 'rd';
      }
      else {
        post = 'th';
      }
      result = level + post;
    }
    return result;
  }

}
