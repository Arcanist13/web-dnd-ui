import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'spellLevel'
})
export class SpellLevelPipe implements PipeTransform {

  transform(level: number, school: string, ritual: string): string {
    console.log("Level = " + level + ", school = " + school + " ritual = " + ritual);
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
    if (ritual && ritual !== '') {
      result += ' (ritual)';
    }
    console.log(result);
    return result;
  }

}
