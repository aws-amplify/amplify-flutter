// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.omits_serializing_empty_lists_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i6;
import 'package:rest_json1_v2/src/rest_json_protocol/model/foo_enum.dart'
    as _i3;
import 'package:rest_json1_v2/src/rest_json_protocol/model/integer_enum.dart'
    as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'omits_serializing_empty_lists_input.g.dart';

abstract class OmitsSerializingEmptyListsInput
    with
        _i1.HttpInput<OmitsSerializingEmptyListsInputPayload>,
        _i2.AWSEquatable<OmitsSerializingEmptyListsInput>
    implements
        Built<OmitsSerializingEmptyListsInput,
            OmitsSerializingEmptyListsInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<OmitsSerializingEmptyListsInputPayload> {
  factory OmitsSerializingEmptyListsInput({
    List<bool>? queryBooleanList,
    List<double>? queryDoubleList,
    List<_i3.FooEnum>? queryEnumList,
    List<_i4.IntegerEnum>? queryIntegerEnumList,
    List<int>? queryIntegerList,
    List<String>? queryStringList,
    List<DateTime>? queryTimestampList,
  }) {
    return _$OmitsSerializingEmptyListsInput._(
      queryBooleanList:
          queryBooleanList == null ? null : _i5.BuiltList(queryBooleanList),
      queryDoubleList:
          queryDoubleList == null ? null : _i5.BuiltList(queryDoubleList),
      queryEnumList:
          queryEnumList == null ? null : _i5.BuiltList(queryEnumList),
      queryIntegerEnumList: queryIntegerEnumList == null
          ? null
          : _i5.BuiltList(queryIntegerEnumList),
      queryIntegerList:
          queryIntegerList == null ? null : _i5.BuiltList(queryIntegerList),
      queryStringList:
          queryStringList == null ? null : _i5.BuiltList(queryStringList),
      queryTimestampList:
          queryTimestampList == null ? null : _i5.BuiltList(queryTimestampList),
    );
  }

  factory OmitsSerializingEmptyListsInput.build(
          [void Function(OmitsSerializingEmptyListsInputBuilder) updates]) =
      _$OmitsSerializingEmptyListsInput;

  const OmitsSerializingEmptyListsInput._();

  factory OmitsSerializingEmptyListsInput.fromRequest(
    OmitsSerializingEmptyListsInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      OmitsSerializingEmptyListsInput.build((b) {
        if (request.queryParameters['StringList'] != null) {
          b.queryStringList.addAll(_i1
              .parseHeader(request.queryParameters['StringList']!)
              .map((el) => el.trim()));
        }
        if (request.queryParameters['IntegerList'] != null) {
          b.queryIntegerList.addAll(_i1
              .parseHeader(request.queryParameters['IntegerList']!)
              .map((el) => int.parse(el.trim())));
        }
        if (request.queryParameters['DoubleList'] != null) {
          b.queryDoubleList.addAll(_i1
              .parseHeader(request.queryParameters['DoubleList']!)
              .map((el) => double.parse(el.trim())));
        }
        if (request.queryParameters['BooleanList'] != null) {
          b.queryBooleanList.addAll(_i1
              .parseHeader(request.queryParameters['BooleanList']!)
              .map((el) => el.trim() == 'true'));
        }
        if (request.queryParameters['TimestampList'] != null) {
          b.queryTimestampList.addAll(_i1
              .parseHeader(
                request.queryParameters['TimestampList']!,
                isTimestampList: true,
              )
              .map((el) => _i1.Timestamp.parse(
                    el.trim(),
                    format: _i1.TimestampFormat.httpDate,
                  ).asDateTime));
        }
        if (request.queryParameters['EnumList'] != null) {
          b.queryEnumList.addAll(_i1
              .parseHeader(request.queryParameters['EnumList']!)
              .map((el) => _i3.FooEnum.values.byValue(el.trim())));
        }
        if (request.queryParameters['IntegerEnumList'] != null) {
          b.queryIntegerEnumList.addAll(_i1
              .parseHeader(request.queryParameters['IntegerEnumList']!)
              .map((el) =>
                  _i4.IntegerEnum.values.byValue(int.parse(el.trim()))));
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    OmitsSerializingEmptyListsInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OmitsSerializingEmptyListsInputBuilder b) {}
  _i5.BuiltList<bool>? get queryBooleanList;
  _i5.BuiltList<double>? get queryDoubleList;
  _i5.BuiltList<_i3.FooEnum>? get queryEnumList;
  _i5.BuiltList<_i4.IntegerEnum>? get queryIntegerEnumList;
  _i5.BuiltList<int>? get queryIntegerList;
  _i5.BuiltList<String>? get queryStringList;
  _i5.BuiltList<DateTime>? get queryTimestampList;
  @override
  OmitsSerializingEmptyListsInputPayload getPayload() =>
      OmitsSerializingEmptyListsInputPayload();
  @override
  List<Object?> get props => [
        queryBooleanList,
        queryDoubleList,
        queryEnumList,
        queryIntegerEnumList,
        queryIntegerList,
        queryStringList,
        queryTimestampList,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('OmitsSerializingEmptyListsInput');
    helper.add(
      'queryBooleanList',
      queryBooleanList,
    );
    helper.add(
      'queryDoubleList',
      queryDoubleList,
    );
    helper.add(
      'queryEnumList',
      queryEnumList,
    );
    helper.add(
      'queryIntegerEnumList',
      queryIntegerEnumList,
    );
    helper.add(
      'queryIntegerList',
      queryIntegerList,
    );
    helper.add(
      'queryStringList',
      queryStringList,
    );
    helper.add(
      'queryTimestampList',
      queryTimestampList,
    );
    return helper.toString();
  }
}

@_i6.internal
abstract class OmitsSerializingEmptyListsInputPayload
    with
        _i2.AWSEquatable<OmitsSerializingEmptyListsInputPayload>
    implements
        Built<OmitsSerializingEmptyListsInputPayload,
            OmitsSerializingEmptyListsInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory OmitsSerializingEmptyListsInputPayload(
      [void Function(OmitsSerializingEmptyListsInputPayloadBuilder)
          updates]) = _$OmitsSerializingEmptyListsInputPayload;

  const OmitsSerializingEmptyListsInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OmitsSerializingEmptyListsInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('OmitsSerializingEmptyListsInputPayload');
    return helper.toString();
  }
}

class OmitsSerializingEmptyListsInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<OmitsSerializingEmptyListsInputPayload> {
  const OmitsSerializingEmptyListsInputRestJson1Serializer()
      : super('OmitsSerializingEmptyListsInput');

  @override
  Iterable<Type> get types => const [
        OmitsSerializingEmptyListsInput,
        _$OmitsSerializingEmptyListsInput,
        OmitsSerializingEmptyListsInputPayload,
        _$OmitsSerializingEmptyListsInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  OmitsSerializingEmptyListsInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return OmitsSerializingEmptyListsInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
