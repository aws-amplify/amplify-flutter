// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Dart wrapper for the GitHub Actions Node.js modules.
library;

import 'dart:async';
import 'dart:js_interop';

import 'package:actions/src/action_context.dart';
import 'package:actions/src/node/actions/core.dart';
import 'package:actions/src/node/fs.dart';
import 'package:actions/src/node/process.dart';
import 'package:path/path.dart' as p;
import 'package:source_map_stack_trace/source_map_stack_trace.dart';
import 'package:source_maps/source_maps.dart';
import 'package:stack_trace/stack_trace.dart';

export 'src/action_context.dart';
export 'src/chromedriver/downloads.dart';
export 'src/node/actions/cache.dart' hide Cache;
export 'src/node/actions/core.dart' hide Core;
export 'src/node/actions/exec.dart' hide Exec;
export 'src/node/actions/http_request.dart';
export 'src/node/actions/tool_cache.dart' hide ToolCache;
export 'src/node/child_process.dart' hide ChildProcess;
export 'src/node/error.dart';
export 'src/node/fs.dart' hide FileSystem;
export 'src/node/os.dart' hide OperatingSystem;
export 'src/node/process.dart' hide Process;
export 'src/os.dart';

/// Wraps a GitHub action entrypoint to better handle errors and map
/// JS stack traces to Dart stack traces.
Future<void> wrapMain(Future<void> Function() mainFn) async {
  await Chain.capture(
    () async {
      await mainFn();
      await core.withGroup(
        'Clean up (Success)',
        () => (context as ActionContext).runTearDowns(ActionResult.success),
      );
      process.exit(0);
    },
    onError: (Object error, Chain chain) async {
      final sourceMapJson = fs.readFileSync(p.join(__dirname, 'main.cjs.map'));
      final sourceMap = parse(sourceMapJson);
      final mappedStackChain = mapStackTrace(sourceMap, chain);
      core
        ..error(error.toString())
        ..error(mappedStackChain.toString())
        ..error(chain.toString());
      await core.withGroup(
        'Clean up (Failure)',
        () => (context as ActionContext).runTearDowns(ActionResult.failure),
      );
      core.setFailed('Action failed with error: $error');
    },
  );
}

@JS('__dirname')
external String __dirname;
