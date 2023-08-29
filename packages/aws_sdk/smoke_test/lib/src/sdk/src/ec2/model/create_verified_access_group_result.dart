// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_verified_access_group_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_group.dart';

part 'create_verified_access_group_result.g.dart';

abstract class CreateVerifiedAccessGroupResult
    with
        _i1.AWSEquatable<CreateVerifiedAccessGroupResult>
    implements
        Built<CreateVerifiedAccessGroupResult,
            CreateVerifiedAccessGroupResultBuilder> {
  factory CreateVerifiedAccessGroupResult(
      {VerifiedAccessGroup? verifiedAccessGroup}) {
    return _$CreateVerifiedAccessGroupResult._(
        verifiedAccessGroup: verifiedAccessGroup);
  }

  factory CreateVerifiedAccessGroupResult.build(
          [void Function(CreateVerifiedAccessGroupResultBuilder) updates]) =
      _$CreateVerifiedAccessGroupResult;

  const CreateVerifiedAccessGroupResult._();

  /// Constructs a [CreateVerifiedAccessGroupResult] from a [payload] and [response].
  factory CreateVerifiedAccessGroupResult.fromResponse(
    CreateVerifiedAccessGroupResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateVerifiedAccessGroupResult>>
      serializers = [CreateVerifiedAccessGroupResultEc2QuerySerializer()];

  /// The ID of the Verified Access group.
  VerifiedAccessGroup? get verifiedAccessGroup;
  @override
  List<Object?> get props => [verifiedAccessGroup];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateVerifiedAccessGroupResult')
          ..add(
            'verifiedAccessGroup',
            verifiedAccessGroup,
          );
    return helper.toString();
  }
}

class CreateVerifiedAccessGroupResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateVerifiedAccessGroupResult> {
  const CreateVerifiedAccessGroupResultEc2QuerySerializer()
      : super('CreateVerifiedAccessGroupResult');

  @override
  Iterable<Type> get types => const [
        CreateVerifiedAccessGroupResult,
        _$CreateVerifiedAccessGroupResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVerifiedAccessGroupResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVerifiedAccessGroupResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'verifiedAccessGroup':
          result.verifiedAccessGroup.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VerifiedAccessGroup),
          ) as VerifiedAccessGroup));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateVerifiedAccessGroupResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateVerifiedAccessGroupResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVerifiedAccessGroupResult(:verifiedAccessGroup) = object;
    if (verifiedAccessGroup != null) {
      result$
        ..add(const _i2.XmlElementName('VerifiedAccessGroup'))
        ..add(serializers.serialize(
          verifiedAccessGroup,
          specifiedType: const FullType(VerifiedAccessGroup),
        ));
    }
    return result$;
  }
}
