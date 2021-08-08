import { Component, Inject } from '@angular/core';
import { FormControl, Validators } from '@angular/forms';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { ICampaign, ICampaignNew } from 'src/app/shared/models/campaign.model';

@Component({
  selector: 'app-campaign-dialog',
  templateUrl: './campaign-dialog.component.html',
  styleUrls: ['./campaign-dialog.component.css']
})
export class CampaignDialogComponent {

  public name = new FormControl('', [Validators.required]);
  public brief = '';

  constructor(
    public dialogRef: MatDialogRef<CampaignDialogComponent>,
    @Inject(MAT_DIALOG_DATA) public data: ICampaign
  ) {
    // If existing data was passed in use it
    if (!!this.data) {
      this.name.setValue(this.data.name);
      this.brief = this.data.brief ? this.data.brief : '';
    }
  }

  /**
   * Get the error message for the name parameter
   *
   * @returns error string
   */
  getErrorMessage() {
    if (this.name.hasError('required')) {
      return 'You must enter a value';
    }

    return this.name.hasError('name') ? 'Not a valid campaign name' : '';
  }

  /**
   * Close the dialog
   */
  close(): void {
    this.dialogRef.close();
  }

  /**
   * Return the campaign data
   *
   * @returns campaign data
   */
  getData(): ICampaign | ICampaignNew {
    return {
      id: this.data && this.data.id ? this.data.id : undefined,
      name: this.name.value,
      brief: this.brief
    }
  }

}
