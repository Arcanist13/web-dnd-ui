import { Component, Input, OnInit } from '@angular/core';
import { SpellModalService } from 'src/app/modules/spells/services/spell-modal.service';
import { SpellModel } from '../../models/spell.model';

@Component({
  selector: 'app-spell-list',
  templateUrl: './spell-list.component.html',
  styleUrls: ['./spell-list.component.css']
})
export class SpellListComponent implements OnInit {

  @Input() spells!: Array<SpellModel>;
  @Input() leveled!: boolean;

  constructor(private _spellModalService: SpellModalService) {}

  ngOnInit(): void {
  }

  /**
   * Trigger a spell modal popup
   *
   * @param id  spell id
   */
  openSpellModal(id: number): void {
    this._spellModalService.openSpellModal(id);
  }

}
