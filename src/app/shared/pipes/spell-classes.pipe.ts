import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'spellClasses'
})
export class SpellClassesPipe implements PipeTransform {

  transform(classes: string): string {
    return classes.split(',').join(', ');
  }

}
