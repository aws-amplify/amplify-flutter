import { defineStorage } from "@aws-amplify/backend";

export const storage = defineStorage({
  name: "Storage Integ Test",
  access: (allow) => ({
    "Bucket/*": [
      allow.guest.to(["read"]),
      allow.authenticated.to(["read", "delete", "write"]),
    ],
  }),
});
