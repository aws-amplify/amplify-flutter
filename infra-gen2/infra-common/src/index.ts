import { addAnalyticsExtensions } from "./analytics-extensions/analytics-extensions";
import { addAuthUserExtensions } from "./auth-user-extensions/auth-user-extensions";
import { addKinesisTestResources } from "./kinesis-extensions/kinesis-test-resources";
import { preSignUpTriggerHandler } from "./lambda-triggers/pre-sign-up";

export {
    addAnalyticsExtensions,
    addAuthUserExtensions,
    addKinesisTestResources,
    preSignUpTriggerHandler
};

