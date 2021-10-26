import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'booleanOption'
})
export class BooleanOptionPipe implements PipeTransform {

  /**
   * Transform a boolean integer field (0/1) to a No/Yes option
   * @param value
   * @returns
   */
  transform(value: number): string {
    if (value) {
      return 'Yes';
    }
    return 'No';
  }

}
