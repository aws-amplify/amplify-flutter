/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

// ignore_for_file: public_member_api_docs

import 'dart:async';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api/src/graphql/graphql_response_decoder.dart';
import 'package:amplify_api/src/graphql/graphql_subscription_event.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template graphql_subscription_transformer}
/// Transforms events for a GraphQL subscription into [GraphQLResponse<T>],
/// deserializing payloads into objects of type [T].
/// {@endtemplate}
class GraphQLSubscriptionTransformer<T> extends StreamTransformerBase<
    GraphQLSubscriptionEvent, GraphQLResponse<T>> {
  final GraphQLRequest<T> request;

  /// {@macro graphql_subscription_transformer}
  const GraphQLSubscriptionTransformer(this.request);

  @override
  Stream<GraphQLResponse<T>> bind(
    Stream<GraphQLSubscriptionEvent> stream,
  ) {
    // Create a controller to manage events from `stream`, i.e. the EventChannel.
    // This allows us to add errors and close as necessary.
    //
    // `sync` because we are just forwarding events, so there is no risk of
    // violating any asynchronous contracts.
    final controller = StreamController<GraphQLResponse<T>>(sync: true);

    // Subscribe to the transformed EventChannel and process events until
    // an error occurs which we cannot handle or the user cancels the subscription.
    final subscription = stream.listen(
      (event) {
        switch (event.type) {
          case GraphQLSubscriptionEventType.data:
            final response = event.rawResponse;
            if (response == null) {
              controller.addError(Exception('Null response'));
              break;
            }
            controller.add(GraphQLResponseDecoder.instance.decode<T>(
                request: request,
                data: response.data,
                errors: response.errors));
            break;
          case GraphQLSubscriptionEventType.done:
            controller.close();
            return;
          case GraphQLSubscriptionEventType.error:
            controller.addError(event.error!);
            break;
        }
      },

      // Handles "global" errors on the EventChannel which cannot be assigned
      // to an individual subscription.
      onError: (Object e, StackTrace st) {
        if (!controller.isClosed) {
          controller.addError(e, st);
          controller.close();
        }
      },

      // Ensures future events are not handled by this subscription.
      cancelOnError: true,

      // Not expected to occur, since `stream` is the EventChannel.
      onDone: null,
    );

    controller.onCancel = subscription.cancel;
    return controller.stream;
  }
}
