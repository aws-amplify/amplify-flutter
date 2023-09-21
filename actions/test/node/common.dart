// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:js_interop';
import 'dart:js_interop_unsafe';
import 'dart:js_util';

import 'package:actions/src/node/actions/core.dart';
import 'package:actions/src/node/process.dart';
import 'package:aws_common/aws_common.dart';

@JS()
external JSObject require(String module);

/// Sets up test dependencies for running Node tests.
///
/// Must be called before any interop code is run.
void setupNodeTest() {
  // Test dependencies needed via `require` since they
  // will not be linked by `dart test`.
  final process = require('node:process') as Process;
  final fs = require('node:fs');
  final childProcess = require('node:child_process');
  final os = require('node:os');

  safePrint('Node version: ${process.version}');

  globalContext['process'] = process;
  globalContext['fs'] = fs;
  globalContext['childProcess'] = childProcess;
  globalContext['os'] = os;
  globalContext['core'] = createDartExport(MockCore()) as Core;
}

@JSExport()
final class MockCore {
  String? _currentGroup;

  void startGroup(String name) {
    _currentGroup = name;
    safePrint('[Start] $_currentGroup');
  }

  void endGroup() {
    safePrint('[End] $_currentGroup');
    _currentGroup = null;
  }

  void debug(String name) => safePrint(name);
  void info(String name) => safePrint(name);
  void warning(String name) => safePrint(name);
  void error(String name) => safePrint(name);
}
