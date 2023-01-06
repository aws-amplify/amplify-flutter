// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';

/// Creates a codegen context for test cases.
CodegenContext createTestContext(
  List<Shape> shapes, {
  String packageName = 'example',
  String serviceName = 'Test',
}) {
  return CodegenContext(
    smithyVersion: SmithyVersion.v2,
    shapes: ShapeMap({for (var shape in shapes) shape.shapeId: shape}),
    packageName: packageName,
    serviceName: serviceName,
  );
}
