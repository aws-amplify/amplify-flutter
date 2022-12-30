// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Marks a structure member of an event as an event header.
///
/// This trait can targets members of a structure marked with the event
/// trait that targets blob, boolean, integer, long, string, or timestamp.
class EventHeaderTrait extends AnnotationTrait {
  const EventHeaderTrait() : super(id);

  const EventHeaderTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('eventHeader');
}
