// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.path_request_filter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/request_filter_port_range.dart';

part 'path_request_filter.g.dart';

/// Describes a set of filters for a path analysis. Use path filters to scope the analysis when there can be multiple resulting paths.
abstract class PathRequestFilter
    with _i1.AWSEquatable<PathRequestFilter>
    implements Built<PathRequestFilter, PathRequestFilterBuilder> {
  /// Describes a set of filters for a path analysis. Use path filters to scope the analysis when there can be multiple resulting paths.
  factory PathRequestFilter({
    String? sourceAddress,
    RequestFilterPortRange? sourcePortRange,
    String? destinationAddress,
    RequestFilterPortRange? destinationPortRange,
  }) {
    return _$PathRequestFilter._(
      sourceAddress: sourceAddress,
      sourcePortRange: sourcePortRange,
      destinationAddress: destinationAddress,
      destinationPortRange: destinationPortRange,
    );
  }

  /// Describes a set of filters for a path analysis. Use path filters to scope the analysis when there can be multiple resulting paths.
  factory PathRequestFilter.build(
      [void Function(PathRequestFilterBuilder) updates]) = _$PathRequestFilter;

  const PathRequestFilter._();

  static const List<_i2.SmithySerializer<PathRequestFilter>> serializers = [
    PathRequestFilterEc2QuerySerializer()
  ];

  /// The source IPv4 address.
  String? get sourceAddress;

  /// The source port range.
  RequestFilterPortRange? get sourcePortRange;

  /// The destination IPv4 address.
  String? get destinationAddress;

  /// The destination port range.
  RequestFilterPortRange? get destinationPortRange;
  @override
  List<Object?> get props => [
        sourceAddress,
        sourcePortRange,
        destinationAddress,
        destinationPortRange,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PathRequestFilter')
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

class PathRequestFilterEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PathRequestFilter> {
  const PathRequestFilterEc2QuerySerializer() : super('PathRequestFilter');

  @override
  Iterable<Type> get types => const [
        PathRequestFilter,
        _$PathRequestFilter,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PathRequestFilter deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PathRequestFilterBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SourceAddress':
          result.sourceAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SourcePortRange':
          result.sourcePortRange.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(RequestFilterPortRange),
          ) as RequestFilterPortRange));
        case 'DestinationAddress':
          result.destinationAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DestinationPortRange':
          result.destinationPortRange.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(RequestFilterPortRange),
          ) as RequestFilterPortRange));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PathRequestFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PathRequestFilterResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PathRequestFilter(
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
          specifiedType: const FullType(RequestFilterPortRange),
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
          specifiedType: const FullType(RequestFilterPortRange),
        ));
    }
    return result$;
  }
}
