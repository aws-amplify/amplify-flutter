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

/// Smithy AST representation.
library smithy_ast;

export 'src/ast/pattern/invalid_pattern_exception.dart';
export 'src/ast/pattern/segment.dart';
export 'src/ast/pattern/smithy_pattern.dart';
export 'src/ast/pattern/uri_pattern.dart';

// Shapes
export 'src/ast/shapes/apply_shape.dart';
export 'src/ast/shapes/big_decimal_shape.dart';
export 'src/ast/shapes/big_integer_shape.dart';
export 'src/ast/shapes/blob_shape.dart';
export 'src/ast/shapes/boolean_shape.dart';
export 'src/ast/shapes/byte_shape.dart';
export 'src/ast/shapes/collection_shape.dart';
export 'src/ast/shapes/document_shape.dart';
export 'src/ast/shapes/double_shape.dart';
export 'src/ast/shapes/entity_shape.dart';
export 'src/ast/shapes/float_shape.dart';
export 'src/ast/shapes/integer_shape.dart';
export 'src/ast/shapes/list_shape.dart';
export 'src/ast/shapes/long_shape.dart';
export 'src/ast/shapes/map_shape.dart';
export 'src/ast/shapes/member_shape.dart';
export 'src/ast/shapes/operation_shape.dart';
export 'src/ast/shapes/primitive_boolean_shape.dart';
export 'src/ast/shapes/primitive_byte_shape.dart';
export 'src/ast/shapes/primitive_double_shape.dart';
export 'src/ast/shapes/primitive_float_shape.dart';
export 'src/ast/shapes/primitive_integer_shape.dart';
export 'src/ast/shapes/primitive_long_shape.dart';
export 'src/ast/shapes/primitive_short_shape.dart';
export 'src/ast/shapes/resource_shape.dart';
export 'src/ast/shapes/service_shape.dart';
export 'src/ast/shapes/set_shape.dart';
export 'src/ast/shapes/shape.dart';
export 'src/ast/shapes/shape_id.dart';
export 'src/ast/shapes/shape_map.dart';
export 'src/ast/shapes/shape_ref.dart';
export 'src/ast/shapes/shape_type.dart';
export 'src/ast/shapes/shape_visitor.dart';
export 'src/ast/shapes/short_shape.dart';
export 'src/ast/shapes/simple_shape.dart';
export 'src/ast/shapes/string_shape.dart';
export 'src/ast/shapes/structure_shape.dart';
export 'src/ast/shapes/timestamp_shape.dart';
export 'src/ast/shapes/trait_map.dart';
export 'src/ast/shapes/union_shape.dart';

export 'src/ast/smithy_ast.dart';

// Traits
export 'src/ast/traits.dart';

// Util
export 'src/ast/util/shape_ext.dart';
