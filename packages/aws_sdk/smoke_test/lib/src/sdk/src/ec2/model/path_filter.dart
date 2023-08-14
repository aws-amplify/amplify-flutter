// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.path_filter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/filter_port_range.dart';

part 'path_filter.g.dart';

/// Describes a set of filters for a path analysis. Use path filters to scope the analysis when there can be multiple resulting paths.
abstract class PathFilter
    with _i1.AWSEquatable<PathFilter>
    implements Built<PathFilter, PathFilterBuilder> {
  /// Describes a set of filters for a path analysis. Use path filters to scope the analysis when there can be multiple resulting paths.
  factory PathFilter({
    String? sourceAddress,
    FilterPortRange? sourcePortRange,
    String? destinationAddress,
    FilterPortRange? destinationPortRange,
  }) {
    return _$PathFilter._(
      sourceAddress: sourceAddress,
      sourcePortRange: sourcePortRange,
      destinationAddress: destinationAddress,
      destinationPortRange: destinationPortRange,
    );
  }

  /// Describes a set of filters for a path analysis. Use path filters to scope the analysis when there can be multiple resulting paths.
  factory PathFilter.build([void Function(PathFilterBuilder) updates]) =
      _$PathFilter;

  const PathFilter._();

  static const List<_i2.SmithySerializer<PathFilter>> serializers = [
    PathFilterEc2QuerySerializer()
  ];

  /// The source IPv4 address.
  String? get sourceAddress;

  /// The source port range.
  FilterPortRange? get sourcePortRange;

  /// The destination IPv4 address.
  String? get destinationAddress;

  /// The destination port range.
  FilterPortRange? get destinationPortRange;
  @override
  List<Object?> get props => [
        sourceAddress,
        sourcePortRange,
        destinationAddress,
        destinationPortRange,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PathFilter')
      ..add(
        'sourceAddress',
        sourceAddress,
      )
      ..add(
        'sourcePortRange',
        sourcePortRange,
      )
      ..add(
        'destinationAddress',
        destinationAddress,
      )
      ..add(
        'destinationPortRange',
        destinationPortRange,
      );
    return helper.toString();
  }
}

class PathFilterEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PathFilter> {
  const PathFilterEc2QuerySerializer() : super('PathFilter');

  @override
  Iterable<Type> get types => const [
        PathFilter,
        _$PathFilter,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PathFilter deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PathFilterBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'sourceAddress':
          result.sourceAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'sourcePortRange':
          result.sourcePortRange.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(FilterPortRange),
          ) as FilterPortRange));
        case 'destinationAddress':
          result.destinationAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'destinationPortRange':
          result.destinationPortRange.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(FilterPortRange),
          ) as FilterPortRange));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PathFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PathFilterResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PathFilter(
      :sourceAddress,
      :sourcePortRange,
      :destinationAddress,
      :destinationPortRange
    ) = object;
    if (sourceAddress != null) {
      result$
        ..add(const _i2.XmlElementName('SourceAddress'))
        ..add(serializers.serialize(
          sourceAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (sourcePortRange != null) {
      result$
        ..add(const _i2.XmlElementName('SourcePortRange'))
        ..add(serializers.serialize(
          sourcePortRange,
          specifiedType: const FullType(FilterPortRange),
        ));
    }
    if (destinationAddress != null) {
      result$
        ..add(const _i2.XmlElementName('DestinationAddress'))
        ..add(serializers.serialize(
          destinationAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (destinationPortRange != null) {
      result$
        ..add(const _i2.XmlElementName('DestinationPortRange'))
        ..add(serializers.serialize(
          destinationPortRange,
          specifiedType: const FullType(FilterPortRange),
        ));
    }
    return result$;
  }
}
