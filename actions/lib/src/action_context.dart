// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:actions/actions.dart';

final RunContext context = ActionContext();

/// Collects key-value pairs which will be available to post-action tasks.
///
/// https://docs.github.com/en/actions/using-workflows/workflow-commands-for-github-actions#sending-values-to-the-pre-and-post-actions
abstract interface class RunContext {
  void saveState(String key, String value);

  /// Registers a function to be run if the action fails.
  void onFailed(FutureOr<void> Function() fn);

  /// Registers a function to be run if the action completes successfully.
  void onSuccess(FutureOr<void> Function() fn);

  /// Registers a function to be run if the action completes, either successfully
  /// or with an error.
  void onExit(FutureOr<void> Function() fn);
}

/// Reads key-value pairs from the terminated action's state.
///
/// https://docs.github.com/en/actions/using-workflows/workflow-commands-for-github-actions#sending-values-to-the-pre-and-post-actions
abstract interface class PostRunContext {
  Map<String, String> get stateValues;
  String? getState(String name);
}

final class ActionContext implements RunContext, PostRunContext {
  final _successTearDowns = <FutureOr<void> Function()>[];
  final _errorTearDowns = <FutureOr<void> Function()>[];

  @override
  void saveState(String key, String value) {
    core.saveState(key, value);
  }

  @override
  Map<String, String> get stateValues => Map.fromEntries(
        process.env.entries.where((e) => e.key.startsWith('STATE_')).cast(),
      );

  @override
  String? getState(String name) {
    final value = core.getState(name);
    return value.isEmpty ? null : value;
  }

  @override
  void onSuccess(FutureOr<void> Function() fn) => _successTearDowns.add(fn);

  @override
  void onFailed(FutureOr<void> Function() fn) => _errorTearDowns.add(fn);

  @override
  void onExit(FutureOr<void> Function() fn) {
    _successTearDowns.add(fn);
    _errorTearDowns.add(fn);
  }

  /// Runs all teardowns given the action's [result].
  Future<void> runTearDowns(ActionResult result) async {
    await Future.wait(
      (result == ActionResult.success ? _successTearDowns : _errorTearDowns)
          .map(Future.value),
    );
    core.info('Clean up completed');
  }
}

enum ActionResult { success, failure }
