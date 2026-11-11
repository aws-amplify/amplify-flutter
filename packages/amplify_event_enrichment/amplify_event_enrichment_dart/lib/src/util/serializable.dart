// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';

/// Serialization options for the analytics event envelope.
///
/// The envelope is snake_case, omits absent fields and sections entirely, and
/// nests its sections as objects, so `fieldRename`, `includeIfNull` and
/// `explicitToJson` are all fixed here rather than repeated on every class.
///
/// `createFactory` is off because the envelope is only ever written. Nothing
/// in this package parses it back; consumers of the emitted JSON own that.
const zEventEnrichmentSerializable = JsonSerializable(
  fieldRename: FieldRename.snake,
  includeIfNull: false,
  explicitToJson: true,
  createFactory: false,
);
