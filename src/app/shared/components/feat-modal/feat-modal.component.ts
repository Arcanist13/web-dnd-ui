import { Component, OnInit, ViewChild } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { FeatModalService } from 'src/app/modules/feats/services/feat-modal.service';
import { IFeatModel } from '../../models/feat.model';
import { FeatService } from '../../services/feat.service';

@Component({
  selector: 'app-feat-modal',
  templateUrl: './feat-modal.component.html',
  styleUrls: ['./feat-modal.component.css']
})
export class FeatModalComponent {

  feat?: IFeatModel;
  @ViewChild("featModalContent", {static: false}) modalRef!: HTMLElement;

  constructor(
    private _featModalService: FeatModalService,
    private _featService: FeatService,
    private _modalService: NgbModal,
  ) {
    // Listen for spell modal calls and load the spell information
    this._featModalService.onFeatModal.subscribe(
      (id: number) => {
        console.log("Feat id = " + id);
        this.feat = this._featService.getFeat(id);
        this.startModal();
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
