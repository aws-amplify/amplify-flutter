// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_vpc_endpoint_service_permissions_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'modify_vpc_endpoint_service_permissions_request.g.dart';

abstract class ModifyVpcEndpointServicePermissionsRequest
    with
        _i1.HttpInput<ModifyVpcEndpointServicePermissionsRequest>,
        _i2.AWSEquatable<ModifyVpcEndpointServicePermissionsRequest>
    implements
        Built<ModifyVpcEndpointServicePermissionsRequest,
            ModifyVpcEndpointServicePermissionsRequestBuilder> {
  factory ModifyVpcEndpointServicePermissionsRequest({
    bool? dryRun,
    String? serviceId,
    List<String>? addAllowedPrincipals,
    List<String>? removeAllowedPrincipals,
  }) {
    dryRun ??= false;
    return _$ModifyVpcEndpointServicePermissionsRequest._(
      dryRun: dryRun,
      serviceId: serviceId,
      addAllowedPrincipals: addAllowedPrincipals == null
          ? null
          : _i3.BuiltList(addAllowedPrincipals),
      removeAllowedPrincipals: removeAllowedPrincipals == null
          ? null
          : _i3.BuiltList(removeAllowedPrincipals),
    );
  }

  factory ModifyVpcEndpointServicePermissionsRequest.build(
      [void Function(ModifyVpcEndpointServicePermissionsRequestBuilder)
          updates]) = _$ModifyVpcEndpointServicePermissionsRequest;

  const ModifyVpcEndpointServicePermissionsRequest._();

  factory ModifyVpcEndpointServicePermissionsRequest.fromRequest(
    ModifyVpcEndpointServicePermissionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<ModifyVpcEndpointServicePermissionsRequest>>
      serializers = [
    ModifyVpcEndpointServicePermissionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVpcEndpointServicePermissionsRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the service.
  String? get serviceId;

  /// The Amazon Resource Names (ARN) of the principals. Permissions are granted to the principals in this list. To grant permissions to all principals, specify an asterisk (*).
  _i3.BuiltList<String>? get addAllowedPrincipals;

  /// The Amazon Resource Names (ARN) of the principals. Permissions are revoked for principals in this list.
  _i3.BuiltList<String>? get removeAllowedPrincipals;
  @override
  ModifyVpcEndpointServicePermissionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        serviceId,
        addAllowedPrincipals,
        removeAllowedPrincipals,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ModifyVpcEndpointServicePermissionsRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'serviceId',
        serviceId,
      )
      ..add(
        'addAllowedPrincipals',
        addAllowedPrincipals,
      )
      ..add(
        'removeAllowedPrincipals',
        removeAllowedPrincipals,
      );
    return helper.toString();
  }
}

class ModifyVpcEndpointServicePermissionsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ModifyVpcEndpointServicePermissionsRequest> {
  const ModifyVpcEndpointServicePermissionsRequestEc2QuerySerializer()
      : super('ModifyVpcEndpointServicePermissionsRequest');

  @override
  Iterable<Type> get types => const [
        ModifyVpcEndpointServicePermissionsRequest,
        _$ModifyVpcEndpointServicePermissionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpcEndpointServicePermissionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpcEndpointServicePermissionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ServiceId':
          result.serviceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AddAllowedPrincipals':
          result.addAllowedPrincipals.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'RemoveAllowedPrincipals':
          result.removeAllowedPrincipals
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyVpcEndpointServicePermissionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyVpcEndpointServicePermissionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVpcEndpointServicePermissionsRequest(
      :dryRun,
      :serviceId,
      :addAllowedPrincipals,
      :removeAllowedPrincipals
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (serviceId != null) {
      result$
        ..add(const _i1.XmlElementName('ServiceId'))
        ..add(serializers.serialize(
          serviceId,
          specifiedType: const FullType(String),
        ));
    }
    if (addAllowedPrincipals != null) {
      result$
        ..add(const _i1.XmlElementName('AddAllowedPrincipals'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          addAllowedPrincipals,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (removeAllowedPrincipals != null) {
      result$
        ..add(const _i1.XmlElementName('RemoveAllowedPrincipals'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          removeAllowedPrincipals,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
