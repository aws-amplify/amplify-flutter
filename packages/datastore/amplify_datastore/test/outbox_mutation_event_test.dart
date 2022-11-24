//
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

import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:amplify_test/test_models/ModelProvider.dart';

void main() async {
  var modelProvider = ModelProvider();
  var outboxMutationEnqueuedEventJson =
      await getJsonFromFile('hub/outboxMutationEnqueuedEvent.json') as Map;
  var outboxMutationEnqueuedEvent = OutboxMutationEvent(
    outboxMutationEnqueuedEventJson,
    modelProvider,
    'outboxMutationEnqueued',
  );
  var outboxMutationProcessedEventJson =
      await getJsonFromFile('hub/outboxMutationProcessedEvent.json') as Map;
  var outboxMutationProcessedEvent = OutboxMutationEvent(
    outboxMutationProcessedEventJson,
    modelProvider,
    'outboxMutationProcessed',
  );

  var expectedPost = Post(
    id: '43036c6b-8044-4309-bddc-262b6c686026',
    title: 'Title 1',
    rating: 5,
    created: TemporalDateTime.fromString('2020-02-20T20:20:20-08:00'),
  );

  var expectedProcessedHubEvent = HubEventElementWithMetadata(
    expectedPost,
    version: 1,
    lastChangedAt: 1624492860,
    deleted: false,
  );

  group('OutboxMutationEvent', () {
    group('outboxMutationEnqueued', () {
      var enqueuedHubEventElement = outboxMutationEnqueuedEvent.element;

      test('is HubEventElement', () {
        expect(
          enqueuedHubEventElement,
          isA<HubEventElement>(),
        );
        expect(
          enqueuedHubEventElement,
          isNot(isA<HubEventElementWithMetadata>()),
        );
      });

      test('fromMap', () {
        var post = enqueuedHubEventElement.model as Post;
        expect(post, expectedPost);
      });
    });

    group('outboxMutationProcessed', () {
      test('is HubEventElementWithMetadata', () {
        expect(
          outboxMutationProcessedEvent.element,
          isA<HubEventElementWithMetadata>(),
        );
      });

      group('fromMap', () {
        test('all fields', () {
          var processedHubEventElement = outboxMutationProcessedEvent.element
              as HubEventElementWithMetadata;
          expect(
            processedHubEventElement.model,
            expectedProcessedHubEvent.model,
          );
          expect(
            processedHubEventElement.version,
            expectedProcessedHubEvent.version,
          );
          expect(
            processedHubEventElement.lastChangedAt,
            expectedProcessedHubEvent.lastChangedAt,
          );
          expect(
            processedHubEventElement.deleted,
            expectedProcessedHubEvent.deleted,
          );
        });

        test('_deleted = null', () {
          var outboxMutationProcessedEvent = OutboxMutationEvent(
            {
              ...outboxMutationProcessedEventJson,
              '_deleted': null,
            },
            modelProvider,
            'outboxMutationProcessed',
          );
          var processedHubEventElement = outboxMutationProcessedEvent.element
              as HubEventElementWithMetadata;
          expect(processedHubEventElement.deleted, false);
        });
      });
    });
  });
}
