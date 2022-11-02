// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library aws_json1_1_v2.json_protocol.model.error_with_members; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_json1_1_v2/src/json_protocol/model/kitchen_sink.dart'
    as _i3;
import 'package:built_collection/built_collection.dart' as _i4;
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
    _i3.KitchenSink? complexData,
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
      listField: listField == null ? null : _i4.BuiltList(listField),
      mapField: mapField == null ? null : _i4.BuiltMap(mapField),
      message: message,
      stringField: stringField,
    );
  }

  factory ErrorWithMembers.build(
      [void Function(ErrorWithMembersBuilder) updates]) = _$ErrorWithMembers;

  const ErrorWithMembers._();

  /// Constructs a [ErrorWithMembers] from a [payload] and [response].
  factory ErrorWithMembers.fromResponse(
    ErrorWithMembers payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ErrorWithMembersAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ErrorWithMembersBuilder b) {}
  String? get code;
  _i3.KitchenSink? get complexData;
  int? get integerField;
  _i4.BuiltList<String>? get listField;
  _i4.BuiltMap<String, String>? get mapField;
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
    final helper = newBuiltValueToStringHelper('ErrorWithMembers');
    helper.add(
      'code',
      code,
    );
    helper.add(
      'complexData',
      complexData,
    );
    helper.add(
      'integerField',
      integerField,
    );
    helper.add(
      'listField',
      listField,
    );
    helper.add(
      'mapField',
      mapField,
    );
    helper.add(
      'message',
      message,
    );
    helper.add(
      'stringField',
      stringField,
    );
    return helper.toString();
  }
}

class ErrorWithMembersAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ErrorWithMembers> {
  const ErrorWithMembersAwsJson11Serializer() : super('ErrorWithMembers');

  @override
  Iterable<Type> get types => const [
        ErrorWithMembers,
        _$ErrorWithMembers,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
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
      switch (key) {
        case 'Code':
          if (value != null) {
            result.code = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ComplexData':
          if (value != null) {
            result.complexData.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.KitchenSink),
            ) as _i3.KitchenSink));
          }
          break;
        case 'IntegerField':
          if (value != null) {
            result.integerField = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'ListField':
          if (value != null) {
            result.listField.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'MapField':
          if (value != null) {
            result.mapField.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i4.BuiltMap<String, String>));
          }
          break;
        case 'Message':
          if (value != null) {
            result.message = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'StringField':
          if (value != null) {
            result.stringField = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as ErrorWithMembers);
    final result = <Object?>[];
    if (payload.code != null) {
      result
        ..add('Code')
        ..add(serializers.serialize(
          payload.code!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.complexData != null) {
      result
        ..add('ComplexData')
        ..add(serializers.serialize(
          payload.complexData!,
          specifiedType: const FullType(_i3.KitchenSink),
        ));
    }
    if (payload.integerField != null) {
      result
        ..add('IntegerField')
        ..add(serializers.serialize(
          payload.integerField!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.listField != null) {
      result
        ..add('ListField')
        ..add(serializers.serialize(
          payload.listField!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.mapField != null) {
      result
        ..add('MapField')
        ..add(serializers.serialize(
          payload.mapField!,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.message != null) {
      result
        ..add('Message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.stringField != null) {
      result
        ..add('StringField')
        ..add(serializers.serialize(
          payload.stringField!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
