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

class AuthTrait extends Trait<List<ShapeId>> {
  const AuthTrait(List<ShapeId> values) : super(id, values);

  AuthTrait.fromJson(Object? json)
      : this((json as List).cast<String>().map(ShapeId.parse).toList());

  static const id = ShapeId.core('auth');

  Set<ShapeId> get values => value.toSet();

  @override
  List<String> toJson() => values.map((shapeId) => shapeId.toJson()).toList();
}
