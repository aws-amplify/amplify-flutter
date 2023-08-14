// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_traffic_mirror_filter_network_services_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_network_service.dart';

part 'modify_traffic_mirror_filter_network_services_request.g.dart';

abstract class ModifyTrafficMirrorFilterNetworkServicesRequest
    with
        _i1.HttpInput<ModifyTrafficMirrorFilterNetworkServicesRequest>,
        _i2.AWSEquatable<ModifyTrafficMirrorFilterNetworkServicesRequest>
    implements
        Built<ModifyTrafficMirrorFilterNetworkServicesRequest,
            ModifyTrafficMirrorFilterNetworkServicesRequestBuilder> {
  factory ModifyTrafficMirrorFilterNetworkServicesRequest({
    String? trafficMirrorFilterId,
    List<TrafficMirrorNetworkService>? addNetworkServices,
    List<TrafficMirrorNetworkService>? removeNetworkServices,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ModifyTrafficMirrorFilterNetworkServicesRequest._(
      trafficMirrorFilterId: trafficMirrorFilterId,
      addNetworkServices:
          addNetworkServices == null ? null : _i3.BuiltList(addNetworkServices),
      removeNetworkServices: removeNetworkServices == null
          ? null
          : _i3.BuiltList(removeNetworkServices),
      dryRun: dryRun,
    );
  }

  factory ModifyTrafficMirrorFilterNetworkServicesRequest.build(
      [void Function(ModifyTrafficMirrorFilterNetworkServicesRequestBuilder)
          updates]) = _$ModifyTrafficMirrorFilterNetworkServicesRequest;

  const ModifyTrafficMirrorFilterNetworkServicesRequest._();

  factory ModifyTrafficMirrorFilterNetworkServicesRequest.fromRequest(
    ModifyTrafficMirrorFilterNetworkServicesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<ModifyTrafficMirrorFilterNetworkServicesRequest>>
      serializers = [
    ModifyTrafficMirrorFilterNetworkServicesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyTrafficMirrorFilterNetworkServicesRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Traffic Mirror filter.
  String? get trafficMirrorFilterId;

  /// The network service, for example Amazon DNS, that you want to mirror.
  _i3.BuiltList<TrafficMirrorNetworkService>? get addNetworkServices;

  /// The network service, for example Amazon DNS, that you no longer want to mirror.
  _i3.BuiltList<TrafficMirrorNetworkService>? get removeNetworkServices;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifyTrafficMirrorFilterNetworkServicesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        trafficMirrorFilterId,
        addNetworkServices,
        removeNetworkServices,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ModifyTrafficMirrorFilterNetworkServicesRequest')
      ..add(
        'trafficMirrorFilterId',
        trafficMirrorFilterId,
      )
      ..add(
        'addNetworkServices',
        addNetworkServices,
      )
      ..add(
        'removeNetworkServices',
        removeNetworkServices,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class ModifyTrafficMirrorFilterNetworkServicesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        ModifyTrafficMirrorFilterNetworkServicesRequest> {
  const ModifyTrafficMirrorFilterNetworkServicesRequestEc2QuerySerializer()
      : super('ModifyTrafficMirrorFilterNetworkServicesRequest');

  @override
  Iterable<Type> get types => const [
        ModifyTrafficMirrorFilterNetworkServicesRequest,
        _$ModifyTrafficMirrorFilterNetworkServicesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyTrafficMirrorFilterNetworkServicesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyTrafficMirrorFilterNetworkServicesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TrafficMirrorFilterId':
          result.trafficMirrorFilterId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AddNetworkService':
          result.addNetworkServices.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TrafficMirrorNetworkService)],
            ),
          ) as _i3.BuiltList<TrafficMirrorNetworkService>));
        case 'RemoveNetworkService':
          result.removeNetworkServices
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TrafficMirrorNetworkService)],
            ),
          ) as _i3.BuiltList<TrafficMirrorNetworkService>));
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
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
    ModifyTrafficMirrorFilterNetworkServicesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyTrafficMirrorFilterNetworkServicesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyTrafficMirrorFilterNetworkServicesRequest(
      :trafficMirrorFilterId,
      :addNetworkServices,
      :removeNetworkServices,
      :dryRun
    ) = object;
    if (trafficMirrorFilterId != null) {
      result$
        ..add(const _i1.XmlElementName('TrafficMirrorFilterId'))
        ..add(serializers.serialize(
          trafficMirrorFilterId,
          specifiedType: const FullType(String),
        ));
    }
    if (addNetworkServices != null) {
      result$
        ..add(const _i1.XmlElementName('AddNetworkService'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          addNetworkServices,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(TrafficMirrorNetworkService)],
          ),
        ));
    }
    if (removeNetworkServices != null) {
      result$
        ..add(const _i1.XmlElementName('RemoveNetworkService'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          removeNetworkServices,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(TrafficMirrorNetworkService)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
