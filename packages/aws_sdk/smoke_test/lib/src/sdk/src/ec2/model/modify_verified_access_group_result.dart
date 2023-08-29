// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_verified_access_group_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_group.dart';

part 'modify_verified_access_group_result.g.dart';

abstract class ModifyVerifiedAccessGroupResult
    with
        _i1.AWSEquatable<ModifyVerifiedAccessGroupResult>
    implements
        Built<ModifyVerifiedAccessGroupResult,
            ModifyVerifiedAccessGroupResultBuilder> {
  factory ModifyVerifiedAccessGroupResult(
      {VerifiedAccessGroup? verifiedAccessGroup}) {
    return _$ModifyVerifiedAccessGroupResult._(
        verifiedAccessGroup: verifiedAccessGroup);
  }

  factory ModifyVerifiedAccessGroupResult.build(
          [void Function(ModifyVerifiedAccessGroupResultBuilder) updates]) =
      _$ModifyVerifiedAccessGroupResult;

  const ModifyVerifiedAccessGroupResult._();

  /// Constructs a [ModifyVerifiedAccessGroupResult] from a [payload] and [response].
  factory ModifyVerifiedAccessGroupResult.fromResponse(
    ModifyVerifiedAccessGroupResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifyVerifiedAccessGroupResult>>
      serializers = [ModifyVerifiedAccessGroupResultEc2QuerySerializer()];

  /// Details of Verified Access group.
  VerifiedAccessGroup? get verifiedAccessGroup;
  @override
  List<Object?> get props => [verifiedAccessGroup];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyVerifiedAccessGroupResult')
          ..add(
            'verifiedAccessGroup',
            verifiedAccessGroup,
          );
    return helper.toString();
  }
}

class ModifyVerifiedAccessGroupResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifyVerifiedAccessGroupResult> {
  const ModifyVerifiedAccessGroupResultEc2QuerySerializer()
      : super('ModifyVerifiedAccessGroupResult');

  @override
  Iterable<Type> get types => const [
        ModifyVerifiedAccessGroupResult,
        _$ModifyVerifiedAccessGroupResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVerifiedAccessGroupResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVerifiedAccessGroupResultBuilder();
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
    ModifyVerifiedAccessGroupResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyVerifiedAccessGroupResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVerifiedAccessGroupResult(:verifiedAccessGroup) = object;
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
