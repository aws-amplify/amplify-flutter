/**
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

import { S3 } from '@aws-sdk/client-s3';
import type * as lambda from 'aws-lambda';

type EnvironmentConfig = {
    environmentName: string;
    config: Record<string, unknown>;
}

const BUCKET = process.env.BUCKET!;
const s3 = new S3({});

export const handler: lambda.Handler = async (event) => {
    console.log(`Got event: ${JSON.stringify(event, null, 2)}`);
    await createConfig(BUCKET);
};

const createConfig = async (bucket: string) => {
    const { Contents: environments } = await s3.listObjectsV2({
        Bucket: bucket,
        Prefix: 'environments/',
    });
    console.log(`Found environments: ${JSON.stringify(environments)}`);
    const environmentKeys = environments!.map((entry) => entry.Key!);
    const environmentConfigs = await Promise.all(
        environmentKeys.map((key) => downloadEnvironmentConfig(bucket, key)),
    );

    let amplifyconfiguration = 'const amplifyEnvironments = <String, String>{';
    for (const { environmentName, config } of environmentConfigs) {
        amplifyconfiguration += `
'${environmentName}': '''${JSON.stringify(config, null, 2)}''',`;
    }

    const mainConfigs = environmentConfigs.filter((config) => config.environmentName === 'main');
    if (mainConfigs.length === 0) {
        throw new Error('Main configuration not found');
    }
    const mainConfig = mainConfigs[0].config;
    amplifyconfiguration += `
};

const amplifyconfig = '''${JSON.stringify(mainConfig, null, 2)}''';
`;

    console.log(`Creating Amplify configuration: ${amplifyconfiguration}`);

    await s3.putObject({
        Bucket: bucket,
        Key: 'amplifyconfiguration.dart',
        Body: amplifyconfiguration,
    });

    console.log('Successfully created Amplify configuration');
}

const downloadEnvironmentConfig = async (bucket: string, key: string): Promise<EnvironmentConfig> => {
    const contents = await s3.getObject({
        Bucket: bucket,
        Key: key,
    });
    return JSON.parse(
        await contents.Body!.transformToString(),
    ) as EnvironmentConfig;
}
