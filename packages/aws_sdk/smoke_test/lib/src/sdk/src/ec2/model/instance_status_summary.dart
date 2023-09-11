// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_status_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_status_details.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/summary_status.dart';

part 'instance_status_summary.g.dart';

/// Describes the status of an instance.
abstract class InstanceStatusSummary
    with _i1.AWSEquatable<InstanceStatusSummary>
    implements Built<InstanceStatusSummary, InstanceStatusSummaryBuilder> {
  /// Describes the status of an instance.
  factory InstanceStatusSummary({
    List<InstanceStatusDetails>? details,
    SummaryStatus? status,
  }) {
    return _$InstanceStatusSummary._(
      details: details == null ? null : _i2.BuiltList(details),
      status: status,
    );
  }

  /// Describes the status of an instance.
  factory InstanceStatusSummary.build(
          [void Function(InstanceStatusSummaryBuilder) updates]) =
      _$InstanceStatusSummary;

  const InstanceStatusSummary._();

  static const List<_i3.SmithySerializer<InstanceStatusSummary>> serializers = [
    InstanceStatusSummaryEc2QuerySerializer()
  ];

  /// The system instance health or application instance health.
  _i2.BuiltList<InstanceStatusDetails>? get details;

  /// The status.
  SummaryStatus? get status;
  @override
  List<Object?> get props => [
        details,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceStatusSummary')
      ..add(
        'details',
        details,
      )
      ..add(
        'status',
        status,
      );
    return helper.toString();
  }
}

class InstanceStatusSummaryEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InstanceStatusSummary> {
  const InstanceStatusSummaryEc2QuerySerializer()
      : super('InstanceStatusSummary');

  @override
  Iterable<Type> get types => const [
        InstanceStatusSummary,
        _$InstanceStatusSummary,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceStatusSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceStatusSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'details':
          result.details.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InstanceStatusDetails)],
            ),
          ) as _i2.BuiltList<InstanceStatusDetails>));
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(SummaryStatus),
          ) as SummaryStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceStatusSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'InstanceStatusSummaryResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceStatusSummary(:details, :status) = object;
    if (details != null) {
      result$
        ..add(const _i3.XmlElementName('Details'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          details,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(InstanceStatusDetails)],
          ),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(SummaryStatus),
        ));
    }
    return result$;
  }
}
