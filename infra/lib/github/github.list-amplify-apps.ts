/**
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

import { Amplify, App } from '@aws-sdk/client-amplify';
import type * as lambda from 'aws-lambda';

const AMPLIFY = new Amplify();

export const handler: lambda.CdkCustomResourceHandler = async (event) => {
    console.log(`Got event: ${JSON.stringify(event, null, 2)}`);

    const appNames = event.ResourceProperties['appNames'] as Record<string, string> | undefined;
    if (!appNames) {
        throw new Error('Missing app names');
    }

    const allApps: App[] = [];
    let nextToken: string | undefined;
    do {
        const listRes = await AMPLIFY.listApps({
            nextToken,
        });
        for (const app of listRes.apps ?? []) {
            allApps.push(app);
        }
        nextToken = listRes.nextToken;
    } while (nextToken);

    const appIds = Object.fromEntries(
        Object.entries(appNames).map(([category, name]) => {
            const app = allApps.filter((app) => app.name === name)[0];
            if (!app) {
                throw new Error(`Could not find app for name: ${name}`);
            }
            return [category, app.appId];
        }),
    );

    return {
        Data: { ...appIds }
    };
};
