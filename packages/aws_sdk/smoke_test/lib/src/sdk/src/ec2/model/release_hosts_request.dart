// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.release_hosts_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'release_hosts_request.g.dart';

abstract class ReleaseHostsRequest
    with
        _i1.HttpInput<ReleaseHostsRequest>,
        _i2.AWSEquatable<ReleaseHostsRequest>
    implements Built<ReleaseHostsRequest, ReleaseHostsRequestBuilder> {
  factory ReleaseHostsRequest({List<String>? hostIds}) {
    return _$ReleaseHostsRequest._(
        hostIds: hostIds == null ? null : _i3.BuiltList(hostIds));
  }

  factory ReleaseHostsRequest.build(
          [void Function(ReleaseHostsRequestBuilder) updates]) =
      _$ReleaseHostsRequest;

  const ReleaseHostsRequest._();

  factory ReleaseHostsRequest.fromRequest(
    ReleaseHostsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ReleaseHostsRequest>> serializers = [
    ReleaseHostsRequestEc2QuerySerializer()
  ];

  /// The IDs of the Dedicated Hosts to release.
  _i3.BuiltList<String>? get hostIds;
  @override
  ReleaseHostsRequest getPayload() => this;
  @override
  List<Object?> get props => [hostIds];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReleaseHostsRequest')
      ..add(
        'hostIds',
        hostIds,
      );
    return helper.toString();
  }
}

class ReleaseHostsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ReleaseHostsRequest> {
  const ReleaseHostsRequestEc2QuerySerializer() : super('ReleaseHostsRequest');

  @override
  Iterable<Type> get types => const [
        ReleaseHostsRequest,
        _$ReleaseHostsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReleaseHostsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReleaseHostsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'hostId':
          result.hostIds.replace((const _i1.XmlBuiltListSerializer(
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
    ReleaseHostsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ReleaseHostsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ReleaseHostsRequest(:hostIds) = object;
    if (hostIds != null) {
      result$
        ..add(const _i1.XmlElementName('HostId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          hostIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
