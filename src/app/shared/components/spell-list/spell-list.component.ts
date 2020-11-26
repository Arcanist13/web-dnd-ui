import { Component, Input, OnInit } from '@angular/core';
import { SpellModel } from '../../models/spell.model';

@Component({
  selector: 'app-spell-list',
  templateUrl: './spell-list.component.html',
  styleUrls: ['./spell-list.component.css']
})
export class SpellListComponent implements OnInit {

  @Input() spells: Array<SpellModel>;

  constructor() { }

  ngOnInit(): void {
  }

}
