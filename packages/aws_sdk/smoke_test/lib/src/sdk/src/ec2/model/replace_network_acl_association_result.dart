// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.replace_network_acl_association_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'replace_network_acl_association_result.g.dart';

abstract class ReplaceNetworkAclAssociationResult
    with
        _i1.AWSEquatable<ReplaceNetworkAclAssociationResult>
    implements
        Built<ReplaceNetworkAclAssociationResult,
            ReplaceNetworkAclAssociationResultBuilder> {
  factory ReplaceNetworkAclAssociationResult({String? newAssociationId}) {
    return _$ReplaceNetworkAclAssociationResult._(
        newAssociationId: newAssociationId);
  }

  factory ReplaceNetworkAclAssociationResult.build(
          [void Function(ReplaceNetworkAclAssociationResultBuilder) updates]) =
      _$ReplaceNetworkAclAssociationResult;

  const ReplaceNetworkAclAssociationResult._();

  /// Constructs a [ReplaceNetworkAclAssociationResult] from a [payload] and [response].
  factory ReplaceNetworkAclAssociationResult.fromResponse(
    ReplaceNetworkAclAssociationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ReplaceNetworkAclAssociationResult>>
      serializers = [ReplaceNetworkAclAssociationResultEc2QuerySerializer()];

  /// The ID of the new association.
  String? get newAssociationId;
  @override
  List<Object?> get props => [newAssociationId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ReplaceNetworkAclAssociationResult')
          ..add(
            'newAssociationId',
            newAssociationId,
          );
    return helper.toString();
  }
}

class ReplaceNetworkAclAssociationResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ReplaceNetworkAclAssociationResult> {
  const ReplaceNetworkAclAssociationResultEc2QuerySerializer()
      : super('ReplaceNetworkAclAssociationResult');

  @override
  Iterable<Type> get types => const [
        ReplaceNetworkAclAssociationResult,
        _$ReplaceNetworkAclAssociationResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReplaceNetworkAclAssociationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplaceNetworkAclAssociationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'newAssociationId':
          result.newAssociationId = (serializers.deserialize(
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
    ReplaceNetworkAclAssociationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ReplaceNetworkAclAssociationResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ReplaceNetworkAclAssociationResult(:newAssociationId) = object;
    if (newAssociationId != null) {
      result$
        ..add(const _i2.XmlElementName('NewAssociationId'))
        ..add(serializers.serialize(
          newAssociationId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
