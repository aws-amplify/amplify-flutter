// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

class DocumentationTrait extends StringTrait {
  const DocumentationTrait(String value) : super(id, value);

  const DocumentationTrait.fromJson(Object? json) : super(id, json as String);

  static const id = ShapeId(namespace: 'smithy.api', shape: 'documentation');
}
