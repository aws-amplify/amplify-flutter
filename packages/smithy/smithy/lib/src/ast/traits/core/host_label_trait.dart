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

/// Binds an input member to a label in the hostPrefix of an endpoint
/// trait on an operation.
class HostLabelTrait extends AnnotationTrait {
  const HostLabelTrait() : super(id);

  const HostLabelTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('hostLabel');
}
