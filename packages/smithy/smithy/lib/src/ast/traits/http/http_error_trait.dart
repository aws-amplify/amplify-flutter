// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

class HttpErrorTrait extends Trait<int> {
  const HttpErrorTrait(int code) : super(id, code);

  const HttpErrorTrait.fromJson(Object? json) : this(json as int);

  static const id = ShapeId.core('httpError');

  int get code => value;

  @override
  bool get isSynthetic => false;

  @override
  int toJson() => value;
}
