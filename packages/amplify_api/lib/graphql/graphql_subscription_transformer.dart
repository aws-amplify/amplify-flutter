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

import 'dart:async';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api/graphql/graphql_subscription_event.dart';

/// {@template graphql_subscription_transformer}
/// Transforms events for a GraphQL subscription into [GraphQLResponse<T>],
/// deserializing payloads into objects of type [T].
/// {@endtemplate}
class GraphQLSubscriptionTransformer<T> extends StreamTransformerBase<
    GraphQLSubscriptionEvent, GraphQLResponse<T>> {
  /// {@macro graphql_subscription_transformer}
  const GraphQLSubscriptionTransformer();

  @override
  Stream<GraphQLResponse<T>> bind(
    Stream<GraphQLSubscriptionEvent> stream,
  ) async* {
    await for (var event in stream) {
      switch (event.type) {
        case GraphQLSubscriptionEventType.data:
          final response = event.rawResponse;
          if (response == null) {
            throw Exception('Null response');
          }
          yield GraphQLResponse<T>(
            data: response.data as T,
            errors: response.errors,
          );
          break;
        case GraphQLSubscriptionEventType.done:
          return;
        case GraphQLSubscriptionEventType.error:
          throw event.error!;
      }
    }
  }
}

/// Stream helpers for GraphQL subscriptions.
extension GraphQLStreamX<T> on Stream<T> {
  /// Creates a broadcast stream which keeps track of its listeners and only
  /// performs setup and teardown work when its subscriber count reaches 1 or 0,
  /// respectively, via the [onFirstListen] and [onLastCancel] parameters.
  ///
  /// This allows a backing stream to be reused multiple times, even if the
  /// subscriber count drops to zero.
  Stream<T> asMultiStream({
    Future<void> Function()? onFirstListen,
    Future<void> Function()? onLastCancel,
  }) {
    var done = false;
    var listeners = <MultiStreamController<T>>{};
    listen((event) {
      for (var listener in [...listeners]) {
        listener.addSync(event);
      }
    }, onError: (Object error, StackTrace stack) {
      for (var listener in [...listeners]) {
        listener.addErrorSync(error, stack);
      }
    }, onDone: () {
      done = true;
      for (var listener in [...listeners]) {
        listener.closeSync();
      }
    }, cancelOnError: false);
    return Stream<T>.multi(
      (MultiStreamController<T> controller) {
        if (done) {
          controller.close();
          return;
        }
        listeners.add(controller);
        if (listeners.length == 1 && onFirstListen != null) {
          onFirstListen().catchError(controller.addError);
        }
        controller.onCancel = () {
          listeners.remove(controller);
          if (listeners.isEmpty && onLastCancel != null) {
            onLastCancel();
          }
        };
      },
      isBroadcast: true,
    );
  }
}
