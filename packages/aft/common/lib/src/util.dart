// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:graphs/graphs.dart';
import 'package:platform/platform.dart';
import 'package:pubspec_parse/pubspec_parse.dart';

extension GetEnv on Platform {
  String? getEnv(String envName) {
    final value = environment[envName];
    return value == null || value.isEmpty ? null : value;
  }
}

typedef ProcessSink = void Function(String);

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
      package.name: [
        ...package.dependencies.keys.where(packageNames.contains),
        ...package.devDependencies.keys.where(packageNames.contains),
      ],
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
