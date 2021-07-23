import { TestBed } from '@angular/core/testing';

import { SpellFilterService } from './spell-filter.service';

describe('SpellFilterService', () => {
  let service: SpellFilterService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(SpellFilterService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
