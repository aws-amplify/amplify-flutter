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

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the TestEvent type in your schema. */
@immutable
class TestEvent extends Model {
  static const classType = const _TestEventModelType();
  final String id;
  final String? _testRunId;
  final String? _eventName;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  String get testRunId {
    try {
      return _testRunId!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get eventName {
    try {
      return _eventName!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  const TestEvent._internal(
      {required this.id, required testRunId, required eventName})
      : _testRunId = testRunId,
        _eventName = eventName;

  factory TestEvent(
      {String? id, required String testRunId, required String eventName}) {
    return TestEvent._internal(
        id: id == null ? UUID.getUUID() : id,
        testRunId: testRunId,
        eventName: eventName);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestEvent &&
        id == other.id &&
        _testRunId == other._testRunId &&
        _eventName == other._eventName;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("TestEvent {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("testRunId=" + "$_testRunId" + ", ");
    buffer.write("eventName=" + "$_eventName");
    buffer.write("}");

    return buffer.toString();
  }

  TestEvent copyWith({String? id, String? testRunId, String? eventName}) {
    return TestEvent(
        id: id ?? this.id,
        testRunId: testRunId ?? this.testRunId,
        eventName: eventName ?? this.eventName);
  }

  TestEvent.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _testRunId = json['testRunId'],
        _eventName = json['eventName'];

  Map<String, dynamic> toJson() =>
      {'id': id, 'testRunId': _testRunId, 'eventName': _eventName};

  static final QueryField ID = QueryField(fieldName: "testEvent.id");
  static final QueryField TESTRUNID = QueryField(fieldName: "testRunId");
  static final QueryField EVENTNAME = QueryField(fieldName: "eventName");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "TestEvent";
    modelSchemaDefinition.pluralName = "TestEvents";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestEvent.TESTRUNID,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestEvent.EVENTNAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _TestEventModelType extends ModelType<TestEvent> {
  const _TestEventModelType();

  @override
  TestEvent fromJson(Map<String, dynamic> jsonData) {
    return TestEvent.fromJson(jsonData);
  }
}
