// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.query_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/field_info.dart';

part 'query_info.g.dart';

/// Details about the query.
abstract class QueryInfo
    with _i1.AWSEquatable<QueryInfo>
    implements Built<QueryInfo, QueryInfoBuilder> {
  /// Details about the query.
  factory QueryInfo({List<FieldInfo>? selectFields}) {
    return _$QueryInfo._(
        selectFields:
            selectFields == null ? null : _i2.BuiltList(selectFields));
  }

  /// Details about the query.
  factory QueryInfo.build([void Function(QueryInfoBuilder) updates]) =
      _$QueryInfo;

  const QueryInfo._();

  static const List<_i3.SmithySerializer<QueryInfo>> serializers = [
    QueryInfoAwsJson11Serializer()
  ];

  /// Returns a `FieldInfo` object.
  _i2.BuiltList<FieldInfo>? get selectFields;
  @override
  List<Object?> get props => [selectFields];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('QueryInfo')
      ..add(
        'selectFields',
        selectFields,
      );
    return helper.toString();
  }
}

class QueryInfoAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<QueryInfo> {
  const QueryInfoAwsJson11Serializer() : super('QueryInfo');

  @override
  Iterable<Type> get types => const [
        QueryInfo,
        _$QueryInfo,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  QueryInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueryInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SelectFields':
          result.selectFields.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(FieldInfo)],
            ),
          ) as _i2.BuiltList<FieldInfo>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    QueryInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final QueryInfo(:selectFields) = object;
    if (selectFields != null) {
      result$
        ..add('SelectFields')
        ..add(serializers.serialize(
          selectFields,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(FieldInfo)],
          ),
        ));
    }
    return result$;
  }
}
