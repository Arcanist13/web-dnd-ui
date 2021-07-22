/**
 * Model for auth response
 */
export interface ITokenUser {
  info: IUser;
}

/**
 * User information
 */
export interface IUser {
  username: string;
  email: string;
  admin: number;
  created: string;
  activity: string;
  characters: string;
}

/**
 * User Registration information
 */
export interface IRegisterUser {
  username: string;
  email: string;
  password: string;
}
