import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'spellCasttime'
})
export class SpellCasttimePipe implements PipeTransform {

  transform(casttime: string): string {
    let result = '';

    const split = casttime.split(',');
    result += split[0];

    return result;
  }

}
