// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.network_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/efa_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ena_support.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_card_info.dart';

part 'network_info.g.dart';

/// Describes the networking features of the instance type.
abstract class NetworkInfo
    with _i1.AWSEquatable<NetworkInfo>
    implements Built<NetworkInfo, NetworkInfoBuilder> {
  /// Describes the networking features of the instance type.
  factory NetworkInfo({
    String? networkPerformance,
    int? maximumNetworkInterfaces,
    int? maximumNetworkCards,
    int? defaultNetworkCardIndex,
    List<NetworkCardInfo>? networkCards,
    int? ipv4AddressesPerInterface,
    int? ipv6AddressesPerInterface,
    bool? ipv6Supported,
    EnaSupport? enaSupport,
    bool? efaSupported,
    EfaInfo? efaInfo,
    bool? encryptionInTransitSupported,
    bool? enaSrdSupported,
  }) {
    return _$NetworkInfo._(
      networkPerformance: networkPerformance,
      maximumNetworkInterfaces: maximumNetworkInterfaces,
      maximumNetworkCards: maximumNetworkCards,
      defaultNetworkCardIndex: defaultNetworkCardIndex,
      networkCards: networkCards == null ? null : _i2.BuiltList(networkCards),
      ipv4AddressesPerInterface: ipv4AddressesPerInterface,
      ipv6AddressesPerInterface: ipv6AddressesPerInterface,
      ipv6Supported: ipv6Supported,
      enaSupport: enaSupport,
      efaSupported: efaSupported,
      efaInfo: efaInfo,
      encryptionInTransitSupported: encryptionInTransitSupported,
      enaSrdSupported: enaSrdSupported,
    );
  }

  /// Describes the networking features of the instance type.
  factory NetworkInfo.build([void Function(NetworkInfoBuilder) updates]) =
      _$NetworkInfo;

  const NetworkInfo._();

  static const List<_i3.SmithySerializer<NetworkInfo>> serializers = [
    NetworkInfoEc2QuerySerializer()
  ];

  /// The network performance.
  String? get networkPerformance;

  /// The maximum number of network interfaces for the instance type.
  int? get maximumNetworkInterfaces;

  /// The maximum number of physical network cards that can be allocated to the instance.
  int? get maximumNetworkCards;

  /// The index of the default network card, starting at 0.
  int? get defaultNetworkCardIndex;

  /// Describes the network cards for the instance type.
  _i2.BuiltList<NetworkCardInfo>? get networkCards;

  /// The maximum number of IPv4 addresses per network interface.
  int? get ipv4AddressesPerInterface;

  /// The maximum number of IPv6 addresses per network interface.
  int? get ipv6AddressesPerInterface;

  /// Indicates whether IPv6 is supported.
  bool? get ipv6Supported;

  /// Indicates whether Elastic Network Adapter (ENA) is supported.
  EnaSupport? get enaSupport;

  /// Indicates whether Elastic Fabric Adapter (EFA) is supported.
  bool? get efaSupported;

  /// Describes the Elastic Fabric Adapters for the instance type.
  EfaInfo? get efaInfo;

  /// Indicates whether the instance type automatically encrypts in-transit traffic between instances.
  bool? get encryptionInTransitSupported;

  /// Indicates whether the instance type supports ENA Express. ENA Express uses Amazon Web Services Scalable Reliable Datagram (SRD) technology to increase the maximum bandwidth used per stream and minimize tail latency of network traffic between EC2 instances.
  bool? get enaSrdSupported;
  @override
  List<Object?> get props => [
        networkPerformance,
        maximumNetworkInterfaces,
        maximumNetworkCards,
        defaultNetworkCardIndex,
        networkCards,
        ipv4AddressesPerInterface,
        ipv6AddressesPerInterface,
        ipv6Supported,
        enaSupport,
        efaSupported,
        efaInfo,
        encryptionInTransitSupported,
        enaSrdSupported,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkInfo')
      ..add(
        'networkPerformance',
        networkPerformance,
      )
      ..add(
        'maximumNetworkInterfaces',
        maximumNetworkInterfaces,
      )
      ..add(
        'maximumNetworkCards',
        maximumNetworkCards,
      )
      ..add(
        'defaultNetworkCardIndex',
        defaultNetworkCardIndex,
      )
      ..add(
        'networkCards',
        networkCards,
      )
      ..add(
        'ipv4AddressesPerInterface',
        ipv4AddressesPerInterface,
      )
      ..add(
        'ipv6AddressesPerInterface',
        ipv6AddressesPerInterface,
      )
      ..add(
        'ipv6Supported',
        ipv6Supported,
      )
      ..add(
        'enaSupport',
        enaSupport,
      )
      ..add(
        'efaSupported',
        efaSupported,
      )
      ..add(
        'efaInfo',
        efaInfo,
      )
      ..add(
        'encryptionInTransitSupported',
        encryptionInTransitSupported,
      )
      ..add(
        'enaSrdSupported',
        enaSrdSupported,
      );
    return helper.toString();
  }
}

class NetworkInfoEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<NetworkInfo> {
  const NetworkInfoEc2QuerySerializer() : super('NetworkInfo');

  @override
  Iterable<Type> get types => const [
        NetworkInfo,
        _$NetworkInfo,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkPerformance':
          result.networkPerformance = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'maximumNetworkInterfaces':
          result.maximumNetworkInterfaces = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'maximumNetworkCards':
          result.maximumNetworkCards = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'defaultNetworkCardIndex':
          result.defaultNetworkCardIndex = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'networkCards':
          result.networkCards.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(NetworkCardInfo)],
            ),
          ) as _i2.BuiltList<NetworkCardInfo>));
        case 'ipv4AddressesPerInterface':
          result.ipv4AddressesPerInterface = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ipv6AddressesPerInterface':
          result.ipv6AddressesPerInterface = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ipv6Supported':
          result.ipv6Supported = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'enaSupport':
          result.enaSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(EnaSupport),
          ) as EnaSupport);
        case 'efaSupported':
          result.efaSupported = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'efaInfo':
          result.efaInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(EfaInfo),
          ) as EfaInfo));
        case 'encryptionInTransitSupported':
          result.encryptionInTransitSupported = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'enaSrdSupported':
          result.enaSrdSupported = (serializers.deserialize(
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
    NetworkInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'NetworkInfoResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NetworkInfo(
      :networkPerformance,
      :maximumNetworkInterfaces,
      :maximumNetworkCards,
      :defaultNetworkCardIndex,
      :networkCards,
      :ipv4AddressesPerInterface,
      :ipv6AddressesPerInterface,
      :ipv6Supported,
      :enaSupport,
      :efaSupported,
      :efaInfo,
      :encryptionInTransitSupported,
      :enaSrdSupported
    ) = object;
    if (networkPerformance != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkPerformance'))
        ..add(serializers.serialize(
          networkPerformance,
          specifiedType: const FullType(String),
        ));
    }
    if (maximumNetworkInterfaces != null) {
      result$
        ..add(const _i3.XmlElementName('MaximumNetworkInterfaces'))
        ..add(serializers.serialize(
          maximumNetworkInterfaces,
          specifiedType: const FullType(int),
        ));
    }
    if (maximumNetworkCards != null) {
      result$
        ..add(const _i3.XmlElementName('MaximumNetworkCards'))
        ..add(serializers.serialize(
          maximumNetworkCards,
          specifiedType: const FullType(int),
        ));
    }
    if (defaultNetworkCardIndex != null) {
      result$
        ..add(const _i3.XmlElementName('DefaultNetworkCardIndex'))
        ..add(serializers.serialize(
          defaultNetworkCardIndex,
          specifiedType: const FullType(int),
        ));
    }
    if (networkCards != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkCards'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkCards,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(NetworkCardInfo)],
          ),
        ));
    }
    if (ipv4AddressesPerInterface != null) {
      result$
        ..add(const _i3.XmlElementName('Ipv4AddressesPerInterface'))
        ..add(serializers.serialize(
          ipv4AddressesPerInterface,
          specifiedType: const FullType(int),
        ));
    }
    if (ipv6AddressesPerInterface != null) {
      result$
        ..add(const _i3.XmlElementName('Ipv6AddressesPerInterface'))
        ..add(serializers.serialize(
          ipv6AddressesPerInterface,
          specifiedType: const FullType(int),
        ));
    }
    if (ipv6Supported != null) {
      result$
        ..add(const _i3.XmlElementName('Ipv6Supported'))
        ..add(serializers.serialize(
          ipv6Supported,
          specifiedType: const FullType(bool),
        ));
    }
    if (enaSupport != null) {
      result$
        ..add(const _i3.XmlElementName('EnaSupport'))
        ..add(serializers.serialize(
          enaSupport,
          specifiedType: const FullType(EnaSupport),
        ));
    }
    if (efaSupported != null) {
      result$
        ..add(const _i3.XmlElementName('EfaSupported'))
        ..add(serializers.serialize(
          efaSupported,
          specifiedType: const FullType(bool),
        ));
    }
    if (efaInfo != null) {
      result$
        ..add(const _i3.XmlElementName('EfaInfo'))
        ..add(serializers.serialize(
          efaInfo,
          specifiedType: const FullType(EfaInfo),
        ));
    }
    if (encryptionInTransitSupported != null) {
      result$
        ..add(const _i3.XmlElementName('EncryptionInTransitSupported'))
        ..add(serializers.serialize(
          encryptionInTransitSupported,
          specifiedType: const FullType(bool),
        ));
    }
    if (enaSrdSupported != null) {
      result$
        ..add(const _i3.XmlElementName('EnaSrdSupported'))
        ..add(serializers.serialize(
          enaSrdSupported,
          specifiedType: const FullType(bool),
        ));
    }
    return result$;
  }
}
