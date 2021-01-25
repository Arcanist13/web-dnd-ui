import { TestBed } from '@angular/core/testing';

import { SpellModalService } from './spell-modal.service';

describe('SpellModalService', () => {
  let service: SpellModalService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(SpellModalService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
