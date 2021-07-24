import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FilterSpellListGenericComponent } from './spell-list-generic.component';

describe('FilterSpellListGenericComponent', () => {
  let component: FilterSpellListGenericComponent;
  let fixture: ComponentFixture<FilterSpellListGenericComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ FilterSpellListGenericComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(FilterSpellListGenericComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
