// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.network_insights_path; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/path_filter.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/protocol.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'network_insights_path.g.dart';

/// Describes a path.
abstract class NetworkInsightsPath
    with _i1.AWSEquatable<NetworkInsightsPath>
    implements Built<NetworkInsightsPath, NetworkInsightsPathBuilder> {
  /// Describes a path.
  factory NetworkInsightsPath({
    String? networkInsightsPathId,
    String? networkInsightsPathArn,
    DateTime? createdDate,
    String? source,
    String? destination,
    String? sourceArn,
    String? destinationArn,
    String? sourceIp,
    String? destinationIp,
    Protocol? protocol,
    int? destinationPort,
    List<Tag>? tags,
    PathFilter? filterAtSource,
    PathFilter? filterAtDestination,
  }) {
    destinationPort ??= 0;
    return _$NetworkInsightsPath._(
      networkInsightsPathId: networkInsightsPathId,
      networkInsightsPathArn: networkInsightsPathArn,
      createdDate: createdDate,
      source: source,
      destination: destination,
      sourceArn: sourceArn,
      destinationArn: destinationArn,
      sourceIp: sourceIp,
      destinationIp: destinationIp,
      protocol: protocol,
      destinationPort: destinationPort,
      tags: tags == null ? null : _i2.BuiltList(tags),
      filterAtSource: filterAtSource,
      filterAtDestination: filterAtDestination,
    );
  }

  /// Describes a path.
  factory NetworkInsightsPath.build(
          [void Function(NetworkInsightsPathBuilder) updates]) =
      _$NetworkInsightsPath;

  const NetworkInsightsPath._();

  static const List<_i3.SmithySerializer<NetworkInsightsPath>> serializers = [
    NetworkInsightsPathEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkInsightsPathBuilder b) {
    b.destinationPort = 0;
  }

  /// The ID of the path.
  String? get networkInsightsPathId;

  /// The Amazon Resource Name (ARN) of the path.
  String? get networkInsightsPathArn;

  /// The time stamp when the path was created.
  DateTime? get createdDate;

  /// The ID of the source.
  String? get source;

  /// The ID of the destination.
  String? get destination;

  /// The Amazon Resource Name (ARN) of the source.
  String? get sourceArn;

  /// The Amazon Resource Name (ARN) of the destination.
  String? get destinationArn;

  /// The IP address of the source.
  String? get sourceIp;

  /// The IP address of the destination.
  String? get destinationIp;

  /// The protocol.
  Protocol? get protocol;

  /// The destination port.
  int get destinationPort;

  /// The tags associated with the path.
  _i2.BuiltList<Tag>? get tags;

  /// Scopes the analysis to network paths that match specific filters at the source.
  PathFilter? get filterAtSource;

  /// Scopes the analysis to network paths that match specific filters at the destination.
  PathFilter? get filterAtDestination;
  @override
  List<Object?> get props => [
        networkInsightsPathId,
        networkInsightsPathArn,
        createdDate,
        source,
        destination,
        sourceArn,
        destinationArn,
        sourceIp,
        destinationIp,
        protocol,
        destinationPort,
        tags,
        filterAtSource,
        filterAtDestination,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkInsightsPath')
      ..add(
        'networkInsightsPathId',
        networkInsightsPathId,
      )
      ..add(
        'networkInsightsPathArn',
        networkInsightsPathArn,
      )
      ..add(
        'createdDate',
        createdDate,
      )
      ..add(
        'source',
        source,
      )
      ..add(
        'destination',
        destination,
      )
      ..add(
        'sourceArn',
        sourceArn,
      )
      ..add(
        'destinationArn',
        destinationArn,
      )
      ..add(
        'sourceIp',
        sourceIp,
      )
      ..add(
        'destinationIp',
        destinationIp,
      )
      ..add(
        'protocol',
        protocol,
      )
      ..add(
        'destinationPort',
        destinationPort,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'filterAtSource',
        filterAtSource,
      )
      ..add(
        'filterAtDestination',
        filterAtDestination,
      );
    return helper.toString();
  }
}

class NetworkInsightsPathEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<NetworkInsightsPath> {
  const NetworkInsightsPathEc2QuerySerializer() : super('NetworkInsightsPath');

  @override
  Iterable<Type> get types => const [
        NetworkInsightsPath,
        _$NetworkInsightsPath,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInsightsPath deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInsightsPathBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInsightsPathId':
          result.networkInsightsPathId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkInsightsPathArn':
          result.networkInsightsPathArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'createdDate':
          result.createdDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'source':
          result.source = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'destination':
          result.destination = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'sourceArn':
          result.sourceArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'destinationArn':
          result.destinationArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'sourceIp':
          result.sourceIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'destinationIp':
          result.destinationIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'protocol':
          result.protocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(Protocol),
          ) as Protocol);
        case 'destinationPort':
          result.destinationPort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
        case 'filterAtSource':
          result.filterAtSource.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PathFilter),
          ) as PathFilter));
        case 'filterAtDestination':
          result.filterAtDestination.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PathFilter),
          ) as PathFilter));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NetworkInsightsPath object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'NetworkInsightsPathResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NetworkInsightsPath(
      :networkInsightsPathId,
      :networkInsightsPathArn,
      :createdDate,
      :source,
      :destination,
      :sourceArn,
      :destinationArn,
      :sourceIp,
      :destinationIp,
      :protocol,
      :destinationPort,
      :tags,
      :filterAtSource,
      :filterAtDestination
    ) = object;
    if (networkInsightsPathId != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInsightsPathId'))
        ..add(serializers.serialize(
          networkInsightsPathId,
          specifiedType: const FullType(String),
        ));
    }
    if (networkInsightsPathArn != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInsightsPathArn'))
        ..add(serializers.serialize(
          networkInsightsPathArn,
          specifiedType: const FullType(String),
        ));
    }
    if (createdDate != null) {
      result$
        ..add(const _i3.XmlElementName('CreatedDate'))
        ..add(serializers.serialize(
          createdDate,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (source != null) {
      result$
        ..add(const _i3.XmlElementName('Source'))
        ..add(serializers.serialize(
          source,
          specifiedType: const FullType(String),
        ));
    }
    if (destination != null) {
      result$
        ..add(const _i3.XmlElementName('Destination'))
        ..add(serializers.serialize(
          destination,
          specifiedType: const FullType(String),
        ));
    }
    if (sourceArn != null) {
      result$
        ..add(const _i3.XmlElementName('SourceArn'))
        ..add(serializers.serialize(
          sourceArn,
          specifiedType: const FullType(String),
        ));
    }
    if (destinationArn != null) {
      result$
        ..add(const _i3.XmlElementName('DestinationArn'))
        ..add(serializers.serialize(
          destinationArn,
          specifiedType: const FullType(String),
        ));
    }
    if (sourceIp != null) {
      result$
        ..add(const _i3.XmlElementName('SourceIp'))
        ..add(serializers.serialize(
          sourceIp,
          specifiedType: const FullType(String),
        ));
    }
    if (destinationIp != null) {
      result$
        ..add(const _i3.XmlElementName('DestinationIp'))
        ..add(serializers.serialize(
          destinationIp,
          specifiedType: const FullType(String),
        ));
    }
    if (protocol != null) {
      result$
        ..add(const _i3.XmlElementName('Protocol'))
        ..add(serializers.serialize(
          protocol,
          specifiedType: const FullType.nullable(Protocol),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('DestinationPort'))
      ..add(serializers.serialize(
        destinationPort,
        specifiedType: const FullType(int),
      ));
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    if (filterAtSource != null) {
      result$
        ..add(const _i3.XmlElementName('FilterAtSource'))
        ..add(serializers.serialize(
          filterAtSource,
          specifiedType: const FullType(PathFilter),
        ));
    }
    if (filterAtDestination != null) {
      result$
        ..add(const _i3.XmlElementName('FilterAtDestination'))
        ..add(serializers.serialize(
          filterAtDestination,
          specifiedType: const FullType(PathFilter),
        ));
    }
    return result$;
  }
}
