// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_instance_types_from_instance_requirements_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type_info_from_instance_requirements.dart';

part 'get_instance_types_from_instance_requirements_result.g.dart';

abstract class GetInstanceTypesFromInstanceRequirementsResult
    with
        _i1.AWSEquatable<GetInstanceTypesFromInstanceRequirementsResult>
    implements
        Built<GetInstanceTypesFromInstanceRequirementsResult,
            GetInstanceTypesFromInstanceRequirementsResultBuilder> {
  factory GetInstanceTypesFromInstanceRequirementsResult({
    List<InstanceTypeInfoFromInstanceRequirements>? instanceTypes,
    String? nextToken,
  }) {
    return _$GetInstanceTypesFromInstanceRequirementsResult._(
      instanceTypes:
          instanceTypes == null ? null : _i2.BuiltList(instanceTypes),
      nextToken: nextToken,
    );
  }

  factory GetInstanceTypesFromInstanceRequirementsResult.build(
      [void Function(GetInstanceTypesFromInstanceRequirementsResultBuilder)
          updates]) = _$GetInstanceTypesFromInstanceRequirementsResult;

  const GetInstanceTypesFromInstanceRequirementsResult._();

  /// Constructs a [GetInstanceTypesFromInstanceRequirementsResult] from a [payload] and [response].
  factory GetInstanceTypesFromInstanceRequirementsResult.fromResponse(
    GetInstanceTypesFromInstanceRequirementsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<GetInstanceTypesFromInstanceRequirementsResult>>
      serializers = [
    GetInstanceTypesFromInstanceRequirementsResultEc2QuerySerializer()
  ];

  /// The instance types with the specified instance attributes.
  _i2.BuiltList<InstanceTypeInfoFromInstanceRequirements>? get instanceTypes;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        instanceTypes,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetInstanceTypesFromInstanceRequirementsResult')
      ..add(
        'instanceTypes',
        instanceTypes,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class GetInstanceTypesFromInstanceRequirementsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        GetInstanceTypesFromInstanceRequirementsResult> {
  const GetInstanceTypesFromInstanceRequirementsResultEc2QuerySerializer()
      : super('GetInstanceTypesFromInstanceRequirementsResult');

  @override
  Iterable<Type> get types => const [
        GetInstanceTypesFromInstanceRequirementsResult,
        _$GetInstanceTypesFromInstanceRequirementsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetInstanceTypesFromInstanceRequirementsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetInstanceTypesFromInstanceRequirementsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceTypeSet':
          result.instanceTypes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InstanceTypeInfoFromInstanceRequirements)],
            ),
          ) as _i2.BuiltList<InstanceTypeInfoFromInstanceRequirements>));
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetInstanceTypesFromInstanceRequirementsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetInstanceTypesFromInstanceRequirementsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetInstanceTypesFromInstanceRequirementsResult(
      :instanceTypes,
      :nextToken
    ) = object;
    if (instanceTypes != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceTypeSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceTypes,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(InstanceTypeInfoFromInstanceRequirements)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
