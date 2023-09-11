// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.revoke_security_group_egress_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ip_permission.dart';

part 'revoke_security_group_egress_result.g.dart';

abstract class RevokeSecurityGroupEgressResult
    with
        _i1.AWSEquatable<RevokeSecurityGroupEgressResult>
    implements
        Built<RevokeSecurityGroupEgressResult,
            RevokeSecurityGroupEgressResultBuilder> {
  factory RevokeSecurityGroupEgressResult({
    bool? return_,
    List<IpPermission>? unknownIpPermissions,
  }) {
    return_ ??= false;
    return _$RevokeSecurityGroupEgressResult._(
      return_: return_,
      unknownIpPermissions: unknownIpPermissions == null
          ? null
          : _i2.BuiltList(unknownIpPermissions),
    );
  }

  factory RevokeSecurityGroupEgressResult.build(
          [void Function(RevokeSecurityGroupEgressResultBuilder) updates]) =
      _$RevokeSecurityGroupEgressResult;

  const RevokeSecurityGroupEgressResult._();

  /// Constructs a [RevokeSecurityGroupEgressResult] from a [payload] and [response].
  factory RevokeSecurityGroupEgressResult.fromResponse(
    RevokeSecurityGroupEgressResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<RevokeSecurityGroupEgressResult>>
      serializers = [RevokeSecurityGroupEgressResultEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RevokeSecurityGroupEgressResultBuilder b) {
    b.return_ = false;
  }

  /// Returns `true` if the request succeeds; otherwise, returns an error.
  bool get return_;

  /// The outbound rules that were unknown to the service. In some cases, `unknownIpPermissionSet` might be in a different format from the request parameter.
  _i2.BuiltList<IpPermission>? get unknownIpPermissions;
  @override
  List<Object?> get props => [
        return_,
        unknownIpPermissions,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RevokeSecurityGroupEgressResult')
          ..add(
            'return_',
            return_,
          )
          ..add(
            'unknownIpPermissions',
            unknownIpPermissions,
          );
    return helper.toString();
  }
}

class RevokeSecurityGroupEgressResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<RevokeSecurityGroupEgressResult> {
  const RevokeSecurityGroupEgressResultEc2QuerySerializer()
      : super('RevokeSecurityGroupEgressResult');

  @override
  Iterable<Type> get types => const [
        RevokeSecurityGroupEgressResult,
        _$RevokeSecurityGroupEgressResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RevokeSecurityGroupEgressResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RevokeSecurityGroupEgressResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'return':
          result.return_ = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'unknownIpPermissionSet':
          result.unknownIpPermissions.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(IpPermission)],
            ),
          ) as _i2.BuiltList<IpPermission>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RevokeSecurityGroupEgressResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'RevokeSecurityGroupEgressResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RevokeSecurityGroupEgressResult(:return_, :unknownIpPermissions) =
        object;
    result$
      ..add(const _i3.XmlElementName('Return'))
      ..add(serializers.serialize(
        return_,
        specifiedType: const FullType(bool),
      ));
    if (unknownIpPermissions != null) {
      result$
        ..add(const _i3.XmlElementName('UnknownIpPermissionSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          unknownIpPermissions,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(IpPermission)],
          ),
        ));
    }
    return result$;
  }
}
