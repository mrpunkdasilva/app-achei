export interface User {
  id: string;
  fullName: string;
  email: string;
  avatar?: string;
  accessLevel: 'common' | 'admin';
}
