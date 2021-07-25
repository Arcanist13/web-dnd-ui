import { Component, ViewChild } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { ISpellModel } from 'src/app/shared/models/spell.model';
import { SpellService } from 'src/app/shared/services/spell.service';
import { SpellModalService } from '../../../modules/spells/services/spell-modal.service';

@Component({
  selector: 'app-spell-modal',
  templateUrl: './spell-modal.component.html',
  styleUrls: ['./spell-modal.component.css']
})
export class SpellModalComponent  {

  spell!: ISpellModel;
  @ViewChild("spellModalContent", {static: false}) modalRef!: HTMLElement;

  constructor(
    private _spellModalService: SpellModalService,
    private _spellService: SpellService,
    private _modalService: NgbModal,
  ) {
    // Listen for spell modal calls and load the spell information
    this._spellModalService.onSpellModal().subscribe(
      (id: number) => {
        this._spellService.getSpell(id).subscribe(
          (res: ISpellModel) => {
            if (res) {
              this.spell = res;
              this.startModal();
            }
          }
        );
      }
    );
  }

  /**
   * Open the modal interface
   */
  startModal(): void {
    this._modalService.open(
      this.modalRef,
      {
        size: 'xl',
        scrollable: true
      }
    )
  }

  /**
   * Close the modal
   */
  closeModal(): void { }

}
