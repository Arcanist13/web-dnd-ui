export interface ISpellModel {
  id: number;
  name: string;
  school: string;
  level: number;
  ritual: number;
  cast_time: string;
  range: string;
  components: string;
  duration: string;
  description: string;
  visual: string;
  page: string;
  damage: string;
  attack_save: string;
  classes: string;
}

export interface ISpellFilter {
  name?: string;
  level?: Array<number>;
  cast_time?: Array<string>;
  ritual?: number;
}

export const CSpellCasttime = [
  "1 Action",
  "1 Bonus Action",
  "1 Reaction",
  "1 Minute",
  "10 Minutes",
  "1 Hour",
  "8 Hours",
  "12 Hours",
  "24 Hours"
]
