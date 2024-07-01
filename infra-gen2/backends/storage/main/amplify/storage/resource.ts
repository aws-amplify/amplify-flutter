import { defineStorage } from "@aws-amplify/backend";

export const storage = defineStorage({
  name: "Storage Integ Test main",
  access: (allow) => ({
    "public/*": [
      allow.guest.to(["read", "write", "delete"]),
      allow.authenticated.to(["read", "delete", "write"]),
    ],
    "protected/{entity_id}/*": [
      allow.authenticated.to(["read"]),
      allow.entity("identity").to(["read", "write", "delete"]),
    ],
    "private/{entity_id}/*": [
      allow.entity("identity").to(["read", "write", "delete"]),
    ],
  }),
});
