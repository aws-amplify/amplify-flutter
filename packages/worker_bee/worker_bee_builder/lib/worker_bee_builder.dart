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

/// Builder definitons for `worker_bee_builder`.
library worker_bee_builder.builder;

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:worker_bee/worker_bee.dart';
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
Builder workerHiveBuilder(BuilderOptions options) => SharedPartBuilder(
      [WorkerHiveGenerator()],
      'worker_hive',
    );
