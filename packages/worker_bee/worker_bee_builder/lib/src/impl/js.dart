// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:build/build.dart';
import 'package:code_builder/code_builder.dart';
import 'package:worker_bee_builder/src/impl/common.dart';
import 'package:worker_bee_builder/src/types.dart';

/// {@template worker_bee_builder.vm_generator}
/// Generates the JS implementation of a worker bee.
/// {@endtemplate}
class JsGenerator extends ImplGenerator {
  /// {@macro worker_bee_builder.vm_generator}
  JsGenerator(
    super.classEl,
    super.requestTypeEl,
    super.responseTypeEl, {
    required this.declaresJsEntrypoint,
    required this.declaresFallbackUrls,
    required this.hiveEntrypointId,
  });

  /// Whether the base implementation overrides `jsEntrypoint`, in which case
  /// we should not generate it.
  final bool declaresJsEntrypoint;

  /// Whether the base implementation overrides `fallbackUrls`, in which case
  /// we should not generate it.
  final bool declaresFallbackUrls;

  /// The ID/location of the hive entrypoint, used to generate paths correctly.
  final AssetId hiveEntrypointId;

  @override
  Library generate() {
    return Library(
      (b) => b
        ..body.addAll([
          _workerClass,
        ]),
    );
  }

  late final _packageName = hiveEntrypointId.package;

  late final _workersJs = hiveEntrypointId.changeExtension('.js');
  late final _workersJsPath =
      'packages/$_packageName/${_workersJs.path.replaceFirst('lib/', '')}';
  late final _debugWorkersJs =
      hiveEntrypointId.changeExtension('.debug.dart.js');
  late final _debugWorkersJsPath =
      'packages/$_packageName/${_debugWorkersJs.path.replaceFirst('lib/', '')}';

  late final _minifiedWorkersJs = hiveEntrypointId.changeExtension('.min.js');
  late final _minifiedWorkersJsPath =
      'packages/$_packageName/${_minifiedWorkersJs.path.replaceFirst('lib/', '')}';

  late final _releaseWorkersJs =
      hiveEntrypointId.changeExtension('.release.dart.js');
  late final _releaseWorkersJsPath =
      'packages/$_packageName/${_releaseWorkersJs.path.replaceFirst('lib/', '')}';

  Code get _jsEntrypoint {
    // Flutter uses a special assets URL which includes the `lib/` path prefix.
    final flutterUrl =
        'assets/packages/$_packageName/${_minifiedWorkersJs.path}';

    return Code.scope(
      (allocate) => '''
// Flutter web release builds must use the bundled asset.
if (${allocate(DartTypes.awsCommon.zIsFlutter)} && !${allocate(DartTypes.awsCommon.zDebugMode)}) {
  return '$flutterUrl';
}
    // Default to the compiled, published worker.
return ${allocate(DartTypes.awsCommon.zDebugMode)} ? '$_workersJsPath' : '$_minifiedWorkersJsPath';
''',
    );
  }

  Code get _fallbackUrls {
    return Block.of([
      const Code('''
    // When running in a test, we need to find the `packages` directory which
    // is symlinked in the root `test/` directory.
    final baseUri = Uri.base;
    final basePath = baseUri.pathSegments
        .takeWhile((segment) => segment != 'test')
        .map(Uri.encodeComponent)
        .join('/');'''),
      declareConst('relativePath')
          .assign(
            DartTypes.awsCommon.zDebugMode.conditional(
              literalString(_debugWorkersJsPath),
              literalString(_releaseWorkersJsPath),
            ),
          )
          .statement,
      const Code(r'''
    final testRelativePath = Uri(
      scheme: baseUri.scheme,
      host: baseUri.host,
      port: baseUri.port,
      path: '$basePath/test/$relativePath',
    ).toString();'''),
      literalList([refer('relativePath'), refer('testRelativePath')])
          .returned
          .statement,
    ]);
  }

  Class get _workerClass => Class(
        (c) => c
          ..name = workerImplName
          ..docs.add('/// The JS implementation of [${workerType.symbol}].')
          ..extend = workerType
          ..methods.addAll([
            Method((m) => m
              ..annotations.add(DartTypes.core.override)
              ..returns = DartTypes.core.string
              ..type = MethodType.getter
              ..name = 'name'
              ..body = literalString(workerName).code),
            if (!declaresJsEntrypoint)
              Method((m) => m
                ..annotations.add(DartTypes.core.override)
                ..returns = DartTypes.core.string
                ..type = MethodType.getter
                ..name = 'jsEntrypoint'
                ..body = _jsEntrypoint),
            if (!declaresFallbackUrls)
              Method((m) => m
                ..annotations.add(DartTypes.core.override)
                ..returns = DartTypes.core.list(DartTypes.core.string)
                ..type = MethodType.getter
                ..name = 'fallbackUrls'
                ..body = _fallbackUrls),
          ]),
      );
}
