import { TestBed } from '@angular/core/testing';

import { CharacterViewService } from './character-view.service';

describe('CharacterViewService', () => {
  let service: CharacterViewService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(CharacterViewService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
