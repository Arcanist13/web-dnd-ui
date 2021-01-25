import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'spellCasttime'
})
export class SpellCasttimePipe implements PipeTransform {

  transform(casttime: string, duration: string): string {
    let result = '';

    if (duration.toLowerCase().includes('concentration')) {
      result = '(c) ';
    }
    const split = casttime.split(',');
    result += split[0];

    return result;
  }

}
