// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_account_attributes_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/account_attribute.dart';

part 'describe_account_attributes_result.g.dart';

abstract class DescribeAccountAttributesResult
    with
        _i1.AWSEquatable<DescribeAccountAttributesResult>
    implements
        Built<DescribeAccountAttributesResult,
            DescribeAccountAttributesResultBuilder> {
  factory DescribeAccountAttributesResult(
      {List<AccountAttribute>? accountAttributes}) {
    return _$DescribeAccountAttributesResult._(
        accountAttributes: accountAttributes == null
            ? null
            : _i2.BuiltList(accountAttributes));
  }

  factory DescribeAccountAttributesResult.build(
          [void Function(DescribeAccountAttributesResultBuilder) updates]) =
      _$DescribeAccountAttributesResult;

  const DescribeAccountAttributesResult._();

  /// Constructs a [DescribeAccountAttributesResult] from a [payload] and [response].
  factory DescribeAccountAttributesResult.fromResponse(
    DescribeAccountAttributesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeAccountAttributesResult>>
      serializers = [DescribeAccountAttributesResultEc2QuerySerializer()];

  /// Information about the account attributes.
  _i2.BuiltList<AccountAttribute>? get accountAttributes;
  @override
  List<Object?> get props => [accountAttributes];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeAccountAttributesResult')
          ..add(
            'accountAttributes',
            accountAttributes,
          );
    return helper.toString();
  }
}

class DescribeAccountAttributesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeAccountAttributesResult> {
  const DescribeAccountAttributesResultEc2QuerySerializer()
      : super('DescribeAccountAttributesResult');

  @override
  Iterable<Type> get types => const [
        DescribeAccountAttributesResult,
        _$DescribeAccountAttributesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeAccountAttributesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAccountAttributesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'accountAttributeSet':
          result.accountAttributes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AccountAttribute)],
            ),
          ) as _i2.BuiltList<AccountAttribute>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeAccountAttributesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeAccountAttributesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeAccountAttributesResult(:accountAttributes) = object;
    if (accountAttributes != null) {
      result$
        ..add(const _i3.XmlElementName('AccountAttributeSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          accountAttributes,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(AccountAttribute)],
          ),
        ));
    }
    return result$;
  }
}
