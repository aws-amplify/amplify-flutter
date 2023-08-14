// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_placement_group_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/placement_group.dart';

part 'create_placement_group_result.g.dart';

abstract class CreatePlacementGroupResult
    with _i1.AWSEquatable<CreatePlacementGroupResult>
    implements
        Built<CreatePlacementGroupResult, CreatePlacementGroupResultBuilder> {
  factory CreatePlacementGroupResult({PlacementGroup? placementGroup}) {
    return _$CreatePlacementGroupResult._(placementGroup: placementGroup);
  }

  factory CreatePlacementGroupResult.build(
          [void Function(CreatePlacementGroupResultBuilder) updates]) =
      _$CreatePlacementGroupResult;

  const CreatePlacementGroupResult._();

  /// Constructs a [CreatePlacementGroupResult] from a [payload] and [response].
  factory CreatePlacementGroupResult.fromResponse(
    CreatePlacementGroupResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreatePlacementGroupResult>>
      serializers = [CreatePlacementGroupResultEc2QuerySerializer()];

  /// Information about the placement group.
  PlacementGroup? get placementGroup;
  @override
  List<Object?> get props => [placementGroup];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreatePlacementGroupResult')
      ..add(
        'placementGroup',
        placementGroup,
      );
    return helper.toString();
  }
}

class CreatePlacementGroupResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreatePlacementGroupResult> {
  const CreatePlacementGroupResultEc2QuerySerializer()
      : super('CreatePlacementGroupResult');

  @override
  Iterable<Type> get types => const [
        CreatePlacementGroupResult,
        _$CreatePlacementGroupResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreatePlacementGroupResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePlacementGroupResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'placementGroup':
          result.placementGroup.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PlacementGroup),
          ) as PlacementGroup));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreatePlacementGroupResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreatePlacementGroupResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreatePlacementGroupResult(:placementGroup) = object;
    if (placementGroup != null) {
      result$
        ..add(const _i2.XmlElementName('PlacementGroup'))
        ..add(serializers.serialize(
          placementGroup,
          specifiedType: const FullType(PlacementGroup),
        ));
    }
    return result$;
  }
}
