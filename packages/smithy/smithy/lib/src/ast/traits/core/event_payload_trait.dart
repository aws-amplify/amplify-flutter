// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Marks a structure member of an event as the event payload.
///
/// This trait can targets members of a structure marked with the event trait
/// that targets a blob or structure.
class EventPayloadTrait extends AnnotationTrait {
  const EventPayloadTrait() : super(id);

  const EventPayloadTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId(namespace: 'smithy.api', shape: 'eventPayload');
}
