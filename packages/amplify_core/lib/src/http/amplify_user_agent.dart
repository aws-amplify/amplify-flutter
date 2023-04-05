// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/platform/platform.dart';

/// {@template amplify_core.http.amplify_user_agent}
/// Aggregates user agent values throughout the Amplify categories.
/// {@endtemplate}
class AmplifyUserAgent {
  /// {@macro amplify_core.http.amplify_user_agent}
  AmplifyUserAgent()
      : _components = {
          if (zIsFlutter)
            'amplify-flutter/${Amplify.version}'
          else
            'amplify-dart/${Amplify.version}',
          osIdentifier,
        };

  AmplifyUserAgent._(this._components);

  final Set<String> _components;

  /// Adds a component to the user agent header.
  void addComponent(String component) {
    if (component.isNotEmpty) {
      _components.add(component);
    }
  }

  /// Runs [fn] with the given [updates] applied to this user agent.
  ///
  /// The updates only affect the scope of [fn] and do not affect this user
  /// agent. This user agent can be modified separately and those updates will
  /// also reflect in the scope.
  R runWith<R>(
    R Function() fn, {
    required void Function(AmplifyUserAgent) updates,
  }) {
    final scopedUserAgent = _ScopedUserAgent(this);
    updates(scopedUserAgent);
    return runZoned(
      fn,
      zoneValues: {
        AmplifyUserAgent: scopedUserAgent,
      },
    );
  }

  @override
  String toString() => _components.join(' ');
}

class _ScopedUserAgent extends AmplifyUserAgent {
  _ScopedUserAgent(this._base) : super._({});

  final AmplifyUserAgent _base;

  @override
  String toString() => <String>{
        ..._base._components,
        ..._components,
      }.join(' ');
}
