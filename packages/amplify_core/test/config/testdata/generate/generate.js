// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

const versions = {
    4: require('cli-4/lib/amplify-config-helper').generateConfig, // 4.52.0
    5: require('cli-5/lib/amplify-config-helper').generateConfig, // 5.6.0
    6: require('cli-6/lib/amplify-config-helper').generateConfig, // 6.4.0
    7: require('cli-7/lib/amplify-config-helper').generateConfig, // 7.6.5
    latest: require('cli-latest/lib/amplify-config-helper').generateConfig, // latest
};
const fs = require('fs');
const child_process = require('child_process');

const REGION = '$REGION';
const API_KEY = '$API_KEY';
const ANALYTICS_APP_ID = '$ANALYTICS_APP_ID';
const GRAPHQL_ENDPOINT = '$GRAPHQL_ENDPOINT';
const REST_ENDPOINT = '$REST_ENDPOINT';
const BUCKET = '$BUCKET';

const API_KEY_AUTH_TYPE = 'API_KEY';
const COGNITO_AUTH_TYPE = 'AMAZON_COGNITO_USER_POOLS';
const IAM_AUTH_TYPE = 'AWS_IAM';

const defaultMetadata = {
    providers: {
        awscloudformation: {
            Region: REGION,
        }
    }
};

const authConfigJSON = fs.readFileSync('./aws_cognito_configuration.json');
const authConfig = JSON.parse(authConfigJSON);

const makeAppSyncConfig = (authType) => {
    return {
        service: 'AppSync',
        output: {
            authConfig: {
                defaultAuthentication: {
                    authenticationType: authType
                }
            },
            GraphQLAPIEndpointOutput: GRAPHQL_ENDPOINT,
            GraphQLAPIKeyOutput: authType === 'API_KEY' ? API_KEY : undefined,
        }
    };
};

const makeRestConfig = (authType) => {
    return {
        service: 'API Gateway',
        output: {
            RootUrl: REST_ENDPOINT,
        },
        authorizationType: authType,
    }
};

const testVectors = [
    {
        name: 'Empty',
        metadata: {
            ...defaultMetadata
        }
    },
    {
        name: 'Analytics',
        metadata: {
            ...defaultMetadata,
            analytics: {
                test: {
                    output: {
                        Id: ANALYTICS_APP_ID,
                        Region: REGION
                    }
                }
            },
        }
    },
    {
        name: 'Auth',
        metadata: {
            ...defaultMetadata,
            auth: {}
        },
        awsConfig: authConfig
    },
    {
        name: 'API',
        metadata: {
            ...defaultMetadata,
            api: {
                API_KEY: {
                    ...makeAppSyncConfig(API_KEY_AUTH_TYPE)
                },
                AWS_IAM: {
                    ...makeAppSyncConfig(IAM_AUTH_TYPE)
                },
                REST: {
                    ...makeRestConfig(COGNITO_AUTH_TYPE)
                },
            }
        }
    },
    {
        name: 'Storage',
        metadata: {
            ...defaultMetadata,
            storage: {
                S3: {
                    service: 'S3',
                    output: {
                        BucketName: BUCKET,
                        Region: REGION,
                    }
                }
            }
        }
    }
];

let out =
    `//
    // Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
    //
    // Licensed under the Apache License, Version 2.0 (the "License").
    // You may not use this file except in compliance with the License.
    // A copy of the License is located at
    //
    //  http://aws.amazon.com/apache2.0
    //
    // or in the "license" file accompanying this file. This file is distributed
    // on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
    // express or implied. See the License for the specific language governing
    // permissions and limitations under the License.
    //
    
    // GENERATED FILE. DO NOT MODIFY BY HAND. SEE \`src/generate.js\`.

    import 'test_values.dart';

    class TestData {
        const TestData(this.name, this.config);

        final String name;
        final String config;
    }

    class TestSuite {
        const TestSuite(this.version, this.tests);

        final String version;
        final List<TestData> tests;
    }
    `;

for (const entry of Object.entries(versions)) {
    const version = entry[0];
    const generateConfig = entry[1];

    for (const vector of testVectors) {
        const context = {
            amplify: {
                getProjectMeta: () => {
                    return vector.metadata;
                }
            }
        };
        const config = generateConfig(context, null, vector.awsConfig);
        const configJSON = JSON.stringify(config, null, '  ');
        out += `const _v${version}${vector.name.toLowerCase()} = '''\n${configJSON}\n'''; \n\n`;
    }

    out += `const v${version}Tests = [`;
    for (const vector of testVectors) {
        out += `TestData('${vector.name}', _v${version}${vector.name.toLowerCase()}), \n`;
    }
    out += '];\n\n';
}

out += 'const allTests = [';
for (const version in versions) {
    out += `TestSuite('${version}', v${version}Tests),\n`;
}
out += '];';

const outFile = '../cli_generated.dart';
fs.writeFileSync(outFile, out);
child_process.execSync(`dart format ${outFile}`);
