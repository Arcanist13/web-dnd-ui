import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'spellLevelDisplay'
})
export class SpellLevelDisplayPipe implements PipeTransform {

  /**
   * Build a spell level/school/ritual string
   *
   * @param level   spell level
   * @param school  spell school
   * @param ritual  spell ritual
   * @returns       spell string
   */
  transform(level: number, school: string, ritual: number): string {
    let result = '';
    if (level == 0) {
      result = school + ' cantrip';
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
      result = level + post + '-level ' + school;
    }
    if (ritual && +ritual === 1) {
      result += ' (ritual)';
    }
    return result;
  }

}
