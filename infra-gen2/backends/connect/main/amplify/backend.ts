import { defineBackend } from '@aws-amplify/backend';
import { defineNotifications } from '@aws-amplify/backend-notifications';
import { auth } from './auth/resource';

/**
 * Integration-test backend for the Connect client (amplify_connect_client).
 *
 * `defineNotifications()` with no props runs in create-from-scratch mode: it
 * provisions a new Amazon Connect instance and Customer Profiles domain
 * (deterministic, stable names), a DynamoDB device store, and the SigV4
 * write API (/identify-user, /register-device, /remove-device). The endpoint
 * and region are surfaced under `notifications.amazon_connect` in the
 * generated outputs, which is what the client reads.
 *
 * Push channels (apns/fcm) are intentionally omitted: the integration tests
 * exercise the write API only, not push delivery, and both channels are
 * optional on the construct.
 */
defineBackend({
    auth,
    notifications: defineNotifications(),
});
