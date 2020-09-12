import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {

  navCollapsed: boolean;

  constructor() {
    this.navCollapsed = true;
  }

  ngOnInit(): void {
  }

}
