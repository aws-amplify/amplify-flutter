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

import 'package:meta/meta.dart';

// TODO(dnys1): Remove with platform channel code
@immutable
class ModelFieldType {
  final ModelFieldTypeEnum fieldType;

  final String? ofModelName; //opt

  final String? ofCustomTypeName;

  const ModelFieldType(this.fieldType,
      {this.ofModelName, this.ofCustomTypeName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldType': fieldType.name,
      if (ofModelName != null) 'ofModelName': ofModelName,
      if (ofCustomTypeName != null) 'ofCustomTypeName': ofCustomTypeName,
    };
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModelFieldType &&
        fieldType == other.fieldType &&
        ofModelName == other.ofModelName &&
        ofCustomTypeName == other.ofCustomTypeName;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    return 'ModelFieldType(fieldType: $fieldType, ofModelName: $ofModelName, ofCustomTypeName: $ofCustomTypeName)';
  }
}

enum ModelFieldTypeEnum {
  string,
  int,
  double,
  date,
  dateTime,
  time,
  timestamp,
  bool,
  // below types use ofModelName
  enumeration,
  model,
  collection,
  // below types use ofCustomTypeName
  embedded,
  embeddedCollection,
}

extension ModelFieldTypeMethods on ModelFieldTypeEnum {
  bool isArray() {
    switch (this) {
      case ModelFieldTypeEnum.collection:
        return true;
      //case ModelFieldTypeEnum.embeddedCollection:
      //  return true;
      default:
        return false;
    }
  }
}
