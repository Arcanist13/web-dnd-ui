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
  damage_type: string;
  save_type: string;
  classes: string;
  attack_type: string;
  condition_type: string;
  concentration: number;
};

export interface IFavouriteSpell {
  id: number;
  spell_id: number;
  character_id: number;
};

export interface ISpellFilter {
  name?: string;
  level?: Array<number>;
  cast_time?: Array<string>;
  ritual?: number;
  damage_type?: Array<string>;
  save_type?: Array<string>;
  attack_type?: Array<string>;
  condition_type?: Array<string>;
  school?: Array<string>;
  concentration?: number;
};

export const CSpellLevel = [...Array(10).keys()];

export const CSpellBoolean = [0,1];

export const CSpellCasttime = [
  '1 Action',
  '1 Bonus Action',
  '1 Reaction',
  '1 Minute',
  '10 Minutes',
  '1 Hour',
  '8 Hours',
  '12 Hours',
  '24 Hours'
];

export const CSpellAttack = [
  'Melee',
  'Ranged'
];

export const CSpellDamage = [
  'Acid',
  'Bludgeoning',
  'Cold',
  'Fire',
  'Force',
  'Lightning',
  'Necrotic',
  'Piercing',
  'Poison',
  'Psychic',
  'Radiant',
  'Slashing',
  'Thunder'
];

export const CSpellSave = [
  'Dexterity',
  'Strength',
  'Constitution',
  'Intelligence',
  'Charisma',
  'Wisdom'
];

export const CSpellCondition = [
  'Blinded',
  'Charmed',
  'Deafened',
  'Exhaustion',
  'Frightened',
  'Grappled',
  'Incapacitated',
  'Invisible',
  'Paralyzed',
  'Petrified',
  'Poisoned',
  'Prone',
  'Restrained',
  'Stunned',
  'Unconscious'
];

export const CSpellSchool = [
  'Abjuration' ,
  'Conjuration',
  'Divination',
  'Enchantment',
  'Evocation',
  'Illusion',
  'Necromancy',
  'Transmutation'
];
