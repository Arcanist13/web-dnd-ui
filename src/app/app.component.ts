import { Component } from '@angular/core';
import { environment } from 'src/environments/environment';
import { HttpService } from './static/services/http.service';
import { STORAGE_KEY_VERSIONS } from './static/storage_keys.constant';

interface IVersion {
  name: string;
  value: string;
}

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'web-dnd-ui';

  constructor(
    private _httpService: HttpService
  ) {
    // Get the current versions from the backend
    this._httpService.get<Array<IVersion>>(environment.backendUri + '/versions').subscribe((backendVersions: Array<IVersion>) => {
      const stored = localStorage.getItem(STORAGE_KEY_VERSIONS);
      if (stored) {
        const storedVersions = JSON.parse(stored) as Array<IVersion>;
        // Check the stored versions equal the backend versions, otherwise clear the storage
        backendVersions.forEach((backendVersion: IVersion) => {
          const storedVersion = storedVersions.find((val: IVersion) => val.name === backendVersion.name)
          if (storedVersion === undefined || storedVersion.value !== backendVersion.value) {
            // Reset the storage
            localStorage.removeItem(backendVersion.name);
          }
        });
      }
      localStorage.setItem(STORAGE_KEY_VERSIONS, JSON.stringify(backendVersions));
    });
  }
}
