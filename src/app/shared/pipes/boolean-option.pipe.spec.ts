import { BooleanOptionPipe } from './boolean-option.pipe';

describe('BooleanOptionPipe', () => {
  it('create an instance', () => {
    const pipe = new BooleanOptionPipe();
    expect(pipe).toBeTruthy();
  });
});
