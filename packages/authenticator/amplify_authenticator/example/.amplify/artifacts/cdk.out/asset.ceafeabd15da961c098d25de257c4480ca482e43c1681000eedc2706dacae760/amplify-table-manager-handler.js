"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (k !== "default" && Object.prototype.hasOwnProperty.call(mod, k)) __createBinding(result, mod, k);
    __setModuleDefault(result, mod);
    return result;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.isTtlModified = exports.toCreateTableInput = exports.extractOldTableInputFromEvent = exports.extractTableInputFromEvent = exports.getPointInTimeRecoveryUpdate = exports.getTtlUpdate = exports.getDeletionProtectionUpdate = exports.requiresTagsUpdate = exports.getSseUpdate = exports.getStreamUpdate = exports.getNextAtomicUpdate = exports.getLambdaTags = exports.isComplete = exports.onEvent = void 0;
const client_dynamodb_1 = require("@aws-sdk/client-dynamodb");
const client_lambda_1 = require("@aws-sdk/client-lambda");
const cfnResponse = __importStar(require("./cfn-response"));
const outbound_1 = require("./outbound");
const util_1 = require("./util");
const ddbClient = new client_dynamodb_1.DynamoDB();
const lambdaClient = new client_lambda_1.Lambda();
const finished = {
    IsComplete: true,
};
const notFinished = {
    IsComplete: false,
};
exports.onEvent = cfnResponse.safeHandler(onEventHandler);
exports.isComplete = cfnResponse.safeHandler(isCompleteHandler);
const getLambdaTags = async (functionArn) => {
    var _a;
    const command = new client_lambda_1.ListTagsCommand({ Resource: functionArn });
    const tags = (_a = (await lambdaClient.send(command)).Tags) !== null && _a !== void 0 ? _a : {};
    const result = [];
    Object.keys(tags).forEach((key) => {
        if (!key.startsWith('aws:cloudformation:')) {
            result.push({
                key: key,
                value: tags[key],
            });
        }
    });
    return result;
};
exports.getLambdaTags = getLambdaTags;
const getTableTags = async (tableArn) => {
    var _a;
    const command = new client_dynamodb_1.ListTagsOfResourceCommand({ ResourceArn: tableArn });
    const tags = (_a = (await ddbClient.send(command)).Tags) !== null && _a !== void 0 ? _a : [];
    return tags;
};
async function onEventHandler(cfnRequest, context) {
    const sanitizedRequest = { ...cfnRequest, ResponseURL: '[redacted]' };
    (0, util_1.log)('onEventHandler', sanitizedRequest);
    cfnRequest.ResourceProperties = cfnRequest.ResourceProperties || {};
    const onEventResult = await processOnEvent(sanitizedRequest, context);
    (0, util_1.log)('onEvent returned:', onEventResult);
    const resourceEvent = createResponseEvent(cfnRequest, onEventResult);
    if (cfnRequest.RequestType == 'Delete') {
        (0, util_1.log)('Submitting response to CloudFormation');
        await cfnResponse.submitResponse('SUCCESS', resourceEvent, { noEcho: resourceEvent.NoEcho });
    }
    else {
        const waiter = {
            stateMachineArn: (0, util_1.getEnv)('WAITER_STATE_MACHINE_ARN'),
            name: resourceEvent.RequestId,
            input: JSON.stringify(resourceEvent),
        };
        (0, util_1.log)('starting waiter', {
            stateMachineArn: waiter.stateMachineArn,
            name: resourceEvent.RequestId,
        });
        await (0, outbound_1.startExecution)(waiter);
    }
}
async function isCompleteHandler(event, context) {
    const sanitizedRequest = { ...event, ResponseURL: '[redacted]' };
    (0, util_1.log)('isComplete', sanitizedRequest);
    const isCompleteResult = await processIsComplete(sanitizedRequest, context);
    (0, util_1.log)('isComplete result', isCompleteResult);
    if (!isCompleteResult.IsComplete) {
        if (isCompleteResult.Data && Object.keys(isCompleteResult.Data).length > 0) {
            throw new Error('"Data" is not allowed if "IsComplete" is "False"');
        }
        throw new cfnResponse.Retry(JSON.stringify(event));
    }
    const response = {
        ...event,
        ...isCompleteResult,
        Data: {
            ...event.Data,
            ...isCompleteResult.Data,
        },
    };
    await cfnResponse.submitResponse('SUCCESS', response, { noEcho: event.NoEcho });
}
const processOnEvent = async (event, context) => {
    var _a, _b;
    console.log({ ...event, ResponseURL: '[redacted]' });
    const tableDef = await (0, exports.extractTableInputFromEvent)(event, context);
    console.log('Input table state: ', tableDef);
    let result;
    switch (event.RequestType) {
        case 'Create':
            console.log('Initiating CREATE event');
            const createTableInput = (0, exports.toCreateTableInput)(tableDef);
            console.log('Create Table Params: ', createTableInput);
            const response = await createNewTable(createTableInput);
            result = {
                PhysicalResourceId: response.tableName,
                Data: {
                    TableArn: response.tableArn,
                    TableStreamArn: response.streamArn,
                    TableName: response.tableName,
                },
            };
            console.log('Returning result: ', result);
            return result;
        case 'Update':
            if (!event.PhysicalResourceId) {
                throw new Error(`Could not find the physical ID for the updated resource`);
            }
            const oldTableDef = (0, exports.extractOldTableInputFromEvent)(event);
            console.log('Fetching current table state');
            const describeTableResult = await ddbClient.describeTable({ TableName: event.PhysicalResourceId });
            if (!describeTableResult.Table) {
                throw new Error(`Could not find ${event.PhysicalResourceId} to update`);
            }
            (0, util_1.log)('Current table state: ', describeTableResult);
            if (isKeySchemaModified(describeTableResult.Table.KeySchema, tableDef.keySchema)) {
                console.log('Detected table key schema change. Update requires replacement');
                if (tableDef.allowDestructiveGraphqlSchemaUpdates) {
                    return replaceTable(describeTableResult.Table, tableDef);
                }
                else {
                    throw new Error("Editing key schema of table requires replacement which will cause ALL EXISITING DATA TO BE LOST. If this is intended, set the 'allowDestructiveGraphqlSchemaUpdates' to true and deploy again.");
                }
            }
            if (tableDef.replaceTableUponGsiUpdate && tableDef.allowDestructiveGraphqlSchemaUpdates) {
                const nextUpdate = getNextGSIUpdate(describeTableResult.Table, tableDef);
                if (nextUpdate !== undefined) {
                    console.log('Detected global secondary index changes in sandbox mode with destructive updates allowed. Update requires replacement');
                    return replaceTable(describeTableResult.Table, tableDef);
                }
            }
            const currentTableTags = await getTableTags(describeTableResult.Table.TableArn);
            const newTags = [];
            Object.values((_a = tableDef.tags) !== null && _a !== void 0 ? _a : []).forEach((tag) => {
                newTags.push({ Key: tag.key, Value: tag.value });
            });
            const removeTags = [];
            currentTableTags.forEach((tag) => {
                if (!newTags.some((newTag) => newTag.Key === tag.Key)) {
                    removeTags.push(tag.Key);
                }
            });
            if (removeTags.length > 0) {
                await ddbClient.untagResource({
                    ResourceArn: describeTableResult.Table.TableArn,
                    TagKeys: removeTags,
                });
                await retry(async () => await isTableReady(event.PhysicalResourceId), (res) => res === true);
                console.log(`Table '${event.PhysicalResourceId}' is ready after the deletion of Tags.`);
            }
            if ((0, exports.requiresTagsUpdate)(currentTableTags, newTags)) {
                console.log('Detected tag changes: ', tableDef.tags);
                await ddbClient.tagResource({
                    ResourceArn: describeTableResult.Table.TableArn,
                    Tags: newTags,
                });
                await retry(async () => await isTableReady(event.PhysicalResourceId), (res) => res === true);
                console.log(`Table '${event.PhysicalResourceId}' is ready after the update of Tags.`);
            }
            const describePointInTimeRecoveryResult = await ddbClient.describeContinuousBackups({ TableName: event.PhysicalResourceId });
            console.log('Current point in time recovery: ', describePointInTimeRecoveryResult);
            const pointInTimeUpdate = (0, exports.getPointInTimeRecoveryUpdate)(describePointInTimeRecoveryResult.ContinuousBackupsDescription, tableDef);
            if (pointInTimeUpdate) {
                (0, util_1.log)('Computed point in time recovery update', pointInTimeUpdate);
                await ddbClient.updateContinuousBackups(pointInTimeUpdate);
                await retry(async () => await isTableReady(event.PhysicalResourceId), (res) => res === true);
                console.log(`Table '${event.PhysicalResourceId}' is ready after the update of PointInTimeRecovery.`);
            }
            const deletionProtectionUpdate = (0, exports.getDeletionProtectionUpdate)(describeTableResult.Table, tableDef);
            if (deletionProtectionUpdate) {
                (0, util_1.log)('Computed deletion protection update', deletionProtectionUpdate);
                await ddbClient.updateTable(deletionProtectionUpdate);
                await retry(async () => await isTableReady(event.PhysicalResourceId), (res) => res === true);
                console.log(`Table '${event.PhysicalResourceId}' is ready after the update of deletion protection.`);
            }
            const sseUpdate = (0, exports.getSseUpdate)(describeTableResult.Table, tableDef);
            if (sseUpdate) {
                (0, util_1.log)('Computed server side encryption update', sseUpdate);
                await ddbClient.updateTable(sseUpdate);
                await retry(async () => await isTableReady(event.PhysicalResourceId), (res) => res === true);
                console.log(`Table '${event.PhysicalResourceId}' is ready after the update of sever side encryption.`);
            }
            const streamUpdate = await (0, exports.getStreamUpdate)(describeTableResult.Table, tableDef);
            if (streamUpdate) {
                (0, util_1.log)('Computed stream specification update', streamUpdate);
                await ddbClient.updateTable(streamUpdate);
                await retry(async () => await isTableReady(event.PhysicalResourceId), (res) => res === true);
                console.log(`Table '${event.PhysicalResourceId}' is ready after the update of stream specificaion.`);
            }
            if ((0, exports.isTtlModified)(oldTableDef.timeToLiveSpecification, tableDef.timeToLiveSpecification)) {
                const describeTimeToLiveResult = await getTtlStatus(event.PhysicalResourceId);
                console.log('Current TTL: ', describeTimeToLiveResult);
                const ttlUpdate = (0, exports.getTtlUpdate)(describeTimeToLiveResult.TimeToLiveDescription, tableDef);
                if (ttlUpdate) {
                    (0, util_1.log)('Computed time to live update', ttlUpdate);
                    console.log('Initiating TTL update');
                    await ddbClient.updateTimeToLive(ttlUpdate);
                    result = {
                        PhysicalResourceId: event.PhysicalResourceId,
                        Data: {
                            TableArn: describeTableResult.Table.TableArn,
                            TableStreamArn: describeTableResult.Table.LatestStreamArn,
                            TableName: describeTableResult.Table.TableName,
                        },
                    };
                    return result;
                }
            }
            const nextGsiUpdate = (0, exports.getNextAtomicUpdate)(describeTableResult.Table, tableDef);
            if (nextGsiUpdate) {
                (0, util_1.log)('Computed next update', nextGsiUpdate);
                console.log('Initiating table GSI update');
                await ddbClient.updateTable(nextGsiUpdate);
            }
            result = {
                PhysicalResourceId: event.PhysicalResourceId,
                Data: {
                    TableArn: describeTableResult.Table.TableArn,
                    TableStreamArn: describeTableResult.Table.LatestStreamArn,
                    TableName: describeTableResult.Table.TableName,
                },
            };
            return result;
        case 'Delete':
            if (!event.PhysicalResourceId) {
                throw new Error(`Could not find the physical ID for the resource`);
            }
            result = {
                PhysicalResourceId: event.PhysicalResourceId,
            };
            try {
                console.log('Fetching current table state');
                const describeTableResultBeforeDeletion = await ddbClient.describeTable({ TableName: event.PhysicalResourceId });
                if ((_b = describeTableResultBeforeDeletion.Table) === null || _b === void 0 ? void 0 : _b.DeletionProtectionEnabled) {
                    return result;
                }
                console.log('Initiating table deletion');
                await ddbClient.deleteTable({ TableName: event.PhysicalResourceId });
                return result;
            }
            catch (err) {
                if (err instanceof client_dynamodb_1.ResourceNotFoundException) {
                    console.log('Table to be deleted is not found. Deletion complete.');
                    return result;
                }
                throw err;
            }
        default:
            throw new Error(`Event type ${event.RequestType} is not supported`);
    }
};
const processIsComplete = async (event, context) => {
    var _a, _b, _c;
    (0, util_1.log)('got event', { ...event, ResponseURL: '[redacted]' });
    if (event.RequestType === 'Delete') {
        console.log('Delete is finished');
        return finished;
    }
    if (!event.PhysicalResourceId) {
        throw new Error('PhysicalResourceId not set in call to isComplete');
    }
    console.log('Fetching current table state');
    const describeTableResult = await retry(async () => await ddbClient.describeTable({ TableName: event.PhysicalResourceId }), (result) => !!(result === null || result === void 0 ? void 0 : result.Table));
    if (((_a = describeTableResult.Table) === null || _a === void 0 ? void 0 : _a.TableStatus) !== 'ACTIVE') {
        console.log('Table not active yet');
        return notFinished;
    }
    if ((_b = describeTableResult.Table.GlobalSecondaryIndexes) === null || _b === void 0 ? void 0 : _b.some((gsi) => gsi.IndexStatus !== 'ACTIVE' || gsi.Backfilling)) {
        console.log('Some GSI is not active yet');
        return notFinished;
    }
    const endState = await (0, exports.extractTableInputFromEvent)(event, context);
    if (event.RequestType === 'Create' || ((_c = event.Data) === null || _c === void 0 ? void 0 : _c.IsTableReplaced) === true) {
        const describePointInTimeRecoveryResult = await ddbClient.describeContinuousBackups({ TableName: event.PhysicalResourceId });
        const pointInTimeUpdate = (0, exports.getPointInTimeRecoveryUpdate)(describePointInTimeRecoveryResult.ContinuousBackupsDescription, endState);
        if (pointInTimeUpdate) {
            console.log('Updating table with point in time recovery enabled');
            await ddbClient.updateContinuousBackups(pointInTimeUpdate);
            return notFinished;
        }
        if (endState.timeToLiveSpecification && endState.timeToLiveSpecification.enabled) {
            const describeTimeToLiveResult = await getTtlStatus(event.PhysicalResourceId);
            const ttlUpdate = (0, exports.getTtlUpdate)(describeTimeToLiveResult.TimeToLiveDescription, endState);
            if (ttlUpdate) {
                console.log('Updating table with TTL enabled');
                await ddbClient.updateTimeToLive(ttlUpdate);
                return notFinished;
            }
        }
        console.log('Create is finished');
        return finished;
    }
    const nextUpdate = (0, exports.getNextAtomicUpdate)(describeTableResult.Table, endState);
    (0, util_1.log)('Computed next update', nextUpdate);
    if (!nextUpdate) {
        console.log('No additional updates needed. Update finished');
        return finished;
    }
    console.log('Initiating table update');
    await ddbClient.updateTable(nextUpdate);
    return notFinished;
};
const replaceTable = async (currentState, endState) => {
    if (currentState.DeletionProtectionEnabled === true) {
        throw new Error('Table cannot be replaced when the deletion protection is enabled.');
    }
    console.log('Deleting the old table');
    await ddbClient.deleteTable({ TableName: currentState.TableName });
    await retry(async () => await doesTableExist(currentState.TableName), (res) => res === false);
    console.log(`Table '${currentState.TableName}' does not exist. Deletion is finished.`);
    const createTableInput = (0, exports.toCreateTableInput)(endState);
    console.log('Creating the new table');
    const response = await createNewTable(createTableInput);
    const result = {
        PhysicalResourceId: response.tableName,
        Data: {
            TableArn: response.tableArn,
            TableStreamArn: response.streamArn,
            TableName: response.tableName,
            IsTableReplaced: true,
        },
    };
    (0, util_1.log)('Returning result', result);
    return result;
};
const createResponseEvent = (cfnRequest, onEventResult) => {
    onEventResult = onEventResult || {};
    const physicalResourceId = onEventResult.PhysicalResourceId || defaultPhysicalResourceId(cfnRequest);
    if (cfnRequest.RequestType === 'Delete' && physicalResourceId != cfnRequest.PhysicalResourceId) {
        throw new Error(`DELETE: cannot change the physical resource ID from "${cfnRequest.PhysicalResourceId} to "${onEventResult.PhysicalResourceId}" during deletion"`);
    }
    if (cfnRequest.RequestType === 'Update' && physicalResourceId !== cfnRequest.PhysicalResourceId) {
        (0, util_1.log)(`UPDATE: changing physical resource ID from "${cfnRequest.PhysicalResourceId}" to "${onEventResult.PhysicalResourceId}"`);
    }
    return {
        ...cfnRequest,
        ...onEventResult,
        PhysicalResourceId: physicalResourceId,
    };
};
const defaultPhysicalResourceId = (req) => {
    switch (req.RequestType) {
        case 'Create':
            return req.RequestId;
        case 'Update':
        case 'Delete':
            return req.PhysicalResourceId;
        default:
            throw new Error(`Invalid "RequestType" in request "${JSON.stringify(req)}"`);
    }
};
const getNextAtomicUpdate = (currentState, endState) => {
    var _a, _b, _c, _d, _e, _f, _g, _h, _j, _k, _l;
    const currentStateGSIs = currentState.GlobalSecondaryIndexes || [];
    const isTableBillingModeModified = (((_a = currentState.BillingModeSummary) === null || _a === void 0 ? void 0 : _a.BillingMode) !== undefined && ((_b = currentState.BillingModeSummary) === null || _b === void 0 ? void 0 : _b.BillingMode) !== endState.billingMode) ||
        (((_c = currentState.BillingModeSummary) === null || _c === void 0 ? void 0 : _c.BillingMode) == undefined && endState.billingMode === 'PAY_PER_REQUEST');
    const isTableProvisionThroughputModified = (((_d = endState.provisionedThroughput) === null || _d === void 0 ? void 0 : _d.readCapacityUnits) !== undefined &&
        ((_e = currentState.ProvisionedThroughput) === null || _e === void 0 ? void 0 : _e.ReadCapacityUnits) !== ((_f = endState.provisionedThroughput) === null || _f === void 0 ? void 0 : _f.readCapacityUnits)) ||
        (((_g = endState.provisionedThroughput) === null || _g === void 0 ? void 0 : _g.writeCapacityUnits) !== undefined &&
            ((_h = currentState.ProvisionedThroughput) === null || _h === void 0 ? void 0 : _h.WriteCapacityUnits) !== ((_j = endState.provisionedThroughput) === null || _j === void 0 ? void 0 : _j.writeCapacityUnits));
    if (isTableBillingModeModified || isTableProvisionThroughputModified) {
        let updateInput = {
            TableName: currentState.TableName,
            BillingMode: isTableBillingModeModified ? endState.billingMode : undefined,
            ProvisionedThroughput: isTableProvisionThroughputModified && endState.billingMode === 'PROVISIONED'
                ? {
                    ReadCapacityUnits: (_k = endState.provisionedThroughput) === null || _k === void 0 ? void 0 : _k.readCapacityUnits,
                    WriteCapacityUnits: (_l = endState.provisionedThroughput) === null || _l === void 0 ? void 0 : _l.writeCapacityUnits,
                }
                : undefined,
        };
        if (isTableBillingModeModified && endState.billingMode === 'PROVISIONED') {
            const indexToBeUpdated = currentStateGSIs.map((gsiToUpdate) => {
                var _a, _b;
                return {
                    Update: {
                        IndexName: gsiToUpdate.IndexName,
                        ProvisionedThroughput: {
                            ReadCapacityUnits: (_a = endState.provisionedThroughput) === null || _a === void 0 ? void 0 : _a.readCapacityUnits,
                            WriteCapacityUnits: (_b = endState.provisionedThroughput) === null || _b === void 0 ? void 0 : _b.writeCapacityUnits,
                        },
                    },
                };
            });
            updateInput = {
                ...updateInput,
                GlobalSecondaryIndexUpdates: indexToBeUpdated.length > 0 ? indexToBeUpdated : undefined,
            };
        }
        return parsePropertiesToDynamoDBInput(updateInput);
    }
    return getNextGSIUpdate(currentState, endState);
};
exports.getNextAtomicUpdate = getNextAtomicUpdate;
const getNextGSIUpdate = (currentState, endState) => {
    var _a, _b, _c, _d, _e;
    const endStateGSIs = endState.globalSecondaryIndexes || [];
    const endStateGSINames = endStateGSIs.map((gsi) => gsi.indexName);
    const modifiedAttributes = getTypeModifiedAttributes(currentState.AttributeDefinitions, endState.attributeDefinitions);
    const indexesWithModifiedAttributeType = getIndexesContainingAttributes(currentState.GlobalSecondaryIndexes, modifiedAttributes);
    const currentStateGSIs = currentState.GlobalSecondaryIndexes || [];
    const currentStateGSINames = currentStateGSIs.map((gsi) => gsi.IndexName);
    const gsiRequiresReplacementPredicate = (currentGSI) => {
        if (!endStateGSINames.includes(currentGSI.IndexName))
            return true;
        if (indexesWithModifiedAttributeType.includes(currentGSI.IndexName))
            return true;
        const respectiveEndStateGSI = endStateGSIs.find((endStateGSI) => endStateGSI.indexName === currentGSI.IndexName);
        if (isProjectionModified(currentGSI.Projection, respectiveEndStateGSI.projection))
            return true;
        if (isKeySchemaModified(currentGSI.KeySchema, respectiveEndStateGSI.keySchema))
            return true;
        return false;
    };
    const gsiToRemove = currentStateGSIs.find(gsiRequiresReplacementPredicate);
    if (gsiToRemove) {
        return {
            TableName: currentState.TableName,
            GlobalSecondaryIndexUpdates: [
                {
                    Delete: {
                        IndexName: gsiToRemove.IndexName,
                    },
                },
            ],
        };
    }
    const gsiRequiresCreationPredicate = (endStateGSI) => !currentStateGSINames.includes(endStateGSI.indexName);
    const gsiToAdd = endStateGSIs.find(gsiRequiresCreationPredicate);
    if (gsiToAdd) {
        let gsiProvisionThroughput = gsiToAdd.provisionedThroughput;
        if (endState.billingMode === 'PROVISIONED' && gsiToAdd.provisionedThroughput === undefined) {
            gsiProvisionThroughput = {
                readCapacityUnits: (_a = endState.provisionedThroughput) === null || _a === void 0 ? void 0 : _a.readCapacityUnits,
                writeCapacityUnits: (_b = endState.provisionedThroughput) === null || _b === void 0 ? void 0 : _b.writeCapacityUnits,
            };
        }
        const attributeNamesToInclude = gsiToAdd.keySchema.map((schema) => schema.attributeName);
        const gsiToAddAction = {
            IndexName: gsiToAdd.indexName,
            KeySchema: gsiToAdd.keySchema,
            Projection: gsiToAdd.projection,
            ProvisionedThroughput: gsiProvisionThroughput,
        };
        return {
            TableName: currentState.TableName,
            AttributeDefinitions: (_c = endState.attributeDefinitions) === null || _c === void 0 ? void 0 : _c.filter((def) => attributeNamesToInclude.includes(def.attributeName)).map((def) => usePascalCaseForObjectKeys(def)),
            GlobalSecondaryIndexUpdates: [
                {
                    Create: parsePropertiesToDynamoDBInput(gsiToAddAction),
                },
            ],
        };
    }
    const gsiRequiresUpdatePredicate = (endStateGSI) => {
        var _a, _b, _c, _d;
        if (endState.provisionedThroughput &&
            endState.provisionedThroughput.readCapacityUnits &&
            endState.provisionedThroughput.writeCapacityUnits &&
            currentStateGSINames.includes(endStateGSI.indexName)) {
            const currentStateGSI = currentStateGSIs.find((gsi) => gsi.IndexName === endStateGSI.indexName);
            if (currentStateGSI) {
                if (((_a = currentStateGSI.ProvisionedThroughput) === null || _a === void 0 ? void 0 : _a.ReadCapacityUnits) !== ((_b = endStateGSI.provisionedThroughput) === null || _b === void 0 ? void 0 : _b.readCapacityUnits) ||
                    ((_c = currentStateGSI.ProvisionedThroughput) === null || _c === void 0 ? void 0 : _c.WriteCapacityUnits) !== ((_d = endStateGSI.provisionedThroughput) === null || _d === void 0 ? void 0 : _d.writeCapacityUnits)) {
                    return true;
                }
            }
        }
        return false;
    };
    const gsiToUpdate = endStateGSIs.find(gsiRequiresUpdatePredicate);
    if (gsiToUpdate) {
        return {
            TableName: currentState.TableName,
            GlobalSecondaryIndexUpdates: [
                {
                    Update: {
                        IndexName: gsiToUpdate.indexName,
                        ProvisionedThroughput: {
                            ReadCapacityUnits: (_d = gsiToUpdate.provisionedThroughput) === null || _d === void 0 ? void 0 : _d.readCapacityUnits,
                            WriteCapacityUnits: (_e = gsiToUpdate.provisionedThroughput) === null || _e === void 0 ? void 0 : _e.writeCapacityUnits,
                        },
                    },
                },
            ],
        };
    }
    return undefined;
};
const getStreamUpdate = async (currentState, endState) => {
    var _a, _b, _c, _d, _e, _f;
    let streamUpdate;
    if (((_a = endState.streamSpecification) === null || _a === void 0 ? void 0 : _a.streamViewType) !== undefined &&
        (currentState.StreamSpecification === undefined || currentState.StreamSpecification.StreamEnabled === false)) {
        streamUpdate = { StreamEnabled: true, StreamViewType: endState.streamSpecification.streamViewType };
    }
    else if (((_b = endState.streamSpecification) === null || _b === void 0 ? void 0 : _b.streamViewType) === undefined && ((_c = currentState.StreamSpecification) === null || _c === void 0 ? void 0 : _c.StreamEnabled) === true) {
        streamUpdate = { StreamEnabled: false };
    }
    else if (((_d = currentState.StreamSpecification) === null || _d === void 0 ? void 0 : _d.StreamEnabled) === true &&
        ((_e = endState.streamSpecification) === null || _e === void 0 ? void 0 : _e.streamViewType) !== undefined &&
        currentState.StreamSpecification.StreamViewType !== ((_f = endState.streamSpecification) === null || _f === void 0 ? void 0 : _f.streamViewType)) {
        console.log('Detect stream view type is changed. Disabling stream before the type change.');
        await ddbClient.updateTable({
            TableName: currentState.TableName,
            StreamSpecification: { StreamEnabled: false },
        });
        await retry(async () => await isTableReady(currentState.TableName), (res) => res === true);
        streamUpdate = { StreamEnabled: true, StreamViewType: endState.streamSpecification.streamViewType };
    }
    if (streamUpdate) {
        return {
            TableName: currentState.TableName,
            StreamSpecification: streamUpdate,
        };
    }
    return undefined;
};
exports.getStreamUpdate = getStreamUpdate;
const getSseUpdate = (currentState, endState) => {
    var _a, _b, _c;
    let sseUpdate;
    if (currentState.SSEDescription) {
        if (!((_a = endState.sseSpecification) === null || _a === void 0 ? void 0 : _a.sseEnabled)) {
            sseUpdate = {
                Enabled: false,
            };
        }
        else if (((_b = endState.sseSpecification) === null || _b === void 0 ? void 0 : _b.sseEnabled) === true &&
            endState.sseSpecification.sseType !== undefined &&
            endState.sseSpecification.sseType !== currentState.SSEDescription.SSEType) {
            sseUpdate = {
                Enabled: true,
                SSEType: endState.sseSpecification.sseType,
                KMSMasterKeyId: endState.sseSpecification.kmsMasterKeyId,
            };
        }
    }
    else {
        if ((_c = endState.sseSpecification) === null || _c === void 0 ? void 0 : _c.sseEnabled) {
            sseUpdate = {
                Enabled: true,
                SSEType: endState.sseSpecification.sseType,
                KMSMasterKeyId: endState.sseSpecification.kmsMasterKeyId,
            };
        }
    }
    if (sseUpdate) {
        return parsePropertiesToDynamoDBInput({
            TableName: currentState.TableName,
            SSESpecification: sseUpdate,
        });
    }
    return undefined;
};
exports.getSseUpdate = getSseUpdate;
const requiresTagsUpdate = (currentTags, newTags) => {
    if (!newTags || newTags.length === 0) {
        return false;
    }
    if (currentTags.length !== newTags.length) {
        return true;
    }
    for (const newTag of newTags) {
        if (!currentTags.find((currentTag) => currentTag.Key === newTag.Key)) {
            return true;
        }
        else {
            const currentTag = currentTags.find((tag) => tag.Key === newTag.Key);
            if ((currentTag === null || currentTag === void 0 ? void 0 : currentTag.Value) !== newTag.Value) {
                return true;
            }
        }
    }
    return false;
};
exports.requiresTagsUpdate = requiresTagsUpdate;
const getDeletionProtectionUpdate = (currentState, endState) => {
    if (endState.deletionProtectionEnabled !== undefined && currentState.DeletionProtectionEnabled !== endState.deletionProtectionEnabled) {
        return {
            TableName: currentState.TableName,
            DeletionProtectionEnabled: endState.deletionProtectionEnabled,
        };
    }
    else if (endState.deletionProtectionEnabled === undefined && currentState.DeletionProtectionEnabled === true) {
        return {
            TableName: currentState.TableName,
            DeletionProtectionEnabled: false,
        };
    }
    return undefined;
};
exports.getDeletionProtectionUpdate = getDeletionProtectionUpdate;
const getTtlUpdate = (currentTTL, endState) => {
    const endTTL = endState.timeToLiveSpecification;
    if (currentTTL && currentTTL.TimeToLiveStatus) {
        if (currentTTL.TimeToLiveStatus === 'ENABLED' && currentTTL.AttributeName) {
            if (!endTTL || !endTTL.enabled) {
                return {
                    TableName: endState.tableName,
                    TimeToLiveSpecification: {
                        Enabled: false,
                        AttributeName: currentTTL.AttributeName,
                    },
                };
            }
            else if (currentTTL.AttributeName !== endTTL.attributeName) {
                return {
                    TableName: endState.tableName,
                    TimeToLiveSpecification: {
                        Enabled: true,
                        AttributeName: endTTL.attributeName,
                    },
                };
            }
        }
        else if (currentTTL.TimeToLiveStatus === 'DISABLED' && endTTL && endTTL.enabled) {
            return {
                TableName: endState.tableName,
                TimeToLiveSpecification: {
                    Enabled: true,
                    AttributeName: endTTL.attributeName,
                },
            };
        }
    }
    return undefined;
};
exports.getTtlUpdate = getTtlUpdate;
const getPointInTimeRecoveryUpdate = (currentPointInTime, endState) => {
    var _a, _b;
    if (!currentPointInTime) {
        return undefined;
    }
    const currentStatus = (_a = currentPointInTime.PointInTimeRecoveryDescription) === null || _a === void 0 ? void 0 : _a.PointInTimeRecoveryStatus;
    const endStatus = (_b = endState.pointInTimeRecoverySpecification) === null || _b === void 0 ? void 0 : _b.pointInTimeRecoveryEnabled;
    if (endStatus === undefined || endStatus === false) {
        if (currentStatus === 'ENABLED') {
            return {
                TableName: endState.tableName,
                PointInTimeRecoverySpecification: {
                    PointInTimeRecoveryEnabled: false,
                },
            };
        }
    }
    else {
        if (currentStatus === 'DISABLED') {
            return {
                TableName: endState.tableName,
                PointInTimeRecoverySpecification: {
                    PointInTimeRecoveryEnabled: true,
                },
            };
        }
    }
    return undefined;
};
exports.getPointInTimeRecoveryUpdate = getPointInTimeRecoveryUpdate;
const extractTableInputFromEvent = async (event, context) => {
    const tags = await (0, exports.getLambdaTags)(context.invokedFunctionArn);
    const resourceProperties = {
        ...event.ResourceProperties,
        ...(tags.length > 0 && { tags }),
    };
    delete resourceProperties.ServiceToken;
    const tableDef = convertStringToBooleanOrNumber(resourceProperties);
    return tableDef;
};
exports.extractTableInputFromEvent = extractTableInputFromEvent;
const extractOldTableInputFromEvent = (event) => {
    const resourceProperties = { ...event.OldResourceProperties };
    delete resourceProperties.ServiceToken;
    const tableDef = convertStringToBooleanOrNumber(resourceProperties);
    return tableDef;
};
exports.extractOldTableInputFromEvent = extractOldTableInputFromEvent;
const parsePropertiesToDynamoDBInput = (obj) => {
    return usePascalCaseForObjectKeys(removeUndefinedAttributes(obj));
};
const usePascalCaseForObjectKeys = (obj) => {
    const result = {};
    for (const key in obj) {
        if (obj.hasOwnProperty(key) && key !== '') {
            const capitalizedKey = key.charAt(0).toUpperCase() + key.slice(1);
            const value = obj[key];
            if (Array.isArray(value)) {
                result[capitalizedKey] = value.map((v) => usePascalCaseForObjectKeys(v));
            }
            else if (typeof value === 'object' && value !== null) {
                result[capitalizedKey] = usePascalCaseForObjectKeys(value);
            }
            else {
                result[capitalizedKey] = value;
            }
        }
    }
    return result;
};
const convertStringToBooleanOrNumber = (obj) => {
    const fieldsToBeConvertedToBoolean = [
        'deletionProtectionEnabled',
        'enabled',
        'sseEnabled',
        'pointInTimeRecoveryEnabled',
        'allowDestructiveGraphqlSchemaUpdates',
        'replaceTableUponGsiUpdate',
    ];
    const fieldsToBeConvertedToNumber = ['readCapacityUnits', 'writeCapacityUnits'];
    for (const key in obj) {
        if (Array.isArray(obj[key])) {
            obj[key] = obj[key].map((o) => convertStringToBooleanOrNumber(o));
        }
        else if (typeof obj[key] === 'object') {
            obj[key] = convertStringToBooleanOrNumber(obj[key]);
        }
        else if (typeof obj[key] === 'string') {
            if ((obj[key] === 'true' || obj[key] === 'false') && fieldsToBeConvertedToBoolean.includes(key)) {
                obj[key] = obj[key] === 'true';
            }
            else if (!isNaN(Number(obj[key])) && fieldsToBeConvertedToNumber.includes(key)) {
                obj[key] = Number(obj[key]);
            }
        }
    }
    return obj;
};
const removeUndefinedAttributes = (obj) => {
    for (const key in obj) {
        if (Array.isArray(obj[key])) {
            obj[key].map((o) => removeUndefinedAttributes(o));
        }
        else if (typeof obj[key] === 'object') {
            removeUndefinedAttributes(obj[key]);
        }
        else if (obj[key] === undefined) {
            delete obj[key];
        }
    }
    return obj;
};
const toCreateTableInput = (props) => {
    const createTableInput = {
        TableName: props.tableName,
        AttributeDefinitions: props.attributeDefinitions,
        KeySchema: props.keySchema,
        GlobalSecondaryIndexes: props.globalSecondaryIndexes,
        BillingMode: props.billingMode,
        StreamSpecification: props.streamSpecification
            ? {
                StreamEnabled: true,
                StreamViewType: props.streamSpecification.streamViewType,
            }
            : undefined,
        ProvisionedThroughput: props.provisionedThroughput,
        SSESpecification: props.sseSpecification ? { Enabled: props.sseSpecification.sseEnabled } : undefined,
        DeletionProtectionEnabled: props.deletionProtectionEnabled,
        Tags: props.tags,
    };
    return parsePropertiesToDynamoDBInput(createTableInput);
};
exports.toCreateTableInput = toCreateTableInput;
const createNewTable = async (input) => {
    var _a;
    const tableName = input.TableName;
    const createTableInput = input;
    const result = await ddbClient.createTable(createTableInput);
    return { tableName: tableName, tableArn: result.TableDescription.TableArn, streamArn: (_a = result.TableDescription) === null || _a === void 0 ? void 0 : _a.LatestStreamArn };
};
const doesTableExist = async (tableName) => {
    try {
        await ddbClient.describeTable({ TableName: tableName });
        return true;
    }
    catch (error) {
        if (error instanceof client_dynamodb_1.ResourceNotFoundException) {
            return false;
        }
        throw error;
    }
};
const isTableReady = async (tableName) => {
    var _a, _b;
    const result = await ddbClient.describeTable({ TableName: tableName });
    if (((_a = result.Table) === null || _a === void 0 ? void 0 : _a.TableStatus) !== 'ACTIVE') {
        console.log('Table not active yet');
        return false;
    }
    if ((_b = result.Table.GlobalSecondaryIndexes) === null || _b === void 0 ? void 0 : _b.some((gsi) => gsi.IndexStatus !== 'ACTIVE' || gsi.Backfilling)) {
        console.log('Some GSI is not active yet');
        return false;
    }
    return true;
};
const isProjectionModified = (currentProjection, endProjection) => {
    if (currentProjection.ProjectionType !== endProjection.projectionType)
        return true;
    if (currentProjection.ProjectionType === 'ALL')
        return false;
    const currentNonKeyAttributes = currentProjection.NonKeyAttributes || [];
    const endNonKeyAttributes = endProjection.nonKeyAttributes || [];
    if (currentNonKeyAttributes.length !== endNonKeyAttributes.length)
        return true;
    if (currentNonKeyAttributes.some((currentNonKeyAttribute) => !endNonKeyAttributes.includes(currentNonKeyAttribute)))
        return true;
    return false;
};
const isKeySchemaModified = (currentSchema, endSchema) => {
    const currentHashKey = currentSchema.find((schema) => schema.KeyType === 'HASH');
    const endHashKey = endSchema.find((schema) => schema.keyType === 'HASH');
    if ((currentHashKey === null || currentHashKey === void 0 ? void 0 : currentHashKey.AttributeName) !== (endHashKey === null || endHashKey === void 0 ? void 0 : endHashKey.attributeName))
        return true;
    const currentSortKey = currentSchema.find((schema) => schema.KeyType === 'RANGE');
    const endSortKey = endSchema.find((schema) => schema.keyType === 'RANGE');
    if (currentSortKey === undefined && endSortKey === undefined)
        return false;
    if ((currentSortKey === undefined && endSortKey !== undefined) || (currentSortKey !== undefined && endSortKey === undefined))
        return true;
    if ((currentSortKey === null || currentSortKey === void 0 ? void 0 : currentSortKey.AttributeName) !== (endSortKey === null || endSortKey === void 0 ? void 0 : endSortKey.attributeName))
        return true;
    return false;
};
const getTypeModifiedAttributes = (currentSchema, endSchema) => {
    const result = [];
    if (!currentSchema || !endSchema)
        return result;
    for (const attribute of currentSchema) {
        const endAttribute = endSchema.find((endAttr) => endAttr.attributeName === attribute.AttributeName);
        if (!endAttribute)
            continue;
        if (attribute.AttributeType !== endAttribute.attributeType) {
            result.push(attribute.AttributeName);
        }
    }
    return result;
};
const getIndexesContainingAttributes = (currentSchema, attributes) => {
    if (!currentSchema)
        return [];
    const result = currentSchema
        .filter((index) => index.IndexStatus === 'ACTIVE')
        .filter((index) => { var _a; return (_a = index.KeySchema) === null || _a === void 0 ? void 0 : _a.some((key) => attributes.includes(key.AttributeName)); })
        .map((index) => index.IndexName);
    return result !== null && result !== void 0 ? result : [];
};
const isTtlModified = (oldTtl, endTtl) => {
    if (oldTtl === undefined && endTtl === undefined) {
        return false;
    }
    if (oldTtl === undefined || endTtl === undefined) {
        return true;
    }
    return oldTtl.enabled !== endTtl.enabled || oldTtl.attributeName !== endTtl.attributeName;
};
exports.isTtlModified = isTtlModified;
const getTtlStatus = async (tableName) => {
    const initialDelay = Math.floor(Math.random() * 5 * 1000);
    console.log(`Waiting for ${initialDelay} ms`);
    await sleep(initialDelay);
    const describeTimeToLiveResult = retry(async () => await ddbClient.describeTimeToLive({ TableName: tableName }), () => true, {
        times: 5,
        delayMS: 1000,
        exponentialBackoff: true,
    });
    return describeTimeToLiveResult;
};
const defaultSettings = {
    times: Infinity,
    delayMS: 1000 * 15,
    timeoutMS: 1000 * 60 * 14,
    stopOnError: false,
    exponentialBackoff: false,
};
const retry = async (func, successPredicate, settings, failurePredicate) => {
    const { times, delayMS, timeoutMS, stopOnError, exponentialBackoff } = {
        ...defaultSettings,
        ...settings,
    };
    let count = 0;
    let result;
    let terminate = false;
    const startTime = Date.now();
    do {
        try {
            result = await func();
            if (successPredicate(result)) {
                return result;
            }
            if (typeof failurePredicate === 'function' && failurePredicate(result)) {
                throw new Error('Retry-able function execution result matched failure predicate. Stopping retries.');
            }
            console.warn(`Retry-able function execution did not match success predicate. Result was [${JSON.stringify(result)}]. Retrying...`);
        }
        catch (err) {
            console.warn(`Retry-able function execution failed with [${err.message || err}]`);
            if (stopOnError) {
                console.log('Stopping retries on error.');
            }
            else {
                console.log('Retrying...');
            }
            terminate = stopOnError;
        }
        count++;
        const sleepTime = exponentialBackoff ? delayMS * Math.pow(2, count - 1) : delayMS;
        await sleep(sleepTime);
    } while (!terminate && count <= times && Date.now() - startTime < timeoutMS);
    throw new Error('Retry-able function did not match predicate within the given retry constraints');
};
const sleep = async (milliseconds) => new Promise((resolve) => setTimeout(resolve, milliseconds));
//# sourceMappingURL=amplify-table-manager-handler.js.map