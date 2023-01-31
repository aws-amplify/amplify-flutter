// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@WorkerHive([
  HashWorker,
])

import 'package:aws_signature_v4/src/workers/hash_worker.dart';
import 'package:worker_bee/worker_bee.dart';
