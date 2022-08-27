// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:convert';
import 'dart:io';

import 'package:async/async.dart';

typedef ProcessSink = void Function(String);

/// Allows storing forwarding streams so we can listen to process outputs
/// multiple times.
final _stdoutStreams = Expando<StreamSplitter<List<int>>>();
final _stderrStreams = Expando<StreamSplitter<List<int>>>();

/// Helpers on [Process].
extension ProcessUtil on Process {
  static void _printToStdout(String message) => stdout.writeln(message);
  static void _printToStderr(String message) => stderr.writeln(message);

  /// Captures `stdout` to the provided sink, the global [stdout] by default.
  void captureStdout({ProcessSink sink = _printToStdout, String prefix = ''}) {
    (_stdoutStreams[this] ??= StreamSplitter(this.stdout))
        .split()
        .transform(const Utf8Decoder())
        .transform(const LineSplitter())
        .listen((line) => sink('$prefix$line'));
  }

  /// Captures `stderr` to the provided sink, the global [stderr] by default.
  void captureStderr({ProcessSink sink = _printToStderr, String prefix = ''}) {
    (_stderrStreams[this] ??= StreamSplitter(this.stderr))
        .split()
        .transform(const Utf8Decoder())
        .transform(const LineSplitter())
        .listen((line) => sink('$prefix$line'));
  }
}

/// Performs a depth-first search on [graph] calling [visit] for every node.
///
/// If [root] is specified, the search is started there.
void dfs<Node>(
  Map<Node, List<Node>> graph,
  void Function(Node) visit, {
  Node? root,
}) {
  final visited = <Node>{};
  void search(Node node, List<Node> edges) {
    visited.add(node);
    visit(node);
    for (final edge in edges) {
      if (!visited.contains(edge)) {
        search(edge, graph[edge]!);
      }
    }
  }

  if (root != null) {
    assert(graph.containsKey(root), 'Root is not in graph');
    search(root, graph[root]!);
  } else {
    graph.forEach(search);
  }
}
