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

import 'package:e2e_test/e2e_worker.dart';
import 'package:e2e_test/e2e_worker_no_result.dart';
import 'package:e2e_test/e2e_worker_null_result.dart';
import 'package:e2e_test/e2e_worker_void_result.dart';
import 'package:worker_bee/worker_bee.dart';

import 'e2e_worker_throws.dart';

part 'workers.g.dart';

@WorkerHive([
  E2EWorker,
  E2EWorkerNoResult,
  E2EWorkerVoidResult,
  E2EWorkerNullResult,
  E2EWorkerThrows,
])
void main() {
  runHive(workers);
}
