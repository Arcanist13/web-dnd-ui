import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FeatModalComponent } from './feat-modal.component';

describe('FeatModalComponent', () => {
  let component: FeatModalComponent;
  let fixture: ComponentFixture<FeatModalComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ FeatModalComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(FeatModalComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
