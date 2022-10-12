// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:fixnum/fixnum.dart';
import 'package:smoke_test/src/sdk/dynamo_db.dart';
import 'package:smoke_test/src/sdk/dynamo_db_streams.dart'
    show
        DescribeStreamInput,
        DynamoDbStreamsClient,
        GetRecordsInput,
        GetShardIteratorInput,
        Record,
        ShardIteratorType;
import 'package:test/test.dart';

import 'common.dart';

void main() {
  group('DynamoDB', () {
    late final DynamoDbClient client;
    late final DynamoDbStreamsClient streamsClient;

    setUpAll(() {
      client = DynamoDbClient(
        region: 'us-west-2',
        baseUri: Uri.http('localhost:4566'),
        credentialsProvider: const AWSCredentialsProvider(
          AWSCredentials('accessKeyId', 'secretAccessKey'),
        ),
        client: localClient,
      );

      streamsClient = DynamoDbStreamsClient(
        region: 'us-west-2',
        baseUri: Uri.http('localhost:4566'),
        credentialsProvider: const AWSCredentialsProvider(
          AWSCredentials('accessKeyId', 'secretAccessKey'),
        ),
        client: localClient,
      );
    });

    Future<void> deleteTable(String tableName) async {
      try {
        await client.deleteTable(
          DeleteTableInput(tableName: tableName),
        );
      } on Object catch (_) {}
    }

    // Create a table:
    // https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GettingStarted.CreateTable.html
    Future<void> createTable(
      String tableName, {
      required StreamSpecification streamSpecification,
    }) async {
      await deleteTable(tableName);
      final table = await client.createTable(
        CreateTableInput(
          attributeDefinitions: [
            AttributeDefinition(
              attributeName: 'title',
              attributeType: ScalarAttributeType.s,
            ),
            AttributeDefinition(
              attributeName: 'year',
              attributeType: ScalarAttributeType.n,
            ),
          ],
          keySchema: [
            KeySchemaElement(attributeName: 'year', keyType: KeyType.hash),
            KeySchemaElement(attributeName: 'title', keyType: KeyType.range),
          ],
          tableName: tableName,
          provisionedThroughput: ProvisionedThroughput(
            readCapacityUnits: Int64(10),
            writeCapacityUnits: Int64(10),
          ),
          streamSpecification: streamSpecification,
        ),
      );
      expect(table.tableDescription?.tableName, tableName);
      addTearDown(() => deleteTable(tableName));

      await Future(() async {
        TableStatus? status;
        do {
          final created = await client.describeTable(
            DescribeTableInput(tableName: tableName),
          );
          status = created.table?.tableStatus;
          expect(status, isNotNull);
        } while (status != TableStatus.active);
      }).timeout(const Duration(seconds: 10));
    }

    test('CRUD', () async {
      const tableName = 'TEST_TABLE';
      await createTable(
        tableName,
        streamSpecification: StreamSpecification(streamEnabled: false),
      );

      // Write an item:
      // https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GettingStarted.WriteItem.html
      const item = {
        'title': AttributeValue.s('Casino Royale'),
        'year': AttributeValue.n('2006'),
      };
      {
        final response = await client.putItem(
          PutItemInput(
            item: item,
            tableName: tableName,
          ),
        );
        safePrint('Put item: $response');
      }

      // Read an item:
      // https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GettingStarted.ReadItem.html
      {
        final response = await client.getItem(
          GetItemInput(
            key: item,
            tableName: tableName,
          ),
        );
        safePrint('Retrieved item: $response');
        expect(response.item?.toMap(), equals(item));
      }

      // Update an item:
      // https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GettingStarted.UpdateItem.html
      {
        final updateResponse = await client.updateItem(
          UpdateItemInput(
            tableName: tableName,
            key: item,
            expressionAttributeNames: {'#p': 'plot'},
            updateExpression: 'set #p = :p',
            expressionAttributeValues: {
              ':p': const AttributeValue.s('James Bond plays poker'),
            },
          ),
        );
        safePrint('Updated item: $updateResponse');
        final response = await client.getItem(
          GetItemInput(
            key: item,
            tableName: tableName,
          ),
        );
        safePrint('Retrieved updated item: $response');
        expect(
          response.item?.toMap(),
          equals({
            ...item,
            'plot': const AttributeValue.s('James Bond plays poker'),
          }),
        );
      }

      // Delete an item:
      // https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GettingStarted.DeleteItem.html
      {
        final response = await client.deleteItem(
          DeleteItemInput(key: item, tableName: tableName),
        );
        safePrint('Deleted item: $response');
      }

      const movies = <Map<String, AttributeValue>>[
        {
          'year': AttributeValue.n('2008'),
          'title': AttributeValue.s('The Dark Knight'),
          'plot': AttributeValue.s('Heath Ledger does a magic trick'),
        },
        {
          'year': AttributeValue.n('2008'),
          'title': AttributeValue.s('Quantum of Solace'),
          'plot': AttributeValue.s('James Bond goes to the desert'),
        },
        {
          'year': AttributeValue.n('2012'),
          'title': AttributeValue.s('Skyfall'),
          'plot': AttributeValue.s('James Bond hacks the mainframe'),
        }
      ];

      // Query a table:
      // https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GettingStarted.Query.html
      {
        for (final movie in movies) {
          await client.putItem(
            PutItemInput(item: movie, tableName: tableName),
          );
        }
        final response = await client.query(
          QueryInput(
            tableName: tableName,
            keyConditionExpression: '#y = :y',
            filterExpression: 'contains (plot, :topic)',
            expressionAttributeNames: {'#y': 'year'},
            expressionAttributeValues: {
              ':y': const AttributeValue.n('2008'),
              ':topic': const AttributeValue.s('James Bond'),
            },
          ),
        );
        final items = response.items.map((item) => item.toMap()).toList();
        safePrint('Queried items: $items');
        expect(response.hasNext, false);
        expect(items, hasLength(1));
        expect(
          items,
          equals([
            {
              'year': const AttributeValue.n('2008'),
              'title': const AttributeValue.s('Quantum of Solace'),
              'plot': const AttributeValue.s('James Bond goes to the desert'),
            }
          ]),
        );
      }

      // Scan a table:
      // https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GettingStarted.Scan.html
      {
        var response = await client.scan(
          ScanInput(
            tableName: tableName,
            filterExpression: '#y >= :start_year AND contains (plot, :topic)',
            expressionAttributeNames: {'#y': 'year'},
            expressionAttributeValues: {
              ':start_year': const AttributeValue.n('2008'),
              ':topic': const AttributeValue.s('James Bond'),
            },
            projectionExpression: '#y, title',
            limit: 1,
          ),
        );

        // Collect all items from the scan
        var i = 0;
        final items = <Map<String, AttributeValue>>[];
        do {
          items.addAll(response.items.map((item) => item.toMap()).toList());
          safePrint('Scanned items (${i++}): $items');
          response = await response.next();
        } while (response.hasNext);

        expect(
          items,
          unorderedEquals([
            {
              'year': const AttributeValue.n('2008'),
              'title': const AttributeValue.s('Quantum of Solace'),
            },
            {
              'year': const AttributeValue.n('2012'),
              'title': const AttributeValue.s('Skyfall'),
            }
          ]),
        );
      }
    });

    // Adapted from:
    // https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.LowLevel.Walkthrough.html
    test(
      'Streams',
      () async {
        const tableName = 'STREAM_TEST_TABLE';
        final streamSpecification = StreamSpecification(
          streamEnabled: true,
          streamViewType: StreamViewType.newAndOldImages,
        );
        await createTable(
          tableName,
          streamSpecification: streamSpecification,
        );
        // Allow kinesis stream time to be created since this is not captured
        // with describe table when using localstack.
        await Future<void>.delayed(const Duration(seconds: 5));

        final response = await client.describeTable(
          DescribeTableInput(tableName: tableName),
        );
        safePrint('Describe table: $response');
        final streamArn = response.table?.latestStreamArn;
        expect(streamArn, isNotNull);
        expect(response.table?.streamSpecification, streamSpecification);

        // Generate write activity
        const itemCount = 10;
        const startYear = 2000;
        for (var i = 1; i <= itemCount; i++) {
          safePrint('Processing $i/$itemCount...');

          final year = startYear + i;
          final movie = {
            'year': AttributeValue.n('$year'),
            'title': AttributeValue.s('Movie $year'),
          };

          // Create the item
          await client.putItem(
            PutItemInput(item: movie, tableName: tableName),
          );

          // Update the item
          await client.updateItem(
            UpdateItemInput(
              tableName: tableName,
              key: movie,
              expressionAttributeNames: {'#p': 'plot'},
              updateExpression: 'set #p = :p',
              expressionAttributeValues: {
                ':p': AttributeValue.s('The plot of "Movie $year"'),
              },
            ),
          );

          // Delete the item
          await client.deleteItem(
            DeleteItemInput(key: movie, tableName: tableName),
          );
        }

        // Get all the shard IDs from the stream. Note that DescribeStream
        // returns the shard IDs one page at a time.
        String? lastEvaluatedShardId;
        final allRecords = <Record>[];
        do {
          final describeStream = await streamsClient.describeStream(
            DescribeStreamInput(
              streamArn: streamArn!,
              exclusiveStartShardId: lastEvaluatedShardId,
            ),
          );
          final shards = describeStream.streamDescription?.shards;
          expect(shards, isNotNull);

          // Process each shard on this page
          for (final shard in shards!) {
            final shardId = shard.shardId;
            safePrint('Processing shard: $shardId');
            expect(shardId, isNotNull);

            final shardIteratorRes = await streamsClient.getShardIterator(
              GetShardIteratorInput(
                streamArn: streamArn,
                shardId: shardId!,
                shardIteratorType: ShardIteratorType.trimHorizon,
              ),
            );
            var currentShardIterator = shardIteratorRes.shardIterator;
            expect(currentShardIterator, isNotNull);

            // Shard iterator is not null until the Shard is sealed (marked as READ_ONLY).
            // To prevent running the loop until the Shard is sealed, which will be on average
            // 4 hours, we process only the items that were written into DynamoDB and then exit.
            var processedRecordCount = 0;
            while (currentShardIterator != null &&
                processedRecordCount < 3 * itemCount) {
              safePrint('    Shard iterator: $currentShardIterator');

              // Use the shard iterator to read the stream records
              final recordsRes = await streamsClient.getRecords(
                GetRecordsInput(
                  shardIterator: currentShardIterator,
                ),
              );
              final records = recordsRes.records?.toList();
              expect(records, isNotNull);
              allRecords.addAll(records!);

              for (final record in records) {
                safePrint('      Record: ${record.dynamodb}\n');
              }
              processedRecordCount += records.length;
              currentShardIterator = recordsRes.nextShardIterator;
            }
          }

          // If LastEvaluatedShardId is set, then there is
          // at least one more page of shard IDs to retrieve.
          lastEvaluatedShardId =
              describeStream.streamDescription?.lastEvaluatedShardId;
        } while (lastEvaluatedShardId != null);

        expect(
          allRecords,
          hasLength(3 * itemCount),
          reason: 'One record for each create, update, and delete event',
        );
      },
      timeout: const Timeout(Duration(minutes: 1)),
    );
  });
}
