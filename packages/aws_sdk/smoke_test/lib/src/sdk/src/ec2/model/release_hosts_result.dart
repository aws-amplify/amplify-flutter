// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.release_hosts_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_item.dart';

part 'release_hosts_result.g.dart';

abstract class ReleaseHostsResult
    with _i1.AWSEquatable<ReleaseHostsResult>
    implements Built<ReleaseHostsResult, ReleaseHostsResultBuilder> {
  factory ReleaseHostsResult({
    List<String>? successful,
    List<UnsuccessfulItem>? unsuccessful,
  }) {
    return _$ReleaseHostsResult._(
      successful: successful == null ? null : _i2.BuiltList(successful),
      unsuccessful: unsuccessful == null ? null : _i2.BuiltList(unsuccessful),
    );
  }

  factory ReleaseHostsResult.build(
          [void Function(ReleaseHostsResultBuilder) updates]) =
      _$ReleaseHostsResult;

  const ReleaseHostsResult._();

  /// Constructs a [ReleaseHostsResult] from a [payload] and [response].
  factory ReleaseHostsResult.fromResponse(
    ReleaseHostsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ReleaseHostsResult>> serializers = [
    ReleaseHostsResultEc2QuerySerializer()
  ];

  /// The IDs of the Dedicated Hosts that were successfully released.
  _i2.BuiltList<String>? get successful;

  /// The IDs of the Dedicated Hosts that could not be released, including an error message.
  _i2.BuiltList<UnsuccessfulItem>? get unsuccessful;
  @override
  List<Object?> get props => [
        successful,
        unsuccessful,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReleaseHostsResult')
      ..add(
        'successful',
        successful,
      )
      ..add(
        'unsuccessful',
        unsuccessful,
      );
    return helper.toString();
  }
}

class ReleaseHostsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ReleaseHostsResult> {
  const ReleaseHostsResultEc2QuerySerializer() : super('ReleaseHostsResult');

  @override
  Iterable<Type> get types => const [
        ReleaseHostsResult,
        _$ReleaseHostsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReleaseHostsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReleaseHostsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'successful':
          result.successful.replace((const _i3.XmlBuiltListSerializer(
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
        case 'unsuccessful':
          result.unsuccessful.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(UnsuccessfulItem)],
            ),
          ) as _i2.BuiltList<UnsuccessfulItem>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ReleaseHostsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ReleaseHostsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ReleaseHostsResult(:successful, :unsuccessful) = object;
    if (successful != null) {
      result$
        ..add(const _i3.XmlElementName('Successful'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          successful,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (unsuccessful != null) {
      result$
        ..add(const _i3.XmlElementName('Unsuccessful'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          unsuccessful,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(UnsuccessfulItem)],
          ),
        ));
    }
    return result$;
  }
}
