// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_principal_id_format_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/principal_id_format.dart';

part 'describe_principal_id_format_result.g.dart';

abstract class DescribePrincipalIdFormatResult
    with
        _i1.AWSEquatable<DescribePrincipalIdFormatResult>
    implements
        Built<DescribePrincipalIdFormatResult,
            DescribePrincipalIdFormatResultBuilder> {
  factory DescribePrincipalIdFormatResult({
    List<PrincipalIdFormat>? principals,
    String? nextToken,
  }) {
    return _$DescribePrincipalIdFormatResult._(
      principals: principals == null ? null : _i2.BuiltList(principals),
      nextToken: nextToken,
    );
  }

  factory DescribePrincipalIdFormatResult.build(
          [void Function(DescribePrincipalIdFormatResultBuilder) updates]) =
      _$DescribePrincipalIdFormatResult;

  const DescribePrincipalIdFormatResult._();

  /// Constructs a [DescribePrincipalIdFormatResult] from a [payload] and [response].
  factory DescribePrincipalIdFormatResult.fromResponse(
    DescribePrincipalIdFormatResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribePrincipalIdFormatResult>>
      serializers = [DescribePrincipalIdFormatResultEc2QuerySerializer()];

  /// Information about the ID format settings for the ARN.
  _i2.BuiltList<PrincipalIdFormat>? get principals;

  /// The token to use to retrieve the next page of results. This value is null when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        principals,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribePrincipalIdFormatResult')
          ..add(
            'principals',
            principals,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribePrincipalIdFormatResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribePrincipalIdFormatResult> {
  const DescribePrincipalIdFormatResultEc2QuerySerializer()
      : super('DescribePrincipalIdFormatResult');

  @override
  Iterable<Type> get types => const [
        DescribePrincipalIdFormatResult,
        _$DescribePrincipalIdFormatResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribePrincipalIdFormatResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribePrincipalIdFormatResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'principalSet':
          result.principals.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(PrincipalIdFormat)],
            ),
          ) as _i2.BuiltList<PrincipalIdFormat>));
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribePrincipalIdFormatResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribePrincipalIdFormatResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribePrincipalIdFormatResult(:principals, :nextToken) = object;
    if (principals != null) {
      result$
        ..add(const _i3.XmlElementName('PrincipalSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          principals,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(PrincipalIdFormat)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
