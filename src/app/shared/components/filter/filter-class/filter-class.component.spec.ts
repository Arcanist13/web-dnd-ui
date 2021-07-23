import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FilterSpellClassComponent } from './filter-class.component';

describe('FilterSpellClassComponent', () => {
  let component: FilterSpellClassComponent;
  let fixture: ComponentFixture<FilterSpellClassComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ FilterSpellClassComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(FilterSpellClassComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
