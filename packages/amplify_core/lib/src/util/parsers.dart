// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: public_member_api_docs

// only to be used internally by amplify-flutter library
import 'package:collection/collection.dart' show IterableExtension;

String? enumToString(Enum? obj) => obj?.name;

// only to be used internally by amplify-flutter library
T? enumFromString<T extends Enum>(String? key, List<T> values) =>
    values.firstWhereOrNull((v) => key == enumToString(v));

/// check whether an dynamic type [value] is an enum
bool isEnum(dynamic value) {
  final split = value.toString().split('.');
  return split.length > 1 && split[0] == value.runtimeType.toString();
}
