export declare module "./chats.js" {
  export type Chat = {
    time: string;
    message: string;
  }

  export function log(message: Chat[]): void;
  export const chats: Chat[];
}
