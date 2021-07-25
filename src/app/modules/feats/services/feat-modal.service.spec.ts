import { TestBed } from '@angular/core/testing';

import { FeatModalService } from './feat-modal.service';

describe('FeatModalService', () => {
  let service: FeatModalService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(FeatModalService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
