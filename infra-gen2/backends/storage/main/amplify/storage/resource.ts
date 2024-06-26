import { defineStorage } from "@aws-amplify/backend";

export const storage = defineStorage({
  name: "Storage Integ Test main",
  access: (allow) => ({
    "public/*": [
      allow.guest.to(["read", "write", "delete"]),
      allow.authenticated.to(["read", "delete", "write"]),
    ],
    "protected/*": [
      allow.guest.to(["read"]),
      allow.authenticated.to(["read", "delete", "write"]),
    ],
    "private/*": [allow.authenticated.to(["read", "delete", "write"])],
  }),
});
