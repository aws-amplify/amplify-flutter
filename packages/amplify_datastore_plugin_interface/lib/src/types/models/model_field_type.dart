/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

class ModelFieldType {
  final ModelFieldTypeEnum fieldType;

  // Jithin Roy is working to allow String Name's instead of the actual Type to be passed into the native APIs
  // this field is meant to add extra info if fieldType is enumeration, embedded, etc.
  final String ofModelName; //opt

  const ModelFieldType(this.fieldType, {this.ofModelName = ""});

  static ModelFieldType from(Type type) {
    // ETC TODO
  }

  //isArray
  //isMap (would have key value pair)

  Map<String, dynamic> toMap() {
    return {
      'fieldType': fieldType.index,
      'ofModelName': ofModelName,
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
        ofModelName == other.ofModelName;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("ModelFieldType {");
    buffer.write("fieldType=" + fieldType.toString() + ", ");
    buffer.write("ofModelName=" + ofModelName);
    buffer.write("}");

    return buffer.toString();
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

  // below uses modelName
  enumeration,
  //embedded, - ignore non model types for now
  //embeddedCollection,
  model,
  collection
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
