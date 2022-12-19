// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Builder definitons for `worker_bee_builder`.
library worker_bee_builder.builder;

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:worker_bee/worker_bee.dart';
import 'package:worker_bee_builder/src/copy_builder.dart';
import 'package:worker_bee_builder/src/hive_generator.dart';
import 'package:worker_bee_builder/src/worker_generator.dart';

/// {@template worker_bee_builder.worker_bee_builder}
/// Generates platform-specific boilerplate for [WorkerBee]-annotated classes.
/// {@endtemplate}
Builder workerBeeBuilder(BuilderOptions options) => LibraryBuilder(
      WorkerBeeGenerator(),
      generatedExtension: '.worker.dart',
      additionalOutputExtensions: [
        '.worker.vm.dart',
        '.worker.js.dart',
      ],
    );

/// {@template worker_bee_builder.worker_hive_builder}
/// Generates Hive definitions for packages with multiple worker bee types.
/// {@endtemplate}
Builder workerHiveBuilder(BuilderOptions options) => LibraryBuilder(
      WorkerHiveGenerator(),
      generatedExtension: '.debug.dart',
      additionalOutputExtensions: [
        '.release.dart',
      ],
    );

/// {@template worker_bee_builder.worker_copy_builder}
/// Copies generated JS artifacts to `lib/` for publishing.
/// {@endtemplate}
Builder workerCopyBuilder(BuilderOptions options) => WorkerCopyBuilder();
