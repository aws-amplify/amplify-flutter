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

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:meta/meta.dart';

class InvalidModel extends Model {
  static final QueryField ID = new QueryField("id");

  @override
  @ModelField(targetType: 'ID', isRequired: true)
  final String id;

  // Constructors
  const InvalidModel._internal(
      {@required this.id});

  factory InvalidModel(
      {String id}) {
    return InvalidModel._internal(id: id);
  }

  // Utility methods for immutability
  InvalidModel copyWith({@required String id}) {
    return InvalidModel(
      id: id ?? this.id);
  }

  // De/serialization methods
  InvalidModel.fromJson(Map<String, dynamic> json)
      : id = json['id'];

  Map<String, dynamic> toJson() => {
        'id': id,
      };

  // Equals and toString() and hash()
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidModel &&
        id == other.id;
  }

  @override
  int get hashCode => super.hashCode;

  bool equals(Object other) {
    return this == other;
  }
}

class InvalidType extends ModelType<InvalidModel> {
  const InvalidType();

  @override
  InvalidModel fromJson(Map<String, dynamic> jsonData) {
    return InvalidModel.fromJson(jsonData);
  }
}
