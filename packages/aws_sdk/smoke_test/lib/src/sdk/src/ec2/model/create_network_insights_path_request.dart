// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_network_insights_path_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/path_request_filter.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/protocol.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_network_insights_path_request.g.dart';

abstract class CreateNetworkInsightsPathRequest
    with
        _i1.HttpInput<CreateNetworkInsightsPathRequest>,
        _i2.AWSEquatable<CreateNetworkInsightsPathRequest>
    implements
        Built<CreateNetworkInsightsPathRequest,
            CreateNetworkInsightsPathRequestBuilder> {
  factory CreateNetworkInsightsPathRequest({
    String? sourceIp,
    String? destinationIp,
    String? source,
    String? destination,
    Protocol? protocol,
    int? destinationPort,
    List<TagSpecification>? tagSpecifications,
    bool? dryRun,
    String? clientToken,
    PathRequestFilter? filterAtSource,
    PathRequestFilter? filterAtDestination,
  }) {
    destinationPort ??= 0;
    dryRun ??= false;
    return _$CreateNetworkInsightsPathRequest._(
      sourceIp: sourceIp,
      destinationIp: destinationIp,
      source: source,
      destination: destination,
      protocol: protocol,
      destinationPort: destinationPort,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      dryRun: dryRun,
      clientToken: clientToken,
      filterAtSource: filterAtSource,
      filterAtDestination: filterAtDestination,
    );
  }

  factory CreateNetworkInsightsPathRequest.build(
          [void Function(CreateNetworkInsightsPathRequestBuilder) updates]) =
      _$CreateNetworkInsightsPathRequest;

  const CreateNetworkInsightsPathRequest._();

  factory CreateNetworkInsightsPathRequest.fromRequest(
    CreateNetworkInsightsPathRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateNetworkInsightsPathRequest>>
      serializers = [CreateNetworkInsightsPathRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateNetworkInsightsPathRequestBuilder b) {
    b
      ..destinationPort = 0
      ..dryRun = false
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true);
  }

  /// The IP address of the source.
  String? get sourceIp;

  /// The IP address of the destination.
  String? get destinationIp;

  /// The ID or ARN of the source. If the resource is in another account, you must specify an ARN.
  String? get source;

  /// The ID or ARN of the destination. If the resource is in another account, you must specify an ARN.
  String? get destination;

  /// The protocol.
  Protocol? get protocol;

  /// The destination port.
  int get destinationPort;

  /// The tags to add to the path.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Scopes the analysis to network paths that match specific filters at the source. If you specify this parameter, you can't specify the parameters for the source IP address or the destination port.
  PathRequestFilter? get filterAtSource;

  /// Scopes the analysis to network paths that match specific filters at the destination. If you specify this parameter, you can't specify the parameter for the destination IP address.
  PathRequestFilter? get filterAtDestination;
  @override
  CreateNetworkInsightsPathRequest getPayload() => this;
  @override
  List<Object?> get props => [
        sourceIp,
        destinationIp,
        source,
        destination,
        protocol,
        destinationPort,
        tagSpecifications,
        dryRun,
        clientToken,
        filterAtSource,
        filterAtDestination,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateNetworkInsightsPathRequest')
          ..add(
            'sourceIp',
            sourceIp,
          )
          ..add(
            'destinationIp',
            destinationIp,
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
            'protocol',
            protocol,
          )
          ..add(
            'destinationPort',
            destinationPort,
          )
          ..add(
            'tagSpecifications',
            tagSpecifications,
          )
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'clientToken',
            clientToken,
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

class CreateNetworkInsightsPathRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateNetworkInsightsPathRequest> {
  const CreateNetworkInsightsPathRequestEc2QuerySerializer()
      : super('CreateNetworkInsightsPathRequest');

  @override
  Iterable<Type> get types => const [
        CreateNetworkInsightsPathRequest,
        _$CreateNetworkInsightsPathRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateNetworkInsightsPathRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNetworkInsightsPathRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SourceIp':
          result.sourceIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DestinationIp':
          result.destinationIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Source':
          result.source = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Destination':
          result.destination = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Protocol':
          result.protocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(Protocol),
          ) as Protocol);
        case 'DestinationPort':
          result.destinationPort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
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
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'FilterAtSource':
          result.filterAtSource.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PathRequestFilter),
          ) as PathRequestFilter));
        case 'FilterAtDestination':
          result.filterAtDestination.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PathRequestFilter),
          ) as PathRequestFilter));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateNetworkInsightsPathRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateNetworkInsightsPathRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateNetworkInsightsPathRequest(
      :sourceIp,
      :destinationIp,
      :source,
      :destination,
      :protocol,
      :destinationPort,
      :tagSpecifications,
      :dryRun,
      :clientToken,
      :filterAtSource,
      :filterAtDestination
    ) = object;
    if (sourceIp != null) {
      result$
        ..add(const _i1.XmlElementName('SourceIp'))
        ..add(serializers.serialize(
          sourceIp,
          specifiedType: const FullType(String),
        ));
    }
    if (destinationIp != null) {
      result$
        ..add(const _i1.XmlElementName('DestinationIp'))
        ..add(serializers.serialize(
          destinationIp,
          specifiedType: const FullType(String),
        ));
    }
    if (source != null) {
      result$
        ..add(const _i1.XmlElementName('Source'))
        ..add(serializers.serialize(
          source,
          specifiedType: const FullType(String),
        ));
    }
    if (destination != null) {
      result$
        ..add(const _i1.XmlElementName('Destination'))
        ..add(serializers.serialize(
          destination,
          specifiedType: const FullType(String),
        ));
    }
    if (protocol != null) {
      result$
        ..add(const _i1.XmlElementName('Protocol'))
        ..add(serializers.serialize(
          protocol,
          specifiedType: const FullType.nullable(Protocol),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DestinationPort'))
      ..add(serializers.serialize(
        destinationPort,
        specifiedType: const FullType(int),
      ));
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    if (filterAtSource != null) {
      result$
        ..add(const _i1.XmlElementName('FilterAtSource'))
        ..add(serializers.serialize(
          filterAtSource,
          specifiedType: const FullType(PathRequestFilter),
        ));
    }
    if (filterAtDestination != null) {
      result$
        ..add(const _i1.XmlElementName('FilterAtDestination'))
        ..add(serializers.serialize(
          filterAtDestination,
          specifiedType: const FullType(PathRequestFilter),
        ));
    }
    return result$;
  }
}
