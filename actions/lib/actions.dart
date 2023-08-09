// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Dart wrapper for the GitHub Actions Node.js modules.
library;

import 'dart:js_interop';

import 'package:actions/src/node/actions/core.dart';
import 'package:actions/src/node/fs.dart';
import 'package:actions/src/node/process.dart';
import 'package:path/path.dart' as p;
import 'package:source_map_stack_trace/source_map_stack_trace.dart';
import 'package:source_maps/source_maps.dart';
import 'package:stack_trace/stack_trace.dart';

export 'src/chromedriver/downloads.dart';
export 'src/node/actions/cache.dart';
export 'src/node/actions/core.dart';
export 'src/node/actions/exec.dart';
export 'src/node/actions/http_request.dart';
export 'src/node/actions/tool_cache.dart';
export 'src/node/fs.dart';
export 'src/node/process.dart';
export 'src/os.dart';

/// Wraps a GitHub action entrypoint to better handle errors and map
/// JS stack traces to Dart stack traces.
Future<void> wrapMain(Future<void> Function() mainFn) async {
  await Chain.capture(
    () async {
      await mainFn();
      process.exit(0);
    },
    onError: (Object error, Chain chain) async {
      final sourceMapJson = fs.readFileSync(p.join(__dirname, 'main.cjs.map'));
      final sourceMap = parse(sourceMapJson);
      final mappedStackChain = mapStackTrace(sourceMap, chain);
      core
        ..error(error.toString())
        ..error(mappedStackChain.toString())
        ..error(chain.toString())
        ..setFailed('Action failed with error: $error');
    },
  );
}

@JS('__dirname')
external String __dirname;
