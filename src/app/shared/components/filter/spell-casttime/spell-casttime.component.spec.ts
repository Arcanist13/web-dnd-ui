import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FilterSpellCasttimeComponent } from './spell-casttime.component';

describe('FilterSpellCasttimeComponent', () => {
  let component: FilterSpellCasttimeComponent;
  let fixture: ComponentFixture<FilterSpellCasttimeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ FilterSpellCasttimeComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(FilterSpellCasttimeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
