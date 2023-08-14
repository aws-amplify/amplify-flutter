// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_coip_pool_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/coip_pool.dart';

part 'delete_coip_pool_result.g.dart';

abstract class DeleteCoipPoolResult
    with _i1.AWSEquatable<DeleteCoipPoolResult>
    implements Built<DeleteCoipPoolResult, DeleteCoipPoolResultBuilder> {
  factory DeleteCoipPoolResult({CoipPool? coipPool}) {
    return _$DeleteCoipPoolResult._(coipPool: coipPool);
  }

  factory DeleteCoipPoolResult.build(
          [void Function(DeleteCoipPoolResultBuilder) updates]) =
      _$DeleteCoipPoolResult;

  const DeleteCoipPoolResult._();

  /// Constructs a [DeleteCoipPoolResult] from a [payload] and [response].
  factory DeleteCoipPoolResult.fromResponse(
    DeleteCoipPoolResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteCoipPoolResult>> serializers = [
    DeleteCoipPoolResultEc2QuerySerializer()
  ];

  /// Information about the CoIP address pool.
  CoipPool? get coipPool;
  @override
  List<Object?> get props => [coipPool];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteCoipPoolResult')
      ..add(
        'coipPool',
        coipPool,
      );
    return helper.toString();
  }
}

class DeleteCoipPoolResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteCoipPoolResult> {
  const DeleteCoipPoolResultEc2QuerySerializer()
      : super('DeleteCoipPoolResult');

  @override
  Iterable<Type> get types => const [
        DeleteCoipPoolResult,
        _$DeleteCoipPoolResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteCoipPoolResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteCoipPoolResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'coipPool':
          result.coipPool.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(CoipPool),
          ) as CoipPool));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteCoipPoolResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteCoipPoolResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteCoipPoolResult(:coipPool) = object;
    if (coipPool != null) {
      result$
        ..add(const _i2.XmlElementName('CoipPool'))
        ..add(serializers.serialize(
          coipPool,
          specifiedType: const FullType(CoipPool),
        ));
    }
    return result$;
  }
}
