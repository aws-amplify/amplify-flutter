// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:math';

import 'package:aws_common/aws_common.dart';
import 'package:smoke_test/src/sdk/cloud_formation.dart';
import 'package:test/test.dart';

import 'common.dart';

// Follows selected examples from:
// https://docs.aws.amazon.com/IAM/latest/UserGuide/service_code_examples.html
void main() {
  group('CloudFormation', () {
    const host = 'localhost.localstack.cloud:4566';
    late final CloudFormationClient client;

    setUpAll(() {
      client = CloudFormationClient(
        region: 'us-west-2',
        baseUri: Uri.http(host),
        credentialsProvider: const AWSCredentialsProvider(
          AWSCredentials('accessKeyId', 'secretAccessKey'),
        ),
        client: localClient,
      );
    });

    test('CreateStack', () async {
      final stackName = 'my-stack-${Random().nextInt(1 << 30)}';
      await client
          .createStack(
            CreateStackInput(
              stackName: stackName,
              templateBody: '''
                {
                  "AWSTemplateFormatVersion": "2010-09-09",
                  "Resources": {
                    "MyBucket": {
                      "Type": "AWS::S3::Bucket"
                    }
                  }
                }
              ''',
            ),
          )
          .result;

      {
        final stacks = await client
            .describeStacks(
              DescribeStacksInput(stackName: stackName),
            )
            .result;

        expect(stacks.items, isNotEmpty);

        final stack = stacks.items.first;
        expect(stack.stackId, isNotNull);
        expect(
          stack.stackId,
          startsWith('arn:aws:cloudformation:'),
        );
      }

      await client
          .deleteStack(
            DeleteStackInput(stackName: stackName),
          )
          .result;

      {
        final stacks = await client
            .describeStacks(
              DescribeStacksInput(stackName: stackName),
            )
            .result;
        expect(stacks.items, isNotEmpty);
        expect(
          stacks.items.first.stackStatus,
          StackStatus.deleteComplete,
        );
      }
    });

    test('CreateChangeSet', () async {
      final stackName = 'my-stack-${Random().nextInt(1 << 30)}';
      await client
          .createStack(
            CreateStackInput(
              stackName: stackName,
              templateBody: '''
                {
                  "AWSTemplateFormatVersion": "2010-09-09",
                  "Resources": {
                    "MyBucket": {
                      "Type": "AWS::S3::Bucket"
                    }
                  }
                }
              ''',
            ),
          )
          .result;

      final changeSetName = 'my-change-set-${Random().nextInt(1 << 30)}';
      await client
          .createChangeSet(
            CreateChangeSetInput(
              stackName: stackName,
              changeSetName: changeSetName,
              templateBody: '''
                {
                  "AWSTemplateFormatVersion": "2010-09-09",
                  "Resources": {
                    "MyBucket": {
                      "Type": "AWS::S3::Bucket"
                    },
                    "MyBucket2": {
                      "Type": "AWS::S3::Bucket"
                    }
                  }
                }
              ''',
            ),
          )
          .result;

      {
        final changeSet = await client
            .describeChangeSet(
              DescribeChangeSetInput(
                stackName: stackName,
                changeSetName: changeSetName,
              ),
            )
            .result;

        expect(changeSet.changeSetId, isNotNull);
        expect(
          changeSet.changeSetId,
          startsWith('arn:aws:cloudformation:'),
        );
        expect(changeSet.changeSetName, changeSetName);
      }

      await client
          .deleteStack(
            DeleteStackInput(stackName: stackName),
          )
          .result;
    });

    test('DescribeStackEvents', () async {
      final stackName = 'my-stack-${Random().nextInt(1 << 30)}';
      await client
          .createStack(
            CreateStackInput(
              stackName: stackName,
              templateBody: '''
                {
                  "AWSTemplateFormatVersion": "2010-09-09",
                  "Resources": {
                    "MyBucket": {
                      "Type": "AWS::S3::Bucket"
                    }
                  }
                }
              ''',
            ),
          )
          .result;

      {
        final events = await client
            .describeStackEvents(
              DescribeStackEventsInput(stackName: stackName),
            )
            .result;

        expect(events.items, isNotEmpty);

        final event = events.items.first;
        expect(event.stackName, stackName);
      }

      await client
          .deleteStack(
            DeleteStackInput(stackName: stackName),
          )
          .result;
    });

    test('DescribeStackResource', () async {
      final stackName = 'my-stack-${Random().nextInt(1 << 30)}';
      await client
          .createStack(
            CreateStackInput(
              stackName: stackName,
              templateBody: '''
                {
                  "AWSTemplateFormatVersion": "2010-09-09",
                  "Resources": {
                    "MyBucket": {
                      "Type": "AWS::S3::Bucket"
                    }
                  }
                }
              ''',
            ),
          )
          .result;

      {
        final output = await client
            .describeStackResource(
              DescribeStackResourceInput(
                stackName: stackName,
                logicalResourceId: 'MyBucket',
              ),
            )
            .result;
        final resource = output.stackResourceDetail;
        expect(resource, isNotNull);
        expect(resource!.stackName, stackName);
      }

      await client
          .deleteStack(
            DeleteStackInput(stackName: stackName),
          )
          .result;
    });

    test('DescribeStackResources', () async {
      final stackName = 'my-stack-${Random().nextInt(1 << 30)}';
      await client
          .createStack(
            CreateStackInput(
              stackName: stackName,
              templateBody: '''
                {
                  "AWSTemplateFormatVersion": "2010-09-09",
                  "Resources": {
                    "MyBucket": {
                      "Type": "AWS::S3::Bucket"
                    }
                  }
                }
              ''',
            ),
          )
          .result;

      {
        final output = await client
            .describeStackResources(
              DescribeStackResourcesInput(stackName: stackName),
            )
            .result;
        final resources = output.stackResources;
        expect(resources, isNotEmpty);
        final resource = resources!.first;
        expect(resource.stackName, stackName);
      }
    });

    test('DescribeStacks', () async {
      final stackName = 'my-stack-${Random().nextInt(1 << 30)}';
      await client
          .createStack(
            CreateStackInput(
              stackName: stackName,
              templateBody: '''
                {
                  "AWSTemplateFormatVersion": "2010-09-09",
                  "Resources": {
                    "MyBucket": {
                      "Type": "AWS::S3::Bucket"
                    }
                  }
                }
              ''',
            ),
          )
          .result;

      {
        final stacks = await client
            .describeStacks(
              DescribeStacksInput(stackName: stackName),
            )
            .result;

        expect(stacks.items, isNotEmpty);

        final stack = stacks.items.first;
        expect(stack.stackId, isNotNull);
        expect(stack.stackName, stackName);
      }

      await client
          .deleteStack(
            DeleteStackInput(stackName: stackName),
          )
          .result;
    });

    test('ExecuteChangeSet', () async {
      final stackName = 'my-stack-${Random().nextInt(1 << 30)}';
      final changeSetName = 'my-change-set-${Random().nextInt(1 << 30)}';

      await client
          .createStack(
            CreateStackInput(
              stackName: stackName,
              templateBody: '''
                {
                  "AWSTemplateFormatVersion": "2010-09-09",
                  "Resources": {
                    "MyBucket": {
                      "Type": "AWS::S3::Bucket"
                    }
                  }
                }
              ''',
            ),
          )
          .result;

      final changeSet = await client
          .createChangeSet(
            CreateChangeSetInput(
              stackName: stackName,
              changeSetName: changeSetName,
              templateBody: '''
                {
                  "AWSTemplateFormatVersion": "2010-09-09",
                  "Resources": {
                    "MyBucket": {
                      "Type": "AWS::S3::Bucket"
                    },
                    "MyBucket2": {
                      "Type": "AWS::S3::Bucket"
                    }
                  }
                }
              ''',
            ),
          )
          .result;

      {
        final changeSet = await client
            .describeChangeSet(
              DescribeChangeSetInput(
                stackName: stackName,
                changeSetName: changeSetName,
              ),
            )
            .result;
        expect(changeSet.changeSetName, changeSetName);
      }

      await client
          .executeChangeSet(
            ExecuteChangeSetInput(
              stackName: stackName,
              changeSetName: changeSetName,
            ),
          )
          .result;

      {
        final stacks = await client
            .describeStacks(
              DescribeStacksInput(stackName: stackName),
            )
            .result;

        expect(stacks.items, isNotEmpty);

        final stack = stacks.items.first;
        expect(stack.stackName, stackName);
        expect(stack.changeSetId, changeSet.id!);
      }

      await client
          .deleteStack(
            DeleteStackInput(stackName: stackName),
          )
          .result;
    });

    test('GetTemplate', () async {
      final stackName = 'my-stack-${Random().nextInt(1 << 30)}';
      await client
          .createStack(
            CreateStackInput(
              stackName: stackName,
              templateBody: '''
                {
                  "AWSTemplateFormatVersion": "2010-09-09",
                  "Resources": {
                    "MyBucket": {
                      "Type": "AWS::S3::Bucket"
                    }
                  }
                }
              ''',
            ),
          )
          .result;

      {
        final output = await client
            .getTemplate(
              GetTemplateInput(stackName: stackName),
            )
            .result;
        expect(output.templateBody, isNotNull);
        expect(
          output.templateBody,
          contains('MyBucket'),
        );
      }

      await client
          .deleteStack(
            DeleteStackInput(stackName: stackName),
          )
          .result;
    });

    test('ListChangeSets', () async {
      final stackName = 'my-stack-${Random().nextInt(1 << 30)}';
      final changeSetName = 'my-change-set-${Random().nextInt(1 << 30)}';
      await client
          .createStack(
            CreateStackInput(
              stackName: stackName,
              templateBody: '''
                {
                  "AWSTemplateFormatVersion": "2010-09-09",
                  "Resources": {
                    "MyBucket": {
                      "Type": "AWS::S3::Bucket"
                    }
                  }
                }
              ''',
            ),
          )
          .result;

      await client
          .createChangeSet(
            CreateChangeSetInput(
              stackName: stackName,
              changeSetName: changeSetName,
              templateBody: '''
                {
                  "AWSTemplateFormatVersion": "2010-09-09",
                  "Resources": {
                    "MyBucket": {
                      "Type": "AWS::S3::Bucket"
                    },
                    "MyBucket2": {
                      "Type": "AWS::S3::Bucket"
                    }
                  }
                }
              ''',
            ),
          )
          .result;

      {
        final output = await client
            .listChangeSets(
              ListChangeSetsInput(stackName: stackName),
            )
            .result;

        final summary = output.items.first;
        expect(summary.changeSetId, isNotNull);
        expect(
          summary.changeSetId,
          startsWith('arn:aws:cloudformation:'),
        );
        expect(
          summary.changeSetName,
          changeSetName,
        );
      }

      await client
          .deleteStack(
            DeleteStackInput(stackName: stackName),
          )
          .result;
    });

    test('ListStackResources', () async {
      final stackName = 'my-stack-${Random().nextInt(1 << 30)}';
      await client
          .createStack(
            CreateStackInput(
              stackName: stackName,
              templateBody: '''
                {
                  "AWSTemplateFormatVersion": "2010-09-09",
                  "Resources": {
                    "MyBucket": {
                      "Type": "AWS::S3::Bucket"
                    }
                  }
                }
              ''',
            ),
          )
          .result;

      {
        final output = await client
            .listStackResources(
              ListStackResourcesInput(stackName: stackName),
            )
            .result;

        final resource = output.items.first;
        expect(resource.logicalResourceId, 'MyBucket');
        expect(resource.resourceType, 'AWS::S3::Bucket');
      }

      await client
          .deleteStack(
            DeleteStackInput(stackName: stackName),
          )
          .result;
    });

    test('ListStacks', () async {
      final stackName = 'my-stack-${Random().nextInt(1 << 30)}';
      await client
          .createStack(
            CreateStackInput(
              stackName: stackName,
              templateBody: '''
                {
                  "AWSTemplateFormatVersion": "2010-09-09",
                  "Resources": {
                    "MyBucket": {
                      "Type": "AWS::S3::Bucket"
                    }
                  }
                }
              ''',
            ),
          )
          .result;

      {
        final output = await client
            .listStacks(
              ListStacksInput(),
            )
            .result;

        expect(
          output.items,
          contains(
            isA<StackSummary>().having(
              (s) => s.stackName,
              'stackName',
              stackName,
            ),
          ),
        );
      }

      await client
          .deleteStack(
            DeleteStackInput(stackName: stackName),
          )
          .result;
    });
  });
}
