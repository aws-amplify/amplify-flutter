// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_xml_v2.rest_xml_protocol.model.all_query_string_types_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i5;
import 'package:meta/meta.dart' as _i6;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/foo_enum.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'all_query_string_types_input.g.dart';

abstract class AllQueryStringTypesInput
    with
        _i1.HttpInput<AllQueryStringTypesInputPayload>,
        _i2.AWSEquatable<AllQueryStringTypesInput>
    implements
        Built<AllQueryStringTypesInput, AllQueryStringTypesInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<AllQueryStringTypesInputPayload> {
  factory AllQueryStringTypesInput(
      {bool? queryBoolean,
      _i3.BuiltList<bool>? queryBooleanList,
      int? queryByte,
      double? queryDouble,
      _i3.BuiltList<double>? queryDoubleList,
      _i4.FooEnum? queryEnum,
      _i3.BuiltList<_i4.FooEnum>? queryEnumList,
      double? queryFloat,
      int? queryInteger,
      _i3.BuiltList<int>? queryIntegerList,
      _i3.BuiltSet<int>? queryIntegerSet,
      _i5.Int64? queryLong,
      _i3.BuiltMap<String, String>? queryParamsMapOfStrings,
      int? queryShort,
      String? queryString,
      _i3.BuiltList<String>? queryStringList,
      _i3.BuiltSet<String>? queryStringSet,
      DateTime? queryTimestamp,
      _i3.BuiltList<DateTime>? queryTimestampList}) {
    return _$AllQueryStringTypesInput._(
        queryBoolean: queryBoolean,
        queryBooleanList: queryBooleanList,
        queryByte: queryByte,
        queryDouble: queryDouble,
        queryDoubleList: queryDoubleList,
        queryEnum: queryEnum,
        queryEnumList: queryEnumList,
        queryFloat: queryFloat,
        queryInteger: queryInteger,
        queryIntegerList: queryIntegerList,
        queryIntegerSet: queryIntegerSet,
        queryLong: queryLong,
        queryParamsMapOfStrings: queryParamsMapOfStrings,
        queryShort: queryShort,
        queryString: queryString,
        queryStringList: queryStringList,
        queryStringSet: queryStringSet,
        queryTimestamp: queryTimestamp,
        queryTimestampList: queryTimestampList);
  }

  factory AllQueryStringTypesInput.build(
          [void Function(AllQueryStringTypesInputBuilder) updates]) =
      _$AllQueryStringTypesInput;

  const AllQueryStringTypesInput._();

  factory AllQueryStringTypesInput.fromRequest(
          AllQueryStringTypesInputPayload payload,
          _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      AllQueryStringTypesInput.build((b) {
        if (request.queryParameters['String'] != null) {
          b.queryString = request.queryParameters['String']!;
        }
        if (request.queryParameters['StringList'] != null) {
          b.queryStringList.addAll(_i1
              .parseHeader(request.queryParameters['StringList']!)
              .map((el) => el.trim()));
        }
        if (request.queryParameters['StringSet'] != null) {
          b.queryStringSet.addAll(_i1
              .parseHeader(request.queryParameters['StringSet']!)
              .map((el) => el.trim()));
        }
        if (request.queryParameters['Byte'] != null) {
          b.queryByte = int.parse(request.queryParameters['Byte']!);
        }
        if (request.queryParameters['Short'] != null) {
          b.queryShort = int.parse(request.queryParameters['Short']!);
        }
        if (request.queryParameters['Integer'] != null) {
          b.queryInteger = int.parse(request.queryParameters['Integer']!);
        }
        if (request.queryParameters['IntegerList'] != null) {
          b.queryIntegerList.addAll(_i1
              .parseHeader(request.queryParameters['IntegerList']!)
              .map((el) => int.parse(el.trim())));
        }
        if (request.queryParameters['IntegerSet'] != null) {
          b.queryIntegerSet.addAll(_i1
              .parseHeader(request.queryParameters['IntegerSet']!)
              .map((el) => int.parse(el.trim())));
        }
        if (request.queryParameters['Long'] != null) {
          b.queryLong = _i5.Int64.parseInt(request.queryParameters['Long']!);
        }
        if (request.queryParameters['Float'] != null) {
          b.queryFloat = double.parse(request.queryParameters['Float']!);
        }
        if (request.queryParameters['Double'] != null) {
          b.queryDouble = double.parse(request.queryParameters['Double']!);
        }
        if (request.queryParameters['DoubleList'] != null) {
          b.queryDoubleList.addAll(_i1
              .parseHeader(request.queryParameters['DoubleList']!)
              .map((el) => double.parse(el.trim())));
        }
        if (request.queryParameters['Boolean'] != null) {
          b.queryBoolean = request.queryParameters['Boolean']! == 'true';
        }
        if (request.queryParameters['BooleanList'] != null) {
          b.queryBooleanList.addAll(_i1
              .parseHeader(request.queryParameters['BooleanList']!)
              .map((el) => el.trim() == 'true'));
        }
        if (request.queryParameters['Timestamp'] != null) {
          b.queryTimestamp = _i1.Timestamp.parse(
                  request.queryParameters['Timestamp']!,
                  format: _i1.TimestampFormat.dateTime)
              .asDateTime;
        }
        if (request.queryParameters['TimestampList'] != null) {
          b.queryTimestampList.addAll(_i1
              .parseHeader(request.queryParameters['TimestampList']!,
                  isTimestampList: true)
              .map((el) => _i1.Timestamp.parse(el.trim(),
                      format: _i1.TimestampFormat.httpDate)
                  .asDateTime));
        }
        if (request.queryParameters['Enum'] != null) {
          b.queryEnum =
              _i4.FooEnum.values.byValue(request.queryParameters['Enum']!);
        }
        if (request.queryParameters['EnumList'] != null) {
          b.queryEnumList.addAll(_i1
              .parseHeader(request.queryParameters['EnumList']!)
              .map((el) => _i4.FooEnum.values.byValue(el.trim())));
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    AllQueryStringTypesInputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AllQueryStringTypesInputBuilder b) {}
  bool? get queryBoolean;
  _i3.BuiltList<bool>? get queryBooleanList;
  int? get queryByte;
  double? get queryDouble;
  _i3.BuiltList<double>? get queryDoubleList;
  _i4.FooEnum? get queryEnum;
  _i3.BuiltList<_i4.FooEnum>? get queryEnumList;
  double? get queryFloat;
  int? get queryInteger;
  _i3.BuiltList<int>? get queryIntegerList;
  _i3.BuiltSet<int>? get queryIntegerSet;
  _i5.Int64? get queryLong;
  _i3.BuiltMap<String, String>? get queryParamsMapOfStrings;
  int? get queryShort;
  String? get queryString;
  _i3.BuiltList<String>? get queryStringList;
  _i3.BuiltSet<String>? get queryStringSet;
  DateTime? get queryTimestamp;
  _i3.BuiltList<DateTime>? get queryTimestampList;
  @override
  AllQueryStringTypesInputPayload getPayload() =>
      AllQueryStringTypesInputPayload();
  @override
  List<Object?> get props => [
        queryBoolean,
        queryBooleanList,
        queryByte,
        queryDouble,
        queryDoubleList,
        queryEnum,
        queryEnumList,
        queryFloat,
        queryInteger,
        queryIntegerList,
        queryIntegerSet,
        queryLong,
        queryParamsMapOfStrings,
        queryShort,
        queryString,
        queryStringList,
        queryStringSet,
        queryTimestamp,
        queryTimestampList
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AllQueryStringTypesInput');
    helper.add('queryBoolean', queryBoolean);
    helper.add('queryBooleanList', queryBooleanList);
    helper.add('queryByte', queryByte);
    helper.add('queryDouble', queryDouble);
    helper.add('queryDoubleList', queryDoubleList);
    helper.add('queryEnum', queryEnum);
    helper.add('queryEnumList', queryEnumList);
    helper.add('queryFloat', queryFloat);
    helper.add('queryInteger', queryInteger);
    helper.add('queryIntegerList', queryIntegerList);
    helper.add('queryIntegerSet', queryIntegerSet);
    helper.add('queryLong', queryLong);
    helper.add('queryParamsMapOfStrings', queryParamsMapOfStrings);
    helper.add('queryShort', queryShort);
    helper.add('queryString', queryString);
    helper.add('queryStringList', queryStringList);
    helper.add('queryStringSet', queryStringSet);
    helper.add('queryTimestamp', queryTimestamp);
    helper.add('queryTimestampList', queryTimestampList);
    return helper.toString();
  }
}

@_i6.internal
abstract class AllQueryStringTypesInputPayload
    with
        _i2.AWSEquatable<AllQueryStringTypesInputPayload>
    implements
        Built<AllQueryStringTypesInputPayload,
            AllQueryStringTypesInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory AllQueryStringTypesInputPayload(
          [void Function(AllQueryStringTypesInputPayloadBuilder) updates]) =
      _$AllQueryStringTypesInputPayload;

  const AllQueryStringTypesInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AllQueryStringTypesInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AllQueryStringTypesInputPayload');
    return helper.toString();
  }
}

class AllQueryStringTypesInputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<AllQueryStringTypesInputPayload> {
  const AllQueryStringTypesInputRestXmlSerializer()
      : super('AllQueryStringTypesInput');

  @override
  Iterable<Type> get types => const [
        AllQueryStringTypesInput,
        _$AllQueryStringTypesInput,
        AllQueryStringTypesInputPayload,
        _$AllQueryStringTypesInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  AllQueryStringTypesInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return AllQueryStringTypesInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is AllQueryStringTypesInput
        ? object.getPayload()
        : (object as AllQueryStringTypesInputPayload);
    final result = <Object?>[
      const _i1.XmlElementName('AllQueryStringTypesInput')
    ];
    return result;
  }
}
