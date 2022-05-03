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

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_core/amplify_core.dart';

/// GraphQL subscription event types.
enum GraphQLSubscriptionEventType {
  /// Triggered when data is received from a GraphQL subscription.
  data,

  /// Triggered when a GraphQL subscription completes either due to cancellation
  /// or a platform error.
  done,

  /// Triggered when a platform error occurs for a subscription.
  ///
  /// Currently only valid in Dart.
  error,
}

/// Helper functions for [GraphQLSubscriptionEventType].
extension GraphQLSubscriptionEventTypeX on GraphQLSubscriptionEventType {
  /// Converts a platform string to a [GraphQLSubscriptionEventType].
  static GraphQLSubscriptionEventType fromString(String type) {
    switch (type) {
      case 'DATA':
        return GraphQLSubscriptionEventType.data;
      case 'DONE':
        return GraphQLSubscriptionEventType.done;
      default:
        throw UnsupportedError('Unsupported type: $type');
    }
  }
}

/// {@template graphql_subscription_event}
/// An event which occurs on a GraphQL subscription.
/// {@endtemplate}
class GraphQLSubscriptionEvent {
  /// The ID of the subscription.
  final String subscriptionId;

  /// The type of event.
  final GraphQLSubscriptionEventType type;

  /// The GraphQL response, if a data event.
  final GraphQLResponse<String?>? rawResponse;

  /// Platform error, if an error event.
  final ApiException? error;

  /// {@macro graphql_subscription_event}
  const GraphQLSubscriptionEvent({
    required this.subscriptionId,
    required this.type,
    this.rawResponse,
    this.error,
  });

  /// Deserializes a platform channel event map.
  static GraphQLSubscriptionEvent fromJson(Map json) {
    GraphQLResponse<String?>? rawResponse;
    final payload = json['payload'] as Map?;
    if (payload != null) {
      rawResponse = GraphQLResponse.raw(
        data: payload['data'] as String?,
        errors: (payload['errors'] as List?)
            ?.cast<Map>()
            .map((error) => GraphQLResponseError.fromJson(
                  error.cast<String, dynamic>(),
                ))
            .toList(),
      );
    }
    return GraphQLSubscriptionEvent(
      subscriptionId: json['id'] as String,
      type: GraphQLSubscriptionEventTypeX.fromString(json['type'] as String),
      rawResponse: rawResponse,
    );
  }
}
