// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_key_pairs_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/key_pair_info.dart';

part 'describe_key_pairs_result.g.dart';

abstract class DescribeKeyPairsResult
    with _i1.AWSEquatable<DescribeKeyPairsResult>
    implements Built<DescribeKeyPairsResult, DescribeKeyPairsResultBuilder> {
  factory DescribeKeyPairsResult({List<KeyPairInfo>? keyPairs}) {
    return _$DescribeKeyPairsResult._(
        keyPairs: keyPairs == null ? null : _i2.BuiltList(keyPairs));
  }

  factory DescribeKeyPairsResult.build(
          [void Function(DescribeKeyPairsResultBuilder) updates]) =
      _$DescribeKeyPairsResult;

  const DescribeKeyPairsResult._();

  /// Constructs a [DescribeKeyPairsResult] from a [payload] and [response].
  factory DescribeKeyPairsResult.fromResponse(
    DescribeKeyPairsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeKeyPairsResult>> serializers =
      [DescribeKeyPairsResultEc2QuerySerializer()];

  /// Information about the key pairs.
  _i2.BuiltList<KeyPairInfo>? get keyPairs;
  @override
  List<Object?> get props => [keyPairs];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeKeyPairsResult')
      ..add(
        'keyPairs',
        keyPairs,
      );
    return helper.toString();
  }
}

class DescribeKeyPairsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeKeyPairsResult> {
  const DescribeKeyPairsResultEc2QuerySerializer()
      : super('DescribeKeyPairsResult');

  @override
  Iterable<Type> get types => const [
        DescribeKeyPairsResult,
        _$DescribeKeyPairsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeKeyPairsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeKeyPairsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'keySet':
          result.keyPairs.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(KeyPairInfo)],
            ),
          ) as _i2.BuiltList<KeyPairInfo>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeKeyPairsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeKeyPairsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeKeyPairsResult(:keyPairs) = object;
    if (keyPairs != null) {
      result$
        ..add(const _i3.XmlElementName('KeySet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          keyPairs,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(KeyPairInfo)],
          ),
        ));
    }
    return result$;
  }
}
