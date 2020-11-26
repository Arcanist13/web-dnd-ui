import { ChangeDetectorRef, Component, OnInit } from '@angular/core';
import { SpellModel } from 'src/app/shared/models/spell.model';
import { SpellService } from 'src/app/shared/services/spell.service';

@Component({
  selector: 'app-spells',
  templateUrl: './spells.component.html',
  styleUrls: ['./spells.component.css']
})
export class SpellsComponent implements OnInit {

  spells: Array<SpellModel>;

  constructor(
    private _spellService: SpellService,
    private _cd: ChangeDetectorRef
  ) {
    this.spells = [];

    this._spellService.getSpells().subscribe((result: Array<SpellModel>) => {
      this.spells = result;
    });
  }

  ngOnInit(): void {

  }

}
