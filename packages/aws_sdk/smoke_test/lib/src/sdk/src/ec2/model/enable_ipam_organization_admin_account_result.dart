// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.enable_ipam_organization_admin_account_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'enable_ipam_organization_admin_account_result.g.dart';

abstract class EnableIpamOrganizationAdminAccountResult
    with
        _i1.AWSEquatable<EnableIpamOrganizationAdminAccountResult>
    implements
        Built<EnableIpamOrganizationAdminAccountResult,
            EnableIpamOrganizationAdminAccountResultBuilder> {
  factory EnableIpamOrganizationAdminAccountResult({bool? success}) {
    success ??= false;
    return _$EnableIpamOrganizationAdminAccountResult._(success: success);
  }

  factory EnableIpamOrganizationAdminAccountResult.build(
      [void Function(EnableIpamOrganizationAdminAccountResultBuilder)
          updates]) = _$EnableIpamOrganizationAdminAccountResult;

  const EnableIpamOrganizationAdminAccountResult._();

  /// Constructs a [EnableIpamOrganizationAdminAccountResult] from a [payload] and [response].
  factory EnableIpamOrganizationAdminAccountResult.fromResponse(
    EnableIpamOrganizationAdminAccountResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<EnableIpamOrganizationAdminAccountResult>>
      serializers = [
    EnableIpamOrganizationAdminAccountResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnableIpamOrganizationAdminAccountResultBuilder b) {
    b.success = false;
  }

  /// The result of enabling the IPAM account.
  bool get success;
  @override
  List<Object?> get props => [success];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('EnableIpamOrganizationAdminAccountResult')
          ..add(
            'success',
            success,
          );
    return helper.toString();
  }
}

class EnableIpamOrganizationAdminAccountResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<EnableIpamOrganizationAdminAccountResult> {
  const EnableIpamOrganizationAdminAccountResultEc2QuerySerializer()
      : super('EnableIpamOrganizationAdminAccountResult');

  @override
  Iterable<Type> get types => const [
        EnableIpamOrganizationAdminAccountResult,
        _$EnableIpamOrganizationAdminAccountResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableIpamOrganizationAdminAccountResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableIpamOrganizationAdminAccountResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'success':
          result.success = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EnableIpamOrganizationAdminAccountResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'EnableIpamOrganizationAdminAccountResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EnableIpamOrganizationAdminAccountResult(:success) = object;
    result$
      ..add(const _i2.XmlElementName('Success'))
      ..add(serializers.serialize(
        success,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
