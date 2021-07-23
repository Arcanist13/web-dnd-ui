import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FilterSpellLevelComponent } from './spell-level.component';

describe('FilterSpellLevelComponent', () => {
  let component: FilterSpellLevelComponent;
  let fixture: ComponentFixture<FilterSpellLevelComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ FilterSpellLevelComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(FilterSpellLevelComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
