import { Component } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { ICampaign, ICampaignNew } from 'src/app/shared/models/campaign.model';
import { HttpService } from 'src/app/static/services/http.service';
import { environment } from 'src/environments/environment';
import { CampaignDialogComponent } from './campaign-dialog/campaign-dialog.component';

@Component({
  selector: 'app-campaign',
  templateUrl: './campaign.component.html',
  styleUrls: ['./campaign.component.css']
})
export class CampaignComponent {

  public campaigns: Array<ICampaign>;

  constructor(
    private _httpService: HttpService,
    public _dialog: MatDialog
  ) {
    this.campaigns = [];

    // Get the list of campaigns
    this._httpService.get<Array<ICampaign>>(
      environment.backendUri + '/campaigns'
    ).subscribe((res: Array<ICampaign>) => {
      this.campaigns = res;
    });
  }

  /**
   * Open a create campaign dialog
   */
  openCreateDialog(): void {
    const dialogRef = this._dialog.open(CampaignDialogComponent);

    dialogRef.afterClosed().subscribe((result: ICampaignNew) => {
      if (!!result) {
        this.createCampaign(result)
      }
    });
  }

  /**
   * Open an edit campaign dialog
   */
  openEditDialog(campaign: ICampaign): void {
    const dialogRef = this._dialog.open(CampaignDialogComponent, { data: campaign });

    dialogRef.afterClosed().subscribe((result: ICampaign) => {
      if (!!result) {
        this.editCampaign(result)
      }
    });
  }

  /**
   * Create a new campaign
   *
   * @param data  campaign data
   */
  createCampaign(data: ICampaignNew): void {
    this._httpService.post<ICampaign>(
      environment.backendUri + '/campaign/add',
      data
    ).subscribe((res: ICampaign) => {
      this.campaigns.push(res);
    });
  }

  /**
   * Create a new campaign
   *
   * @param data  campaign data
   */
  editCampaign(data: ICampaign): void {
    this._httpService.post<ICampaign>(
      environment.backendUri + '/campaign/edit/' + data.id,
      data
    ).subscribe((res: ICampaign) => {
      this.campaigns[this.campaigns.findIndex((camp: ICampaign) => camp.id === data.id)] = data;
    });
  }

  /**
   * Delete a campaign
   *
   * @param id  campaign id to remove
   */
  deleteCampaign(id: number): void {
    this._httpService.delete<boolean>(
      environment.backendUri + '/campaign/remove/' + id
    ).subscribe((res: boolean) => {
      this.campaigns = this.campaigns.filter((camp: ICampaign) =>  camp.id !== id);
    });
  }

}
