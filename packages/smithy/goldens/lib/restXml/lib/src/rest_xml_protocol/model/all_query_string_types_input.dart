// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_xml_v1.rest_xml_protocol.model.all_query_string_types_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:meta/meta.dart' as _i6;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/foo_enum.dart' as _i4;
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
  factory AllQueryStringTypesInput({
    String? queryString,
    List<String>? queryStringList,
    Set<String>? queryStringSet,
    int? queryByte,
    int? queryShort,
    int? queryInteger,
    List<int>? queryIntegerList,
    Set<int>? queryIntegerSet,
    _i3.Int64? queryLong,
    double? queryFloat,
    double? queryDouble,
    List<double>? queryDoubleList,
    bool? queryBoolean,
    List<bool>? queryBooleanList,
    DateTime? queryTimestamp,
    List<DateTime>? queryTimestampList,
    _i4.FooEnum? queryEnum,
    List<_i4.FooEnum>? queryEnumList,
    int? queryIntegerEnum,
    List<int>? queryIntegerEnumList,
    Map<String, String>? queryParamsMapOfStrings,
  }) {
    return _$AllQueryStringTypesInput._(
      queryString: queryString,
      queryStringList:
          queryStringList == null ? null : _i5.BuiltList(queryStringList),
      queryStringSet:
          queryStringSet == null ? null : _i5.BuiltSet(queryStringSet),
      queryByte: queryByte,
      queryShort: queryShort,
      queryInteger: queryInteger,
      queryIntegerList:
          queryIntegerList == null ? null : _i5.BuiltList(queryIntegerList),
      queryIntegerSet:
          queryIntegerSet == null ? null : _i5.BuiltSet(queryIntegerSet),
      queryLong: queryLong,
      queryFloat: queryFloat,
      queryDouble: queryDouble,
      queryDoubleList:
          queryDoubleList == null ? null : _i5.BuiltList(queryDoubleList),
      queryBoolean: queryBoolean,
      queryBooleanList:
          queryBooleanList == null ? null : _i5.BuiltList(queryBooleanList),
      queryTimestamp: queryTimestamp,
      queryTimestampList:
          queryTimestampList == null ? null : _i5.BuiltList(queryTimestampList),
      queryEnum: queryEnum,
      queryEnumList:
          queryEnumList == null ? null : _i5.BuiltList(queryEnumList),
      queryIntegerEnum: queryIntegerEnum,
      queryIntegerEnumList: queryIntegerEnumList == null
          ? null
          : _i5.BuiltList(queryIntegerEnumList),
      queryParamsMapOfStrings: queryParamsMapOfStrings == null
          ? null
          : _i5.BuiltMap(queryParamsMapOfStrings),
    );
  }

  factory AllQueryStringTypesInput.build(
          [void Function(AllQueryStringTypesInputBuilder) updates]) =
      _$AllQueryStringTypesInput;

  const AllQueryStringTypesInput._();

  factory AllQueryStringTypesInput.fromRequest(
    AllQueryStringTypesInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
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
          b.queryLong = _i3.Int64.parseInt(request.queryParameters['Long']!);
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
            format: _i1.TimestampFormat.dateTime,
          ).asDateTime;
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
        if (request.queryParameters['Enum'] != null) {
          b.queryEnum =
              _i4.FooEnum.values.byValue(request.queryParameters['Enum']!);
        }
        if (request.queryParameters['EnumList'] != null) {
          b.queryEnumList.addAll(_i1
              .parseHeader(request.queryParameters['EnumList']!)
              .map((el) => _i4.FooEnum.values.byValue(el.trim())));
        }
        if (request.queryParameters['IntegerEnum'] != null) {
          b.queryIntegerEnum =
              int.parse(request.queryParameters['IntegerEnum']!);
        }
        if (request.queryParameters['IntegerEnumList'] != null) {
          b.queryIntegerEnumList.addAll(_i1
              .parseHeader(request.queryParameters['IntegerEnumList']!)
              .map((el) => int.parse(el.trim())));
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    AllQueryStringTypesInputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AllQueryStringTypesInputBuilder b) {}
  String? get queryString;
  _i5.BuiltList<String>? get queryStringList;
  _i5.BuiltSet<String>? get queryStringSet;
  int? get queryByte;
  int? get queryShort;
  int? get queryInteger;
  _i5.BuiltList<int>? get queryIntegerList;
  _i5.BuiltSet<int>? get queryIntegerSet;
  _i3.Int64? get queryLong;
  double? get queryFloat;
  double? get queryDouble;
  _i5.BuiltList<double>? get queryDoubleList;
  bool? get queryBoolean;
  _i5.BuiltList<bool>? get queryBooleanList;
  DateTime? get queryTimestamp;
  _i5.BuiltList<DateTime>? get queryTimestampList;
  _i4.FooEnum? get queryEnum;
  _i5.BuiltList<_i4.FooEnum>? get queryEnumList;
  int? get queryIntegerEnum;
  _i5.BuiltList<int>? get queryIntegerEnumList;
  _i5.BuiltMap<String, String>? get queryParamsMapOfStrings;
  @override
  AllQueryStringTypesInputPayload getPayload() =>
      AllQueryStringTypesInputPayload();
  @override
  List<Object?> get props => [
        queryString,
        queryStringList,
        queryStringSet,
        queryByte,
        queryShort,
        queryInteger,
        queryIntegerList,
        queryIntegerSet,
        queryLong,
        queryFloat,
        queryDouble,
        queryDoubleList,
        queryBoolean,
        queryBooleanList,
        queryTimestamp,
        queryTimestampList,
        queryEnum,
        queryEnumList,
        queryIntegerEnum,
        queryIntegerEnumList,
        queryParamsMapOfStrings,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AllQueryStringTypesInput');
    helper.add(
      'queryString',
      queryString,
    );
    helper.add(
      'queryStringList',
      queryStringList,
    );
    helper.add(
      'queryStringSet',
      queryStringSet,
    );
    helper.add(
      'queryByte',
      queryByte,
    );
    helper.add(
      'queryShort',
      queryShort,
    );
    helper.add(
      'queryInteger',
      queryInteger,
    );
    helper.add(
      'queryIntegerList',
      queryIntegerList,
    );
    helper.add(
      'queryIntegerSet',
      queryIntegerSet,
    );
    helper.add(
      'queryLong',
      queryLong,
    );
    helper.add(
      'queryFloat',
      queryFloat,
    );
    helper.add(
      'queryDouble',
      queryDouble,
    );
    helper.add(
      'queryDoubleList',
      queryDoubleList,
    );
    helper.add(
      'queryBoolean',
      queryBoolean,
    );
    helper.add(
      'queryBooleanList',
      queryBooleanList,
    );
    helper.add(
      'queryTimestamp',
      queryTimestamp,
    );
    helper.add(
      'queryTimestampList',
      queryTimestampList,
    );
    helper.add(
      'queryEnum',
      queryEnum,
    );
    helper.add(
      'queryEnumList',
      queryEnumList,
    );
    helper.add(
      'queryIntegerEnum',
      queryIntegerEnum,
    );
    helper.add(
      'queryIntegerEnumList',
      queryIntegerEnumList,
    );
    helper.add(
      'queryParamsMapOfStrings',
      queryParamsMapOfStrings,
    );
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
        _$AllQueryStringTypesInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  AllQueryStringTypesInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return AllQueryStringTypesInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName('AllQueryStringTypesInput')
    ];
    return result;
  }
}
