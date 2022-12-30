// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_collection/built_collection.dart';
import 'package:smithy/ast.dart';

/// Abstract class representing service and resource shapes.
abstract class EntityShape implements Shape {
  BuiltSet<ShapeRef> get resources;
  BuiltSet<ShapeRef> get operations;
}
