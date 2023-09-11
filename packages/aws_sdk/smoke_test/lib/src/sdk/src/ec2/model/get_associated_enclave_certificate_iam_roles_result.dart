// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_associated_enclave_certificate_iam_roles_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/associated_role.dart';

part 'get_associated_enclave_certificate_iam_roles_result.g.dart';

abstract class GetAssociatedEnclaveCertificateIamRolesResult
    with
        _i1.AWSEquatable<GetAssociatedEnclaveCertificateIamRolesResult>
    implements
        Built<GetAssociatedEnclaveCertificateIamRolesResult,
            GetAssociatedEnclaveCertificateIamRolesResultBuilder> {
  factory GetAssociatedEnclaveCertificateIamRolesResult(
      {List<AssociatedRole>? associatedRoles}) {
    return _$GetAssociatedEnclaveCertificateIamRolesResult._(
        associatedRoles:
            associatedRoles == null ? null : _i2.BuiltList(associatedRoles));
  }

  factory GetAssociatedEnclaveCertificateIamRolesResult.build(
      [void Function(GetAssociatedEnclaveCertificateIamRolesResultBuilder)
          updates]) = _$GetAssociatedEnclaveCertificateIamRolesResult;

  const GetAssociatedEnclaveCertificateIamRolesResult._();

  /// Constructs a [GetAssociatedEnclaveCertificateIamRolesResult] from a [payload] and [response].
  factory GetAssociatedEnclaveCertificateIamRolesResult.fromResponse(
    GetAssociatedEnclaveCertificateIamRolesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<GetAssociatedEnclaveCertificateIamRolesResult>>
      serializers = [
    GetAssociatedEnclaveCertificateIamRolesResultEc2QuerySerializer()
  ];

  /// Information about the associated IAM roles.
  _i2.BuiltList<AssociatedRole>? get associatedRoles;
  @override
  List<Object?> get props => [associatedRoles];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetAssociatedEnclaveCertificateIamRolesResult')
      ..add(
        'associatedRoles',
        associatedRoles,
      );
    return helper.toString();
  }
}

class GetAssociatedEnclaveCertificateIamRolesResultEc2QuerySerializer
    extends _i3
    .StructuredSmithySerializer<GetAssociatedEnclaveCertificateIamRolesResult> {
  const GetAssociatedEnclaveCertificateIamRolesResultEc2QuerySerializer()
      : super('GetAssociatedEnclaveCertificateIamRolesResult');

  @override
  Iterable<Type> get types => const [
        GetAssociatedEnclaveCertificateIamRolesResult,
        _$GetAssociatedEnclaveCertificateIamRolesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetAssociatedEnclaveCertificateIamRolesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAssociatedEnclaveCertificateIamRolesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'associatedRoleSet':
          result.associatedRoles.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AssociatedRole)],
            ),
          ) as _i2.BuiltList<AssociatedRole>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetAssociatedEnclaveCertificateIamRolesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetAssociatedEnclaveCertificateIamRolesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetAssociatedEnclaveCertificateIamRolesResult(:associatedRoles) =
        object;
    if (associatedRoles != null) {
      result$
        ..add(const _i3.XmlElementName('AssociatedRoleSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          associatedRoles,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(AssociatedRole)],
          ),
        ));
    }
    return result$;
  }
}
