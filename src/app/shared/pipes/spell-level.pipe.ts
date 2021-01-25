import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'spellLevel'
})
export class SpellLevelPipe implements PipeTransform {

  transform(level: number, domain: string, ritual: string): string {
    let result = '';
    console.log(level, domain);
    console.log(ritual);
    if (level == 0) {
      console.log("Cantrip");
      result = domain + ' cantrip';
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
      result = level + post + '-level ' + domain;
    }
    if (ritual && ritual !== '') {
      result += ' (ritual)';
    }
    return result;
  }

}
