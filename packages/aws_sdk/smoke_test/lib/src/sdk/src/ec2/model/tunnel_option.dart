// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.tunnel_option; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ike_versions_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/phase1_dh_group_numbers_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/phase1_encryption_algorithms_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/phase1_integrity_algorithms_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/phase2_dh_group_numbers_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/phase2_encryption_algorithms_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/phase2_integrity_algorithms_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_tunnel_log_options.dart';

part 'tunnel_option.g.dart';

/// The VPN tunnel options.
abstract class TunnelOption
    with _i1.AWSEquatable<TunnelOption>
    implements Built<TunnelOption, TunnelOptionBuilder> {
  /// The VPN tunnel options.
  factory TunnelOption({
    String? outsideIpAddress,
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
    List<Phase1EncryptionAlgorithmsListValue>? phase1EncryptionAlgorithms,
    List<Phase2EncryptionAlgorithmsListValue>? phase2EncryptionAlgorithms,
    List<Phase1IntegrityAlgorithmsListValue>? phase1IntegrityAlgorithms,
    List<Phase2IntegrityAlgorithmsListValue>? phase2IntegrityAlgorithms,
    List<Phase1DhGroupNumbersListValue>? phase1DhGroupNumbers,
    List<Phase2DhGroupNumbersListValue>? phase2DhGroupNumbers,
    List<IkeVersionsListValue>? ikeVersions,
    String? startupAction,
    VpnTunnelLogOptions? logOptions,
    bool? enableTunnelLifecycleControl,
  }) {
    phase1LifetimeSeconds ??= 0;
    phase2LifetimeSeconds ??= 0;
    rekeyMarginTimeSeconds ??= 0;
    rekeyFuzzPercentage ??= 0;
    replayWindowSize ??= 0;
    dpdTimeoutSeconds ??= 0;
    enableTunnelLifecycleControl ??= false;
    return _$TunnelOption._(
      outsideIpAddress: outsideIpAddress,
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

  /// The VPN tunnel options.
  factory TunnelOption.build([void Function(TunnelOptionBuilder) updates]) =
      _$TunnelOption;

  const TunnelOption._();

  static const List<_i3.SmithySerializer<TunnelOption>> serializers = [
    TunnelOptionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TunnelOptionBuilder b) {
    b
      ..phase1LifetimeSeconds = 0
      ..phase2LifetimeSeconds = 0
      ..rekeyMarginTimeSeconds = 0
      ..rekeyFuzzPercentage = 0
      ..replayWindowSize = 0
      ..dpdTimeoutSeconds = 0
      ..enableTunnelLifecycleControl = false;
  }

  /// The external IP address of the VPN tunnel.
  String? get outsideIpAddress;

  /// The range of inside IPv4 addresses for the tunnel.
  String? get tunnelInsideCidr;

  /// The range of inside IPv6 addresses for the tunnel.
  String? get tunnelInsideIpv6Cidr;

  /// The pre-shared key (PSK) to establish initial authentication between the virtual private gateway and the customer gateway.
  String? get preSharedKey;

  /// The lifetime for phase 1 of the IKE negotiation, in seconds.
  int get phase1LifetimeSeconds;

  /// The lifetime for phase 2 of the IKE negotiation, in seconds.
  int get phase2LifetimeSeconds;

  /// The margin time, in seconds, before the phase 2 lifetime expires, during which the Amazon Web Services side of the VPN connection performs an IKE rekey.
  int get rekeyMarginTimeSeconds;

  /// The percentage of the rekey window determined by `RekeyMarginTimeSeconds` during which the rekey time is randomly selected.
  int get rekeyFuzzPercentage;

  /// The number of packets in an IKE replay window.
  int get replayWindowSize;

  /// The number of seconds after which a DPD timeout occurs.
  int get dpdTimeoutSeconds;

  /// The action to take after a DPD timeout occurs.
  String? get dpdTimeoutAction;

  /// The permitted encryption algorithms for the VPN tunnel for phase 1 IKE negotiations.
  _i2.BuiltList<Phase1EncryptionAlgorithmsListValue>?
      get phase1EncryptionAlgorithms;

  /// The permitted encryption algorithms for the VPN tunnel for phase 2 IKE negotiations.
  _i2.BuiltList<Phase2EncryptionAlgorithmsListValue>?
      get phase2EncryptionAlgorithms;

  /// The permitted integrity algorithms for the VPN tunnel for phase 1 IKE negotiations.
  _i2.BuiltList<Phase1IntegrityAlgorithmsListValue>?
      get phase1IntegrityAlgorithms;

  /// The permitted integrity algorithms for the VPN tunnel for phase 2 IKE negotiations.
  _i2.BuiltList<Phase2IntegrityAlgorithmsListValue>?
      get phase2IntegrityAlgorithms;

  /// The permitted Diffie-Hellman group numbers for the VPN tunnel for phase 1 IKE negotiations.
  _i2.BuiltList<Phase1DhGroupNumbersListValue>? get phase1DhGroupNumbers;

  /// The permitted Diffie-Hellman group numbers for the VPN tunnel for phase 2 IKE negotiations.
  _i2.BuiltList<Phase2DhGroupNumbersListValue>? get phase2DhGroupNumbers;

  /// The IKE versions that are permitted for the VPN tunnel.
  _i2.BuiltList<IkeVersionsListValue>? get ikeVersions;

  /// The action to take when the establishing the VPN tunnels for a VPN connection.
  String? get startupAction;

  /// Options for logging VPN tunnel activity.
  VpnTunnelLogOptions? get logOptions;

  /// Status of tunnel endpoint lifecycle control feature.
  bool get enableTunnelLifecycleControl;
  @override
  List<Object?> get props => [
        outsideIpAddress,
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
    final helper = newBuiltValueToStringHelper('TunnelOption')
      ..add(
        'outsideIpAddress',
        outsideIpAddress,
      )
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

class TunnelOptionEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<TunnelOption> {
  const TunnelOptionEc2QuerySerializer() : super('TunnelOption');

  @override
  Iterable<Type> get types => const [
        TunnelOption,
        _$TunnelOption,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TunnelOption deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TunnelOptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'outsideIpAddress':
          result.outsideIpAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tunnelInsideCidr':
          result.tunnelInsideCidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tunnelInsideIpv6Cidr':
          result.tunnelInsideIpv6Cidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'preSharedKey':
          result.preSharedKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'phase1LifetimeSeconds':
          result.phase1LifetimeSeconds = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'phase2LifetimeSeconds':
          result.phase2LifetimeSeconds = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'rekeyMarginTimeSeconds':
          result.rekeyMarginTimeSeconds = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'rekeyFuzzPercentage':
          result.rekeyFuzzPercentage = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'replayWindowSize':
          result.replayWindowSize = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'dpdTimeoutSeconds':
          result.dpdTimeoutSeconds = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'dpdTimeoutAction':
          result.dpdTimeoutAction = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'phase1EncryptionAlgorithmSet':
          result.phase1EncryptionAlgorithms
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Phase1EncryptionAlgorithmsListValue)],
            ),
          ) as _i2.BuiltList<Phase1EncryptionAlgorithmsListValue>));
        case 'phase2EncryptionAlgorithmSet':
          result.phase2EncryptionAlgorithms
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Phase2EncryptionAlgorithmsListValue)],
            ),
          ) as _i2.BuiltList<Phase2EncryptionAlgorithmsListValue>));
        case 'phase1IntegrityAlgorithmSet':
          result.phase1IntegrityAlgorithms
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Phase1IntegrityAlgorithmsListValue)],
            ),
          ) as _i2.BuiltList<Phase1IntegrityAlgorithmsListValue>));
        case 'phase2IntegrityAlgorithmSet':
          result.phase2IntegrityAlgorithms
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Phase2IntegrityAlgorithmsListValue)],
            ),
          ) as _i2.BuiltList<Phase2IntegrityAlgorithmsListValue>));
        case 'phase1DHGroupNumberSet':
          result.phase1DhGroupNumbers.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Phase1DhGroupNumbersListValue)],
            ),
          ) as _i2.BuiltList<Phase1DhGroupNumbersListValue>));
        case 'phase2DHGroupNumberSet':
          result.phase2DhGroupNumbers.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Phase2DhGroupNumbersListValue)],
            ),
          ) as _i2.BuiltList<Phase2DhGroupNumbersListValue>));
        case 'ikeVersionSet':
          result.ikeVersions.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(IkeVersionsListValue)],
            ),
          ) as _i2.BuiltList<IkeVersionsListValue>));
        case 'startupAction':
          result.startupAction = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'logOptions':
          result.logOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VpnTunnelLogOptions),
          ) as VpnTunnelLogOptions));
        case 'enableTunnelLifecycleControl':
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
    TunnelOption object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TunnelOptionResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TunnelOption(
      :outsideIpAddress,
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
    if (outsideIpAddress != null) {
      result$
        ..add(const _i3.XmlElementName('OutsideIpAddress'))
        ..add(serializers.serialize(
          outsideIpAddress,
          specifiedType: const FullType(String),
        ));
    }
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
      ..add(const _i3.XmlElementName('DpdTimeoutSeconds'))
      ..add(serializers.serialize(
        dpdTimeoutSeconds,
        specifiedType: const FullType(int),
      ));
    if (dpdTimeoutAction != null) {
      result$
        ..add(const _i3.XmlElementName('DpdTimeoutAction'))
        ..add(serializers.serialize(
          dpdTimeoutAction,
          specifiedType: const FullType(String),
        ));
    }
    if (phase1EncryptionAlgorithms != null) {
      result$
        ..add(const _i3.XmlElementName('Phase1EncryptionAlgorithmSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          phase1EncryptionAlgorithms,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Phase1EncryptionAlgorithmsListValue)],
          ),
        ));
    }
    if (phase2EncryptionAlgorithms != null) {
      result$
        ..add(const _i3.XmlElementName('Phase2EncryptionAlgorithmSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          phase2EncryptionAlgorithms,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Phase2EncryptionAlgorithmsListValue)],
          ),
        ));
    }
    if (phase1IntegrityAlgorithms != null) {
      result$
        ..add(const _i3.XmlElementName('Phase1IntegrityAlgorithmSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          phase1IntegrityAlgorithms,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Phase1IntegrityAlgorithmsListValue)],
          ),
        ));
    }
    if (phase2IntegrityAlgorithms != null) {
      result$
        ..add(const _i3.XmlElementName('Phase2IntegrityAlgorithmSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          phase2IntegrityAlgorithms,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Phase2IntegrityAlgorithmsListValue)],
          ),
        ));
    }
    if (phase1DhGroupNumbers != null) {
      result$
        ..add(const _i3.XmlElementName('Phase1DHGroupNumberSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          phase1DhGroupNumbers,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Phase1DhGroupNumbersListValue)],
          ),
        ));
    }
    if (phase2DhGroupNumbers != null) {
      result$
        ..add(const _i3.XmlElementName('Phase2DHGroupNumberSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          phase2DhGroupNumbers,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Phase2DhGroupNumbersListValue)],
          ),
        ));
    }
    if (ikeVersions != null) {
      result$
        ..add(const _i3.XmlElementName('IkeVersionSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ikeVersions,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(IkeVersionsListValue)],
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
          specifiedType: const FullType(VpnTunnelLogOptions),
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
