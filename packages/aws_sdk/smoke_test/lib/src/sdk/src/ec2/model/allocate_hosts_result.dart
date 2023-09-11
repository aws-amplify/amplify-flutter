// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.allocate_hosts_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'allocate_hosts_result.g.dart';

/// Contains the output of AllocateHosts.
abstract class AllocateHostsResult
    with _i1.AWSEquatable<AllocateHostsResult>
    implements Built<AllocateHostsResult, AllocateHostsResultBuilder> {
  /// Contains the output of AllocateHosts.
  factory AllocateHostsResult({List<String>? hostIds}) {
    return _$AllocateHostsResult._(
        hostIds: hostIds == null ? null : _i2.BuiltList(hostIds));
  }

  /// Contains the output of AllocateHosts.
  factory AllocateHostsResult.build(
          [void Function(AllocateHostsResultBuilder) updates]) =
      _$AllocateHostsResult;

  const AllocateHostsResult._();

  /// Constructs a [AllocateHostsResult] from a [payload] and [response].
  factory AllocateHostsResult.fromResponse(
    AllocateHostsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<AllocateHostsResult>> serializers = [
    AllocateHostsResultEc2QuerySerializer()
  ];

  /// The ID of the allocated Dedicated Host. This is used to launch an instance onto a specific host.
  _i2.BuiltList<String>? get hostIds;
  @override
  List<Object?> get props => [hostIds];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AllocateHostsResult')
      ..add(
        'hostIds',
        hostIds,
      );
    return helper.toString();
  }
}

class AllocateHostsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AllocateHostsResult> {
  const AllocateHostsResultEc2QuerySerializer() : super('AllocateHostsResult');

  @override
  Iterable<Type> get types => const [
        AllocateHostsResult,
        _$AllocateHostsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AllocateHostsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AllocateHostsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'hostIdSet':
          result.hostIds.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AllocateHostsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AllocateHostsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AllocateHostsResult(:hostIds) = object;
    if (hostIds != null) {
      result$
        ..add(const _i3.XmlElementName('HostIdSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          hostIds,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
