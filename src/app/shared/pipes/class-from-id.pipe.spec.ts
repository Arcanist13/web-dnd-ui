import { ClassFromIdPipe } from './class-from-id.pipe';

describe('ClassFromIdPipe', () => {
  it('create an instance', () => {
    const pipe = new ClassFromIdPipe();
    expect(pipe).toBeTruthy();
  });
});
