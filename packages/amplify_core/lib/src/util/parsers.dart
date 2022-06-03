/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

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
