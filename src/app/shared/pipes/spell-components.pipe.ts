import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'spellComponents'
})
export class SpellComponentsPipe implements PipeTransform {

  transform(components: string): string {

    const split = components.split('(');
    let result = split[0];

    if (split.length > 1) {
      if (split[1].includes('worth at least') || split[1].includes('consumes')) {
        result = split[0] + '(c)';
      }
    }

    return result;
  }

}
