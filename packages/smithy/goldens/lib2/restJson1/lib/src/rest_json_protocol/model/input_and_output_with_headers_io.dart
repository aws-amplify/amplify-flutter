// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.input_and_output_with_headers_io; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i5;
import 'package:meta/meta.dart' as _i6;
import 'package:rest_json1_v2/src/rest_json_protocol/model/foo_enum.dart'
    as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'input_and_output_with_headers_io.g.dart';

abstract class InputAndOutputWithHeadersIo
    with
        _i1.HttpInput<InputAndOutputWithHeadersIoPayload>,
        _i2.AWSEquatable<InputAndOutputWithHeadersIo>
    implements
        Built<InputAndOutputWithHeadersIo, InputAndOutputWithHeadersIoBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<InputAndOutputWithHeadersIoPayload> {
  factory InputAndOutputWithHeadersIo(
      {_i3.BuiltList<bool>? headerBooleanList,
      int? headerByte,
      double? headerDouble,
      _i4.FooEnum? headerEnum,
      _i3.BuiltList<_i4.FooEnum>? headerEnumList,
      bool? headerFalseBool,
      double? headerFloat,
      int? headerInteger,
      _i3.BuiltList<int>? headerIntegerList,
      _i5.Int64? headerLong,
      int? headerShort,
      String? headerString,
      _i3.BuiltList<String>? headerStringList,
      _i3.BuiltSet<String>? headerStringSet,
      _i3.BuiltList<DateTime>? headerTimestampList,
      bool? headerTrueBool}) {
    return _$InputAndOutputWithHeadersIo._(
        headerBooleanList: headerBooleanList,
        headerByte: headerByte,
        headerDouble: headerDouble,
        headerEnum: headerEnum,
        headerEnumList: headerEnumList,
        headerFalseBool: headerFalseBool,
        headerFloat: headerFloat,
        headerInteger: headerInteger,
        headerIntegerList: headerIntegerList,
        headerLong: headerLong,
        headerShort: headerShort,
        headerString: headerString,
        headerStringList: headerStringList,
        headerStringSet: headerStringSet,
        headerTimestampList: headerTimestampList,
        headerTrueBool: headerTrueBool);
  }

  factory InputAndOutputWithHeadersIo.build(
          [void Function(InputAndOutputWithHeadersIoBuilder) updates]) =
      _$InputAndOutputWithHeadersIo;

  const InputAndOutputWithHeadersIo._();

  factory InputAndOutputWithHeadersIo.fromRequest(
          InputAndOutputWithHeadersIoPayload payload,
          _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      InputAndOutputWithHeadersIo.build((b) {
        if (request.headers['X-String'] != null) {
          b.headerString = request.headers['X-String']!;
        }
        if (request.headers['X-Byte'] != null) {
          b.headerByte = int.parse(request.headers['X-Byte']!);
        }
        if (request.headers['X-Short'] != null) {
          b.headerShort = int.parse(request.headers['X-Short']!);
        }
        if (request.headers['X-Integer'] != null) {
          b.headerInteger = int.parse(request.headers['X-Integer']!);
        }
        if (request.headers['X-Long'] != null) {
          b.headerLong = _i5.Int64.parseInt(request.headers['X-Long']!);
        }
        if (request.headers['X-Float'] != null) {
          b.headerFloat = double.parse(request.headers['X-Float']!);
        }
        if (request.headers['X-Double'] != null) {
          b.headerDouble = double.parse(request.headers['X-Double']!);
        }
        if (request.headers['X-Boolean1'] != null) {
          b.headerTrueBool = request.headers['X-Boolean1']! == 'true';
        }
        if (request.headers['X-Boolean2'] != null) {
          b.headerFalseBool = request.headers['X-Boolean2']! == 'true';
        }
        if (request.headers['X-StringList'] != null) {
          b.headerStringList.addAll(_i1
              .parseHeader(request.headers['X-StringList']!)
              .map((el) => el.trim()));
        }
        if (request.headers['X-StringSet'] != null) {
          b.headerStringSet.addAll(_i1
              .parseHeader(request.headers['X-StringSet']!)
              .map((el) => el.trim()));
        }
        if (request.headers['X-IntegerList'] != null) {
          b.headerIntegerList.addAll(_i1
              .parseHeader(request.headers['X-IntegerList']!)
              .map((el) => int.parse(el.trim())));
        }
        if (request.headers['X-BooleanList'] != null) {
          b.headerBooleanList.addAll(_i1
              .parseHeader(request.headers['X-BooleanList']!)
              .map((el) => el.trim() == 'true'));
        }
        if (request.headers['X-TimestampList'] != null) {
          b.headerTimestampList.addAll(_i1
              .parseHeader(request.headers['X-TimestampList']!,
                  isTimestampList: true)
              .map((el) => _i1.Timestamp.parse(el.trim(),
                      format: _i1.TimestampFormat.httpDate)
                  .asDateTime));
        }
        if (request.headers['X-Enum'] != null) {
          b.headerEnum = _i4.FooEnum.values.byValue(request.headers['X-Enum']!);
        }
        if (request.headers['X-EnumList'] != null) {
          b.headerEnumList.addAll(_i1
              .parseHeader(request.headers['X-EnumList']!)
              .map((el) => _i4.FooEnum.values.byValue(el.trim())));
        }
      });

  /// Constructs a [InputAndOutputWithHeadersIo] from a [payload] and [response].
  factory InputAndOutputWithHeadersIo.fromResponse(
          InputAndOutputWithHeadersIoPayload payload,
          _i2.AWSBaseHttpResponse response) =>
      InputAndOutputWithHeadersIo.build((b) {
        if (response.headers['X-String'] != null) {
          b.headerString = response.headers['X-String']!;
        }
        if (response.headers['X-Byte'] != null) {
          b.headerByte = int.parse(response.headers['X-Byte']!);
        }
        if (response.headers['X-Short'] != null) {
          b.headerShort = int.parse(response.headers['X-Short']!);
        }
        if (response.headers['X-Integer'] != null) {
          b.headerInteger = int.parse(response.headers['X-Integer']!);
        }
        if (response.headers['X-Long'] != null) {
          b.headerLong = _i5.Int64.parseInt(response.headers['X-Long']!);
        }
        if (response.headers['X-Float'] != null) {
          b.headerFloat = double.parse(response.headers['X-Float']!);
        }
        if (response.headers['X-Double'] != null) {
          b.headerDouble = double.parse(response.headers['X-Double']!);
        }
        if (response.headers['X-Boolean1'] != null) {
          b.headerTrueBool = response.headers['X-Boolean1']! == 'true';
        }
        if (response.headers['X-Boolean2'] != null) {
          b.headerFalseBool = response.headers['X-Boolean2']! == 'true';
        }
        if (response.headers['X-StringList'] != null) {
          b.headerStringList.addAll(_i1
              .parseHeader(response.headers['X-StringList']!)
              .map((el) => el.trim()));
        }
        if (response.headers['X-StringSet'] != null) {
          b.headerStringSet.addAll(_i1
              .parseHeader(response.headers['X-StringSet']!)
              .map((el) => el.trim()));
        }
        if (response.headers['X-IntegerList'] != null) {
          b.headerIntegerList.addAll(_i1
              .parseHeader(response.headers['X-IntegerList']!)
              .map((el) => int.parse(el.trim())));
        }
        if (response.headers['X-BooleanList'] != null) {
          b.headerBooleanList.addAll(_i1
              .parseHeader(response.headers['X-BooleanList']!)
              .map((el) => el.trim() == 'true'));
        }
        if (response.headers['X-TimestampList'] != null) {
          b.headerTimestampList.addAll(_i1
              .parseHeader(response.headers['X-TimestampList']!,
                  isTimestampList: true)
              .map((el) => _i1.Timestamp.parse(el.trim(),
                      format: _i1.TimestampFormat.httpDate)
                  .asDateTime));
        }
        if (response.headers['X-Enum'] != null) {
          b.headerEnum =
              _i4.FooEnum.values.byValue(response.headers['X-Enum']!);
        }
        if (response.headers['X-EnumList'] != null) {
          b.headerEnumList.addAll(_i1
              .parseHeader(response.headers['X-EnumList']!)
              .map((el) => _i4.FooEnum.values.byValue(el.trim())));
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    InputAndOutputWithHeadersIoRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InputAndOutputWithHeadersIoBuilder b) {}
  _i3.BuiltList<bool>? get headerBooleanList;
  int? get headerByte;
  double? get headerDouble;
  _i4.FooEnum? get headerEnum;
  _i3.BuiltList<_i4.FooEnum>? get headerEnumList;
  bool? get headerFalseBool;
  double? get headerFloat;
  int? get headerInteger;
  _i3.BuiltList<int>? get headerIntegerList;
  _i5.Int64? get headerLong;
  int? get headerShort;
  String? get headerString;
  _i3.BuiltList<String>? get headerStringList;
  _i3.BuiltSet<String>? get headerStringSet;
  _i3.BuiltList<DateTime>? get headerTimestampList;
  bool? get headerTrueBool;
  @override
  InputAndOutputWithHeadersIoPayload getPayload() =>
      InputAndOutputWithHeadersIoPayload();
  @override
  List<Object?> get props => [
        headerBooleanList,
        headerByte,
        headerDouble,
        headerEnum,
        headerEnumList,
        headerFalseBool,
        headerFloat,
        headerInteger,
        headerIntegerList,
        headerLong,
        headerShort,
        headerString,
        headerStringList,
        headerStringSet,
        headerTimestampList,
        headerTrueBool
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InputAndOutputWithHeadersIo');
    helper.add('headerBooleanList', headerBooleanList);
    helper.add('headerByte', headerByte);
    helper.add('headerDouble', headerDouble);
    helper.add('headerEnum', headerEnum);
    helper.add('headerEnumList', headerEnumList);
    helper.add('headerFalseBool', headerFalseBool);
    helper.add('headerFloat', headerFloat);
    helper.add('headerInteger', headerInteger);
    helper.add('headerIntegerList', headerIntegerList);
    helper.add('headerLong', headerLong);
    helper.add('headerShort', headerShort);
    helper.add('headerString', headerString);
    helper.add('headerStringList', headerStringList);
    helper.add('headerStringSet', headerStringSet);
    helper.add('headerTimestampList', headerTimestampList);
    helper.add('headerTrueBool', headerTrueBool);
    return helper.toString();
  }
}

@_i6.internal
abstract class InputAndOutputWithHeadersIoPayload
    with
        _i2.AWSEquatable<InputAndOutputWithHeadersIoPayload>
    implements
        Built<InputAndOutputWithHeadersIoPayload,
            InputAndOutputWithHeadersIoPayloadBuilder>,
        _i1.EmptyPayload {
  factory InputAndOutputWithHeadersIoPayload(
          [void Function(InputAndOutputWithHeadersIoPayloadBuilder) updates]) =
      _$InputAndOutputWithHeadersIoPayload;

  const InputAndOutputWithHeadersIoPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InputAndOutputWithHeadersIoPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('InputAndOutputWithHeadersIoPayload');
    return helper.toString();
  }
}

class InputAndOutputWithHeadersIoRestJson1Serializer
    extends _i1.StructuredSmithySerializer<InputAndOutputWithHeadersIoPayload> {
  const InputAndOutputWithHeadersIoRestJson1Serializer()
      : super('InputAndOutputWithHeadersIo');

  @override
  Iterable<Type> get types => const [
        InputAndOutputWithHeadersIo,
        _$InputAndOutputWithHeadersIo,
        InputAndOutputWithHeadersIoPayload,
        _$InputAndOutputWithHeadersIoPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  InputAndOutputWithHeadersIoPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return InputAndOutputWithHeadersIoPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
