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

import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;

/// {@macro amplify_drift_util.construct_db}
LazyDatabase constructDb({
  required String name,
  String? path,
}) {
  assert(path != null, 'path cannot be null on vm.');
  final db = LazyDatabase(() async {
    final file = File(p.join(path!, 'com.amplify.$name.sqlite'));
    return NativeDatabase(file);
  });
  return db;
}
