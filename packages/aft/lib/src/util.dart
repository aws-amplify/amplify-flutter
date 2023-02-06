// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'package:async/async.dart';
import 'package:graphs/graphs.dart';
import 'package:pubspec_parse/pubspec_parse.dart';

String? getEnv(String envName) {
  final value = Platform.environment[envName];
  return value == null || value.isEmpty ? null : value;
}

Never exitError(Object error, [int exitCode = 1]) {
  stderr.writeln(error);
  exit(exitCode);
}

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

/// Performs a depth-first search on [graph] calling [visit] for every node in
/// the order visited (pre-order).
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

/// Sorts packages in topological order so they may be published in the order
/// they're sorted.
///
/// Packages with inter-dependencies cannot be topologically sorted and will
/// throw a [CycleException].
void sortPackagesTopologically<T>(
  List<T> packages,
  Pubspec Function(T) getPubspec,
) {
  final pubspecs = packages.map(getPubspec);
  final packageNames = pubspecs.map((el) => el.name).toList();
  final directGraph = <String, List<String>>{
    for (final package in pubspecs)
      package.name:
          package.dependencies.keys.where(packageNames.contains).toList(),
  };
  final transitiveGraph = <String, Set<String>>{
    for (final package in pubspecs) package.name: {},
  };
  for (final package in pubspecs) {
    dfs<String>(directGraph, root: package.name, (dependency) {
      if (dependency == package.name) return;
      transitiveGraph[package.name]!.add(dependency);
    });
  }
  final ordered = topologicalSort(
    transitiveGraph.keys,
    (key) => transitiveGraph[key]!,
  );
  packages.sort((a, b) {
    // `ordered` is in reverse ordering to our desired publish precedence.
    return ordered
        .indexOf(getPubspec(b).name)
        .compareTo(ordered.indexOf(getPubspec(a).name));
  });
}
