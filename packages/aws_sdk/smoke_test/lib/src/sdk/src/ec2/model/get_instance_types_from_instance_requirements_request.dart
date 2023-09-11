// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_instance_types_from_instance_requirements_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/architecture_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_requirements_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/virtualization_type.dart';

part 'get_instance_types_from_instance_requirements_request.g.dart';

abstract class GetInstanceTypesFromInstanceRequirementsRequest
    with
        _i1.HttpInput<GetInstanceTypesFromInstanceRequirementsRequest>,
        _i2.AWSEquatable<GetInstanceTypesFromInstanceRequirementsRequest>
    implements
        Built<GetInstanceTypesFromInstanceRequirementsRequest,
            GetInstanceTypesFromInstanceRequirementsRequestBuilder> {
  factory GetInstanceTypesFromInstanceRequirementsRequest({
    bool? dryRun,
    List<ArchitectureType>? architectureTypes,
    List<VirtualizationType>? virtualizationTypes,
    InstanceRequirementsRequest? instanceRequirements,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$GetInstanceTypesFromInstanceRequirementsRequest._(
      dryRun: dryRun,
      architectureTypes:
          architectureTypes == null ? null : _i3.BuiltList(architectureTypes),
      virtualizationTypes: virtualizationTypes == null
          ? null
          : _i3.BuiltList(virtualizationTypes),
      instanceRequirements: instanceRequirements,
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory GetInstanceTypesFromInstanceRequirementsRequest.build(
      [void Function(GetInstanceTypesFromInstanceRequirementsRequestBuilder)
          updates]) = _$GetInstanceTypesFromInstanceRequirementsRequest;

  const GetInstanceTypesFromInstanceRequirementsRequest._();

  factory GetInstanceTypesFromInstanceRequirementsRequest.fromRequest(
    GetInstanceTypesFromInstanceRequirementsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<GetInstanceTypesFromInstanceRequirementsRequest>>
      serializers = [
    GetInstanceTypesFromInstanceRequirementsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetInstanceTypesFromInstanceRequirementsRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The processor architecture type.
  _i3.BuiltList<ArchitectureType>? get architectureTypes;

  /// The virtualization type.
  _i3.BuiltList<VirtualizationType>? get virtualizationTypes;

  /// The attributes required for the instance types.
  InstanceRequirementsRequest? get instanceRequirements;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int get maxResults;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;
  @override
  GetInstanceTypesFromInstanceRequirementsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        architectureTypes,
        virtualizationTypes,
        instanceRequirements,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetInstanceTypesFromInstanceRequirementsRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'architectureTypes',
        architectureTypes,
      )
      ..add(
        'virtualizationTypes',
        virtualizationTypes,
      )
      ..add(
        'instanceRequirements',
        instanceRequirements,
      )
      ..add(
        'maxResults',
        maxResults,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class GetInstanceTypesFromInstanceRequirementsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        GetInstanceTypesFromInstanceRequirementsRequest> {
  const GetInstanceTypesFromInstanceRequirementsRequestEc2QuerySerializer()
      : super('GetInstanceTypesFromInstanceRequirementsRequest');

  @override
  Iterable<Type> get types => const [
        GetInstanceTypesFromInstanceRequirementsRequest,
        _$GetInstanceTypesFromInstanceRequirementsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetInstanceTypesFromInstanceRequirementsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetInstanceTypesFromInstanceRequirementsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ArchitectureType':
          result.architectureTypes.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(ArchitectureType)],
            ),
          ) as _i3.BuiltList<ArchitectureType>));
        case 'VirtualizationType':
          result.virtualizationTypes.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(VirtualizationType)],
            ),
          ) as _i3.BuiltList<VirtualizationType>));
        case 'InstanceRequirements':
          result.instanceRequirements.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceRequirementsRequest),
          ) as InstanceRequirementsRequest));
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextToken':
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
    GetInstanceTypesFromInstanceRequirementsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetInstanceTypesFromInstanceRequirementsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetInstanceTypesFromInstanceRequirementsRequest(
      :dryRun,
      :architectureTypes,
      :virtualizationTypes,
      :instanceRequirements,
      :maxResults,
      :nextToken
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (architectureTypes != null) {
      result$
        ..add(const _i1.XmlElementName('ArchitectureType'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          architectureTypes,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(ArchitectureType)],
          ),
        ));
    }
    if (virtualizationTypes != null) {
      result$
        ..add(const _i1.XmlElementName('VirtualizationType'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          virtualizationTypes,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(VirtualizationType)],
          ),
        ));
    }
    if (instanceRequirements != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceRequirements'))
        ..add(serializers.serialize(
          instanceRequirements,
          specifiedType: const FullType(InstanceRequirementsRequest),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
