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

import 'package:smithy/ast.dart';

/// Shapes marked with the internal trait are meant only for internal use and
/// must not be exposed to customers.
class InternalTrait extends AnnotationTrait {
  const InternalTrait() : super(id);

  const InternalTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('internal');
}
