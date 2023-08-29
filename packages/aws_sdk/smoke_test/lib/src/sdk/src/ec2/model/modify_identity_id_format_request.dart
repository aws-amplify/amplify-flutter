// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_identity_id_format_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'modify_identity_id_format_request.g.dart';

abstract class ModifyIdentityIdFormatRequest
    with
        _i1.HttpInput<ModifyIdentityIdFormatRequest>,
        _i2.AWSEquatable<ModifyIdentityIdFormatRequest>
    implements
        Built<ModifyIdentityIdFormatRequest,
            ModifyIdentityIdFormatRequestBuilder> {
  factory ModifyIdentityIdFormatRequest({
    String? principalArn,
    String? resource,
    bool? useLongIds,
  }) {
    useLongIds ??= false;
    return _$ModifyIdentityIdFormatRequest._(
      principalArn: principalArn,
      resource: resource,
      useLongIds: useLongIds,
    );
  }

  factory ModifyIdentityIdFormatRequest.build(
          [void Function(ModifyIdentityIdFormatRequestBuilder) updates]) =
      _$ModifyIdentityIdFormatRequest;

  const ModifyIdentityIdFormatRequest._();

  factory ModifyIdentityIdFormatRequest.fromRequest(
    ModifyIdentityIdFormatRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyIdentityIdFormatRequest>>
      serializers = [ModifyIdentityIdFormatRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyIdentityIdFormatRequestBuilder b) {
    b.useLongIds = false;
  }

  /// The ARN of the principal, which can be an IAM user, IAM role, or the root user. Specify `all` to modify the ID format for all IAM users, IAM roles, and the root user of the account.
  String? get principalArn;

  /// The type of resource: `bundle` | `conversion-task` | `customer-gateway` | `dhcp-options` | `elastic-ip-allocation` | `elastic-ip-association` | `export-task` | `flow-log` | `image` | `import-task` | `internet-gateway` | `network-acl` | `network-acl-association` | `network-interface` | `network-interface-attachment` | `prefix-list` | `route-table` | `route-table-association` | `security-group` | `subnet` | `subnet-cidr-block-association` | `vpc` | `vpc-cidr-block-association` | `vpc-endpoint` | `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`.
  ///
  /// Alternatively, use the `all-current` option to include all resource types that are currently within their opt-in period for longer IDs.
  String? get resource;

  /// Indicates whether the resource should use longer IDs (17-character IDs)
  bool get useLongIds;
  @override
  ModifyIdentityIdFormatRequest getPayload() => this;
  @override
  List<Object?> get props => [
        principalArn,
        resource,
        useLongIds,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyIdentityIdFormatRequest')
      ..add(
        'principalArn',
        principalArn,
      )
      ..add(
        'resource',
        resource,
      )
      ..add(
        'useLongIds',
        useLongIds,
      );
    return helper.toString();
  }
}

class ModifyIdentityIdFormatRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyIdentityIdFormatRequest> {
  const ModifyIdentityIdFormatRequestEc2QuerySerializer()
      : super('ModifyIdentityIdFormatRequest');

  @override
  Iterable<Type> get types => const [
        ModifyIdentityIdFormatRequest,
        _$ModifyIdentityIdFormatRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyIdentityIdFormatRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyIdentityIdFormatRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'principalArn':
          result.principalArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resource':
          result.resource = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'useLongIds':
          result.useLongIds = (serializers.deserialize(
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
    ModifyIdentityIdFormatRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyIdentityIdFormatRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyIdentityIdFormatRequest(:principalArn, :resource, :useLongIds) =
        object;
    if (principalArn != null) {
      result$
        ..add(const _i1.XmlElementName('PrincipalArn'))
        ..add(serializers.serialize(
          principalArn,
          specifiedType: const FullType(String),
        ));
    }
    if (resource != null) {
      result$
        ..add(const _i1.XmlElementName('Resource'))
        ..add(serializers.serialize(
          resource,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('UseLongIds'))
      ..add(serializers.serialize(
        useLongIds,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
