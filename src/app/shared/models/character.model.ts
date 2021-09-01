export interface ICharacter extends ICharacterData {
  id: number;
}

export interface ICharacterData {
  name: string;
  user_id: number;
  campaign_id: number;
  race_id: number;
  class_id: number;
  level: number;
  description?: string;
  age?: number;
  sub_race_id?: number;
  archetype_id?: number;
}
