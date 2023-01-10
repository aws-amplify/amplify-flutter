// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@WorkerHive([
  SecureStorageWorker,
])
library amplify_secure_storage_dart.workers;

import 'package:amplify_secure_storage_dart/src/worker/secure_storage_worker.dart';
import 'package:worker_bee/worker_bee.dart';
