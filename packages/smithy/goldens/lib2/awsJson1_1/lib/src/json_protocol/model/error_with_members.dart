// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library aws_json1_1_v2.json_protocol.model.error_with_members; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_json1_1_v2/src/json_protocol/model/kitchen_sink.dart';
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'error_with_members.g.dart';

abstract class ErrorWithMembers
    with _i1.AWSEquatable<ErrorWithMembers>
    implements
        Built<ErrorWithMembers, ErrorWithMembersBuilder>,
        _i2.SmithyHttpException {
  factory ErrorWithMembers({
    String? code,
    KitchenSink? complexData,
    int? integerField,
    List<String>? listField,
    Map<String, String>? mapField,
    String? message,
    String? stringField,
  }) {
    return _$ErrorWithMembers._(
      code: code,
      complexData: complexData,
      integerField: integerField,
      listField: listField == null ? null : _i3.BuiltList(listField),
      mapField: mapField == null ? null : _i3.BuiltMap(mapField),
      message: message,
      stringField: stringField,
    );
  }

  factory ErrorWithMembers.build([
    void Function(ErrorWithMembersBuilder) updates,
  ]) = _$ErrorWithMembers;

  const ErrorWithMembers._();

  /// Constructs a [ErrorWithMembers] from a [payload] and [response].
  factory ErrorWithMembers.fromResponse(
    ErrorWithMembers payload,
    _i1.AWSBaseHttpResponse response,
  ) => payload.rebuild((b) {
    b.statusCode = response.statusCode;
    b.headers = response.headers;
  });

  static const List<_i2.SmithySerializer<ErrorWithMembers>> serializers = [
    ErrorWithMembersAwsJson11Serializer(),
  ];

  String? get code;
  KitchenSink? get complexData;
  int? get integerField;
  _i3.BuiltList<String>? get listField;
  _i3.BuiltMap<String, String>? get mapField;
  @override
  String? get message;

  /// abc
  String? get stringField;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
    namespace: 'aws.protocoltests.json',
    shape: 'ErrorWithMembers',
  );

  @override
  _i2.RetryConfig? get retryConfig => null;

  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;

  @override
  List<Object?> get props => [
    code,
    complexData,
    integerField,
    listField,
    mapField,
    message,
    stringField,
  ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ErrorWithMembers')
      ..add('code', code)
      ..add('complexData', complexData)
      ..add('integerField', integerField)
      ..add('listField', listField)
      ..add('mapField', mapField)
      ..add('message', message)
      ..add('stringField', stringField);
    return helper.toString();
  }
}

class ErrorWithMembersAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ErrorWithMembers> {
  const ErrorWithMembersAwsJson11Serializer() : super('ErrorWithMembers');

  @override
  Iterable<Type> get types => const [ErrorWithMembers, _$ErrorWithMembers];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
    _i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  ErrorWithMembers deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorWithMembersBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Code':
          result.code =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'ComplexData':
          result.complexData.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(KitchenSink),
                )
                as KitchenSink),
          );
        case 'IntegerField':
          result.integerField =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )
                  as int);
        case 'ListField':
          result.listField.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i3.BuiltList, [
                    FullType(String),
                  ]),
                )
                as _i3.BuiltList<String>),
          );
        case 'MapField':
          result.mapField.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i3.BuiltMap, [
                    FullType(String),
                    FullType(String),
                  ]),
                )
                as _i3.BuiltMap<String, String>),
          );
        case 'Message':
          result.message =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'StringField':
          result.stringField =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ErrorWithMembers object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ErrorWithMembers(
      :code,
      :complexData,
      :integerField,
      :listField,
      :mapField,
      :message,
      :stringField,
    ) = object;
    if (code != null) {
      result$
        ..add('Code')
        ..add(
          serializers.serialize(code, specifiedType: const FullType(String)),
        );
    }
    if (complexData != null) {
      result$
        ..add('ComplexData')
        ..add(
          serializers.serialize(
            complexData,
            specifiedType: const FullType(KitchenSink),
          ),
        );
    }
    if (integerField != null) {
      result$
        ..add('IntegerField')
        ..add(
          serializers.serialize(
            integerField,
            specifiedType: const FullType(int),
          ),
        );
    }
    if (listField != null) {
      result$
        ..add('ListField')
        ..add(
          serializers.serialize(
            listField,
            specifiedType: const FullType(_i3.BuiltList, [FullType(String)]),
          ),
        );
    }
    if (mapField != null) {
      result$
        ..add('MapField')
        ..add(
          serializers.serialize(
            mapField,
            specifiedType: const FullType(_i3.BuiltMap, [
              FullType(String),
              FullType(String),
            ]),
          ),
        );
    }
    if (message != null) {
      result$
        ..add('Message')
        ..add(
          serializers.serialize(message, specifiedType: const FullType(String)),
        );
    }
    if (stringField != null) {
      result$
        ..add('StringField')
        ..add(
          serializers.serialize(
            stringField,
            specifiedType: const FullType(String),
          ),
        );
    }
    return result$;
  }
}
