import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SpellModalComponent } from './spell-modal.component';

describe('SpellModalComponent', () => {
  let component: SpellModalComponent;
  let fixture: ComponentFixture<SpellModalComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SpellModalComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(SpellModalComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
