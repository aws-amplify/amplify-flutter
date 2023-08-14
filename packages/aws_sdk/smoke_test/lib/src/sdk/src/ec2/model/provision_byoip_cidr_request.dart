// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.provision_byoip_cidr_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/cidr_authorization_context.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'provision_byoip_cidr_request.g.dart';

abstract class ProvisionByoipCidrRequest
    with
        _i1.HttpInput<ProvisionByoipCidrRequest>,
        _i2.AWSEquatable<ProvisionByoipCidrRequest>
    implements
        Built<ProvisionByoipCidrRequest, ProvisionByoipCidrRequestBuilder> {
  factory ProvisionByoipCidrRequest({
    String? cidr,
    CidrAuthorizationContext? cidrAuthorizationContext,
    bool? publiclyAdvertisable,
    String? description,
    bool? dryRun,
    List<TagSpecification>? poolTagSpecifications,
    bool? multiRegion,
  }) {
    publiclyAdvertisable ??= false;
    dryRun ??= false;
    multiRegion ??= false;
    return _$ProvisionByoipCidrRequest._(
      cidr: cidr,
      cidrAuthorizationContext: cidrAuthorizationContext,
      publiclyAdvertisable: publiclyAdvertisable,
      description: description,
      dryRun: dryRun,
      poolTagSpecifications: poolTagSpecifications == null
          ? null
          : _i3.BuiltList(poolTagSpecifications),
      multiRegion: multiRegion,
    );
  }

  factory ProvisionByoipCidrRequest.build(
          [void Function(ProvisionByoipCidrRequestBuilder) updates]) =
      _$ProvisionByoipCidrRequest;

  const ProvisionByoipCidrRequest._();

  factory ProvisionByoipCidrRequest.fromRequest(
    ProvisionByoipCidrRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ProvisionByoipCidrRequest>>
      serializers = [ProvisionByoipCidrRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ProvisionByoipCidrRequestBuilder b) {
    b
      ..publiclyAdvertisable = false
      ..dryRun = false
      ..multiRegion = false;
  }

  /// The public IPv4 or IPv6 address range, in CIDR notation. The most specific IPv4 prefix that you can specify is /24. The most specific IPv6 prefix you can specify is /56. The address range cannot overlap with another address range that you've brought to this or another Region.
  String? get cidr;

  /// A signed document that proves that you are authorized to bring the specified IP address range to Amazon using BYOIP.
  CidrAuthorizationContext? get cidrAuthorizationContext;

  /// (IPv6 only) Indicate whether the address range will be publicly advertised to the internet.
  ///
  /// Default: true
  bool get publiclyAdvertisable;

  /// A description for the address range and the address pool.
  String? get description;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The tags to apply to the address pool.
  _i3.BuiltList<TagSpecification>? get poolTagSpecifications;

  /// Reserved.
  bool get multiRegion;
  @override
  ProvisionByoipCidrRequest getPayload() => this;
  @override
  List<Object?> get props => [
        cidr,
        cidrAuthorizationContext,
        publiclyAdvertisable,
        description,
        dryRun,
        poolTagSpecifications,
        multiRegion,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ProvisionByoipCidrRequest')
      ..add(
        'cidr',
        cidr,
      )
      ..add(
        'cidrAuthorizationContext',
        cidrAuthorizationContext,
      )
      ..add(
        'publiclyAdvertisable',
        publiclyAdvertisable,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'poolTagSpecifications',
        poolTagSpecifications,
      )
      ..add(
        'multiRegion',
        multiRegion,
      );
    return helper.toString();
  }
}

class ProvisionByoipCidrRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ProvisionByoipCidrRequest> {
  const ProvisionByoipCidrRequestEc2QuerySerializer()
      : super('ProvisionByoipCidrRequest');

  @override
  Iterable<Type> get types => const [
        ProvisionByoipCidrRequest,
        _$ProvisionByoipCidrRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ProvisionByoipCidrRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProvisionByoipCidrRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Cidr':
          result.cidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CidrAuthorizationContext':
          result.cidrAuthorizationContext.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(CidrAuthorizationContext),
          ) as CidrAuthorizationContext));
        case 'PubliclyAdvertisable':
          result.publiclyAdvertisable = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'PoolTagSpecification':
          result.poolTagSpecifications
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
        case 'MultiRegion':
          result.multiRegion = (serializers.deserialize(
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
    ProvisionByoipCidrRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ProvisionByoipCidrRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ProvisionByoipCidrRequest(
      :cidr,
      :cidrAuthorizationContext,
      :publiclyAdvertisable,
      :description,
      :dryRun,
      :poolTagSpecifications,
      :multiRegion
    ) = object;
    if (cidr != null) {
      result$
        ..add(const _i1.XmlElementName('Cidr'))
        ..add(serializers.serialize(
          cidr,
          specifiedType: const FullType(String),
        ));
    }
    if (cidrAuthorizationContext != null) {
      result$
        ..add(const _i1.XmlElementName('CidrAuthorizationContext'))
        ..add(serializers.serialize(
          cidrAuthorizationContext,
          specifiedType: const FullType(CidrAuthorizationContext),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('PubliclyAdvertisable'))
      ..add(serializers.serialize(
        publiclyAdvertisable,
        specifiedType: const FullType(bool),
      ));
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (poolTagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('PoolTagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          poolTagSpecifications,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MultiRegion'))
      ..add(serializers.serialize(
        multiRegion,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
