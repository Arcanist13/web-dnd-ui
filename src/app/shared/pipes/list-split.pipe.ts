import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'listSplit'
})
export class ListSplitPipe implements PipeTransform {

  transform(classes: string): string {
    return classes.split(',').join(', ');
  }

}
