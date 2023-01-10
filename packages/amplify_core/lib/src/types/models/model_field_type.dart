// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:meta/meta.dart';

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
