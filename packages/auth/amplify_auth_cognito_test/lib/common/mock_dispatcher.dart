// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';

class MockDispatcher with Dispatcher<AuthEvent, AuthState> {
  const MockDispatcher({
    this.onDispatch,
  });

  final EventCompleter<AuthEvent, AuthState>? Function(AuthEvent)? onDispatch;

  @override
  EventCompleter<AuthEvent, AuthState> dispatch(AuthEvent event) {
    return onDispatch?.call(event) ?? EventCompleter(event);
  }
}
