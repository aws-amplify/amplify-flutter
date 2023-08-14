// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.vpn_tunnel_options_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ike_versions_request_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/phase1_dh_group_numbers_request_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/phase1_encryption_algorithms_request_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/phase1_integrity_algorithms_request_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/phase2_dh_group_numbers_request_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/phase2_encryption_algorithms_request_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/phase2_integrity_algorithms_request_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_tunnel_log_options_specification.dart';

part 'vpn_tunnel_options_specification.g.dart';

/// The tunnel options for a single VPN tunnel.
abstract class VpnTunnelOptionsSpecification
    with
        _i1.AWSEquatable<VpnTunnelOptionsSpecification>
    implements
        Built<VpnTunnelOptionsSpecification,
            VpnTunnelOptionsSpecificationBuilder> {
  /// The tunnel options for a single VPN tunnel.
  factory VpnTunnelOptionsSpecification({
    String? tunnelInsideCidr,
    String? tunnelInsideIpv6Cidr,
    String? preSharedKey,
    int? phase1LifetimeSeconds,
    int? phase2LifetimeSeconds,
    int? rekeyMarginTimeSeconds,
    int? rekeyFuzzPercentage,
    int? replayWindowSize,
    int? dpdTimeoutSeconds,
    String? dpdTimeoutAction,
    List<Phase1EncryptionAlgorithmsRequestListValue>?
        phase1EncryptionAlgorithms,
    List<Phase2EncryptionAlgorithmsRequestListValue>?
        phase2EncryptionAlgorithms,
    List<Phase1IntegrityAlgorithmsRequestListValue>? phase1IntegrityAlgorithms,
    List<Phase2IntegrityAlgorithmsRequestListValue>? phase2IntegrityAlgorithms,
    List<Phase1DhGroupNumbersRequestListValue>? phase1DhGroupNumbers,
    List<Phase2DhGroupNumbersRequestListValue>? phase2DhGroupNumbers,
    List<IkeVersionsRequestListValue>? ikeVersions,
    String? startupAction,
    VpnTunnelLogOptionsSpecification? logOptions,
    bool? enableTunnelLifecycleControl,
  }) {
    phase1LifetimeSeconds ??= 0;
    phase2LifetimeSeconds ??= 0;
    rekeyMarginTimeSeconds ??= 0;
    rekeyFuzzPercentage ??= 0;
    replayWindowSize ??= 0;
    dpdTimeoutSeconds ??= 0;
    enableTunnelLifecycleControl ??= false;
    return _$VpnTunnelOptionsSpecification._(
      tunnelInsideCidr: tunnelInsideCidr,
      tunnelInsideIpv6Cidr: tunnelInsideIpv6Cidr,
      preSharedKey: preSharedKey,
      phase1LifetimeSeconds: phase1LifetimeSeconds,
      phase2LifetimeSeconds: phase2LifetimeSeconds,
      rekeyMarginTimeSeconds: rekeyMarginTimeSeconds,
      rekeyFuzzPercentage: rekeyFuzzPercentage,
      replayWindowSize: replayWindowSize,
      dpdTimeoutSeconds: dpdTimeoutSeconds,
      dpdTimeoutAction: dpdTimeoutAction,
      phase1EncryptionAlgorithms: phase1EncryptionAlgorithms == null
          ? null
          : _i2.BuiltList(phase1EncryptionAlgorithms),
      phase2EncryptionAlgorithms: phase2EncryptionAlgorithms == null
          ? null
          : _i2.BuiltList(phase2EncryptionAlgorithms),
      phase1IntegrityAlgorithms: phase1IntegrityAlgorithms == null
          ? null
          : _i2.BuiltList(phase1IntegrityAlgorithms),
      phase2IntegrityAlgorithms: phase2IntegrityAlgorithms == null
          ? null
          : _i2.BuiltList(phase2IntegrityAlgorithms),
      phase1DhGroupNumbers: phase1DhGroupNumbers == null
          ? null
          : _i2.BuiltList(phase1DhGroupNumbers),
      phase2DhGroupNumbers: phase2DhGroupNumbers == null
          ? null
          : _i2.BuiltList(phase2DhGroupNumbers),
      ikeVersions: ikeVersions == null ? null : _i2.BuiltList(ikeVersions),
      startupAction: startupAction,
      logOptions: logOptions,
      enableTunnelLifecycleControl: enableTunnelLifecycleControl,
    );
  }

  /// The tunnel options for a single VPN tunnel.
  factory VpnTunnelOptionsSpecification.build(
          [void Function(VpnTunnelOptionsSpecificationBuilder) updates]) =
      _$VpnTunnelOptionsSpecification;

  const VpnTunnelOptionsSpecification._();

  static const List<_i3.SmithySerializer<VpnTunnelOptionsSpecification>>
      serializers = [VpnTunnelOptionsSpecificationEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpnTunnelOptionsSpecificationBuilder b) {
    b
      ..phase1LifetimeSeconds = 0
      ..phase2LifetimeSeconds = 0
      ..rekeyMarginTimeSeconds = 0
      ..rekeyFuzzPercentage = 0
      ..replayWindowSize = 0
      ..dpdTimeoutSeconds = 0
      ..enableTunnelLifecycleControl = false;
  }

  /// The range of inside IPv4 addresses for the tunnel. Any specified CIDR blocks must be unique across all VPN connections that use the same virtual private gateway.
  ///
  /// Constraints: A size /30 CIDR block from the `169.254.0.0/16` range. The following CIDR blocks are reserved and cannot be used:
  ///
  /// *   `169.254.0.0/30`
  ///
  /// *   `169.254.1.0/30`
  ///
  /// *   `169.254.2.0/30`
  ///
  /// *   `169.254.3.0/30`
  ///
  /// *   `169.254.4.0/30`
  ///
  /// *   `169.254.5.0/30`
  ///
  /// *   `169.254.169.252/30`
  String? get tunnelInsideCidr;

  /// The range of inside IPv6 addresses for the tunnel. Any specified CIDR blocks must be unique across all VPN connections that use the same transit gateway.
  ///
  /// Constraints: A size /126 CIDR block from the local `fd00::/8` range.
  String? get tunnelInsideIpv6Cidr;

  /// The pre-shared key (PSK) to establish initial authentication between the virtual private gateway and customer gateway.
  ///
  /// Constraints: Allowed characters are alphanumeric characters, periods (.), and underscores (_). Must be between 8 and 64 characters in length and cannot start with zero (0).
  String? get preSharedKey;

  /// The lifetime for phase 1 of the IKE negotiation, in seconds.
  ///
  /// Constraints: A value between 900 and 28,800.
  ///
  /// Default: `28800`
  int get phase1LifetimeSeconds;

  /// The lifetime for phase 2 of the IKE negotiation, in seconds.
  ///
  /// Constraints: A value between 900 and 3,600. The value must be less than the value for `Phase1LifetimeSeconds`.
  ///
  /// Default: `3600`
  int get phase2LifetimeSeconds;

  /// The margin time, in seconds, before the phase 2 lifetime expires, during which the Amazon Web Services side of the VPN connection performs an IKE rekey. The exact time of the rekey is randomly selected based on the value for `RekeyFuzzPercentage`.
  ///
  /// Constraints: A value between 60 and half of `Phase2LifetimeSeconds`.
  ///
  /// Default: `540`
  int get rekeyMarginTimeSeconds;

  /// The percentage of the rekey window (determined by `RekeyMarginTimeSeconds`) during which the rekey time is randomly selected.
  ///
  /// Constraints: A value between 0 and 100.
  ///
  /// Default: `100`
  int get rekeyFuzzPercentage;

  /// The number of packets in an IKE replay window.
  ///
  /// Constraints: A value between 64 and 2048.
  ///
  /// Default: `1024`
  int get replayWindowSize;

  /// The number of seconds after which a DPD timeout occurs.
  ///
  /// Constraints: A value greater than or equal to 30.
  ///
  /// Default: `30`
  int get dpdTimeoutSeconds;

  /// The action to take after DPD timeout occurs. Specify `restart` to restart the IKE initiation. Specify `clear` to end the IKE session.
  ///
  /// Valid Values: `clear` | `none` | `restart`
  ///
  /// Default: `clear`
  String? get dpdTimeoutAction;

  /// One or more encryption algorithms that are permitted for the VPN tunnel for phase 1 IKE negotiations.
  ///
  /// Valid values: `AES128` | `AES256` | `AES128-GCM-16` | `AES256-GCM-16`
  _i2.BuiltList<Phase1EncryptionAlgorithmsRequestListValue>?
      get phase1EncryptionAlgorithms;

  /// One or more encryption algorithms that are permitted for the VPN tunnel for phase 2 IKE negotiations.
  ///
  /// Valid values: `AES128` | `AES256` | `AES128-GCM-16` | `AES256-GCM-16`
  _i2.BuiltList<Phase2EncryptionAlgorithmsRequestListValue>?
      get phase2EncryptionAlgorithms;

  /// One or more integrity algorithms that are permitted for the VPN tunnel for phase 1 IKE negotiations.
  ///
  /// Valid values: `SHA1` | `SHA2-256` | `SHA2-384` | `SHA2-512`
  _i2.BuiltList<Phase1IntegrityAlgorithmsRequestListValue>?
      get phase1IntegrityAlgorithms;

  /// One or more integrity algorithms that are permitted for the VPN tunnel for phase 2 IKE negotiations.
  ///
  /// Valid values: `SHA1` | `SHA2-256` | `SHA2-384` | `SHA2-512`
  _i2.BuiltList<Phase2IntegrityAlgorithmsRequestListValue>?
      get phase2IntegrityAlgorithms;

  /// One or more Diffie-Hellman group numbers that are permitted for the VPN tunnel for phase 1 IKE negotiations.
  ///
  /// Valid values: `2` | `14` | `15` | `16` | `17` | `18` | `19` | `20` | `21` | `22` | `23` | `24`
  _i2.BuiltList<Phase1DhGroupNumbersRequestListValue>? get phase1DhGroupNumbers;

  /// One or more Diffie-Hellman group numbers that are permitted for the VPN tunnel for phase 2 IKE negotiations.
  ///
  /// Valid values: `2` | `5` | `14` | `15` | `16` | `17` | `18` | `19` | `20` | `21` | `22` | `23` | `24`
  _i2.BuiltList<Phase2DhGroupNumbersRequestListValue>? get phase2DhGroupNumbers;

  /// The IKE versions that are permitted for the VPN tunnel.
  ///
  /// Valid values: `ikev1` | `ikev2`
  _i2.BuiltList<IkeVersionsRequestListValue>? get ikeVersions;

  /// The action to take when the establishing the tunnel for the VPN connection. By default, your customer gateway device must initiate the IKE negotiation and bring up the tunnel. Specify `start` for Amazon Web Services to initiate the IKE negotiation.
  ///
  /// Valid Values: `add` | `start`
  ///
  /// Default: `add`
  String? get startupAction;

  /// Options for logging VPN tunnel activity.
  VpnTunnelLogOptionsSpecification? get logOptions;

  /// Turn on or off tunnel endpoint lifecycle control feature.
  bool get enableTunnelLifecycleControl;
  @override
  List<Object?> get props => [
        tunnelInsideCidr,
        tunnelInsideIpv6Cidr,
        preSharedKey,
        phase1LifetimeSeconds,
        phase2LifetimeSeconds,
        rekeyMarginTimeSeconds,
        rekeyFuzzPercentage,
        replayWindowSize,
        dpdTimeoutSeconds,
        dpdTimeoutAction,
        phase1EncryptionAlgorithms,
        phase2EncryptionAlgorithms,
        phase1IntegrityAlgorithms,
        phase2IntegrityAlgorithms,
        phase1DhGroupNumbers,
        phase2DhGroupNumbers,
        ikeVersions,
        startupAction,
        logOptions,
        enableTunnelLifecycleControl,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VpnTunnelOptionsSpecification')
      ..add(
        'tunnelInsideCidr',
        tunnelInsideCidr,
      )
      ..add(
        'tunnelInsideIpv6Cidr',
        tunnelInsideIpv6Cidr,
      )
      ..add(
        'preSharedKey',
        '***SENSITIVE***',
      )
      ..add(
        'phase1LifetimeSeconds',
        phase1LifetimeSeconds,
      )
      ..add(
        'phase2LifetimeSeconds',
        phase2LifetimeSeconds,
      )
      ..add(
        'rekeyMarginTimeSeconds',
        rekeyMarginTimeSeconds,
      )
      ..add(
        'rekeyFuzzPercentage',
        rekeyFuzzPercentage,
      )
      ..add(
        'replayWindowSize',
        replayWindowSize,
      )
      ..add(
        'dpdTimeoutSeconds',
        dpdTimeoutSeconds,
      )
      ..add(
        'dpdTimeoutAction',
        dpdTimeoutAction,
      )
      ..add(
        'phase1EncryptionAlgorithms',
        phase1EncryptionAlgorithms,
      )
      ..add(
        'phase2EncryptionAlgorithms',
        phase2EncryptionAlgorithms,
      )
      ..add(
        'phase1IntegrityAlgorithms',
        phase1IntegrityAlgorithms,
      )
      ..add(
        'phase2IntegrityAlgorithms',
        phase2IntegrityAlgorithms,
      )
      ..add(
        'phase1DhGroupNumbers',
        phase1DhGroupNumbers,
      )
      ..add(
        'phase2DhGroupNumbers',
        phase2DhGroupNumbers,
      )
      ..add(
        'ikeVersions',
        ikeVersions,
      )
      ..add(
        'startupAction',
        startupAction,
      )
      ..add(
        'logOptions',
        logOptions,
      )
      ..add(
        'enableTunnelLifecycleControl',
        enableTunnelLifecycleControl,
      );
    return helper.toString();
  }
}

class VpnTunnelOptionsSpecificationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<VpnTunnelOptionsSpecification> {
  const VpnTunnelOptionsSpecificationEc2QuerySerializer()
      : super('VpnTunnelOptionsSpecification');

  @override
  Iterable<Type> get types => const [
        VpnTunnelOptionsSpecification,
        _$VpnTunnelOptionsSpecification,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpnTunnelOptionsSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpnTunnelOptionsSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TunnelInsideCidr':
          result.tunnelInsideCidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TunnelInsideIpv6Cidr':
          result.tunnelInsideIpv6Cidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PreSharedKey':
          result.preSharedKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Phase1LifetimeSeconds':
          result.phase1LifetimeSeconds = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Phase2LifetimeSeconds':
          result.phase2LifetimeSeconds = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'RekeyMarginTimeSeconds':
          result.rekeyMarginTimeSeconds = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'RekeyFuzzPercentage':
          result.rekeyFuzzPercentage = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ReplayWindowSize':
          result.replayWindowSize = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'DPDTimeoutSeconds':
          result.dpdTimeoutSeconds = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'DPDTimeoutAction':
          result.dpdTimeoutAction = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Phase1EncryptionAlgorithm':
          result.phase1EncryptionAlgorithms
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Phase1EncryptionAlgorithmsRequestListValue)],
            ),
          ) as _i2.BuiltList<Phase1EncryptionAlgorithmsRequestListValue>));
        case 'Phase2EncryptionAlgorithm':
          result.phase2EncryptionAlgorithms
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Phase2EncryptionAlgorithmsRequestListValue)],
            ),
          ) as _i2.BuiltList<Phase2EncryptionAlgorithmsRequestListValue>));
        case 'Phase1IntegrityAlgorithm':
          result.phase1IntegrityAlgorithms
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Phase1IntegrityAlgorithmsRequestListValue)],
            ),
          ) as _i2.BuiltList<Phase1IntegrityAlgorithmsRequestListValue>));
        case 'Phase2IntegrityAlgorithm':
          result.phase2IntegrityAlgorithms
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Phase2IntegrityAlgorithmsRequestListValue)],
            ),
          ) as _i2.BuiltList<Phase2IntegrityAlgorithmsRequestListValue>));
        case 'Phase1DHGroupNumber':
          result.phase1DhGroupNumbers.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Phase1DhGroupNumbersRequestListValue)],
            ),
          ) as _i2.BuiltList<Phase1DhGroupNumbersRequestListValue>));
        case 'Phase2DHGroupNumber':
          result.phase2DhGroupNumbers.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Phase2DhGroupNumbersRequestListValue)],
            ),
          ) as _i2.BuiltList<Phase2DhGroupNumbersRequestListValue>));
        case 'IKEVersion':
          result.ikeVersions.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(IkeVersionsRequestListValue)],
            ),
          ) as _i2.BuiltList<IkeVersionsRequestListValue>));
        case 'StartupAction':
          result.startupAction = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LogOptions':
          result.logOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VpnTunnelLogOptionsSpecification),
          ) as VpnTunnelLogOptionsSpecification));
        case 'EnableTunnelLifecycleControl':
          result.enableTunnelLifecycleControl = (serializers.deserialize(
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
    VpnTunnelOptionsSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'VpnTunnelOptionsSpecificationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VpnTunnelOptionsSpecification(
      :tunnelInsideCidr,
      :tunnelInsideIpv6Cidr,
      :preSharedKey,
      :phase1LifetimeSeconds,
      :phase2LifetimeSeconds,
      :rekeyMarginTimeSeconds,
      :rekeyFuzzPercentage,
      :replayWindowSize,
      :dpdTimeoutSeconds,
      :dpdTimeoutAction,
      :phase1EncryptionAlgorithms,
      :phase2EncryptionAlgorithms,
      :phase1IntegrityAlgorithms,
      :phase2IntegrityAlgorithms,
      :phase1DhGroupNumbers,
      :phase2DhGroupNumbers,
      :ikeVersions,
      :startupAction,
      :logOptions,
      :enableTunnelLifecycleControl
    ) = object;
    if (tunnelInsideCidr != null) {
      result$
        ..add(const _i3.XmlElementName('TunnelInsideCidr'))
        ..add(serializers.serialize(
          tunnelInsideCidr,
          specifiedType: const FullType(String),
        ));
    }
    if (tunnelInsideIpv6Cidr != null) {
      result$
        ..add(const _i3.XmlElementName('TunnelInsideIpv6Cidr'))
        ..add(serializers.serialize(
          tunnelInsideIpv6Cidr,
          specifiedType: const FullType(String),
        ));
    }
    if (preSharedKey != null) {
      result$
        ..add(const _i3.XmlElementName('PreSharedKey'))
        ..add(serializers.serialize(
          preSharedKey,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Phase1LifetimeSeconds'))
      ..add(serializers.serialize(
        phase1LifetimeSeconds,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i3.XmlElementName('Phase2LifetimeSeconds'))
      ..add(serializers.serialize(
        phase2LifetimeSeconds,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i3.XmlElementName('RekeyMarginTimeSeconds'))
      ..add(serializers.serialize(
        rekeyMarginTimeSeconds,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i3.XmlElementName('RekeyFuzzPercentage'))
      ..add(serializers.serialize(
        rekeyFuzzPercentage,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i3.XmlElementName('ReplayWindowSize'))
      ..add(serializers.serialize(
        replayWindowSize,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i3.XmlElementName('DPDTimeoutSeconds'))
      ..add(serializers.serialize(
        dpdTimeoutSeconds,
        specifiedType: const FullType(int),
      ));
    if (dpdTimeoutAction != null) {
      result$
        ..add(const _i3.XmlElementName('DPDTimeoutAction'))
        ..add(serializers.serialize(
          dpdTimeoutAction,
          specifiedType: const FullType(String),
        ));
    }
    if (phase1EncryptionAlgorithms != null) {
      result$
        ..add(const _i3.XmlElementName('Phase1EncryptionAlgorithm'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          phase1EncryptionAlgorithms,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Phase1EncryptionAlgorithmsRequestListValue)],
          ),
        ));
    }
    if (phase2EncryptionAlgorithms != null) {
      result$
        ..add(const _i3.XmlElementName('Phase2EncryptionAlgorithm'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          phase2EncryptionAlgorithms,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Phase2EncryptionAlgorithmsRequestListValue)],
          ),
        ));
    }
    if (phase1IntegrityAlgorithms != null) {
      result$
        ..add(const _i3.XmlElementName('Phase1IntegrityAlgorithm'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          phase1IntegrityAlgorithms,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Phase1IntegrityAlgorithmsRequestListValue)],
          ),
        ));
    }
    if (phase2IntegrityAlgorithms != null) {
      result$
        ..add(const _i3.XmlElementName('Phase2IntegrityAlgorithm'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          phase2IntegrityAlgorithms,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Phase2IntegrityAlgorithmsRequestListValue)],
          ),
        ));
    }
    if (phase1DhGroupNumbers != null) {
      result$
        ..add(const _i3.XmlElementName('Phase1DHGroupNumber'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          phase1DhGroupNumbers,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Phase1DhGroupNumbersRequestListValue)],
          ),
        ));
    }
    if (phase2DhGroupNumbers != null) {
      result$
        ..add(const _i3.XmlElementName('Phase2DHGroupNumber'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          phase2DhGroupNumbers,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Phase2DhGroupNumbersRequestListValue)],
          ),
        ));
    }
    if (ikeVersions != null) {
      result$
        ..add(const _i3.XmlElementName('IKEVersion'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ikeVersions,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(IkeVersionsRequestListValue)],
          ),
        ));
    }
    if (startupAction != null) {
      result$
        ..add(const _i3.XmlElementName('StartupAction'))
        ..add(serializers.serialize(
          startupAction,
          specifiedType: const FullType(String),
        ));
    }
    if (logOptions != null) {
      result$
        ..add(const _i3.XmlElementName('LogOptions'))
        ..add(serializers.serialize(
          logOptions,
          specifiedType: const FullType(VpnTunnelLogOptionsSpecification),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('EnableTunnelLifecycleControl'))
      ..add(serializers.serialize(
        enableTunnelLifecycleControl,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
