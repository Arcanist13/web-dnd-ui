import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'stringListCount'
})
export class StringListCountPipe implements PipeTransform {

  transform(list: string, delimiter = ','): unknown {
    const split = list.split(delimiter);
    if (!split[0]) {
      return 0;
    }
    return split.length;
  }

}
