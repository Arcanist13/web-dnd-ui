import { Component, EventEmitter, OnInit, Output } from '@angular/core';

@Component({
  selector: 'app-search',
  templateUrl: './search.component.html',
  styleUrls: ['./search.component.css']
})
export class SearchComponent {

  @Output() filterUpdate = new EventEmitter<string>();

  public filter: string;

  constructor() {
    this.filter = '';
  }

}
