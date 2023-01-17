// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.describe_compliance_by_resource_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_by_resource.dart'
    as _i2;

part 'describe_compliance_by_resource_response.g.dart';

abstract class DescribeComplianceByResourceResponse
    with
        _i1.AWSEquatable<DescribeComplianceByResourceResponse>
    implements
        Built<DescribeComplianceByResourceResponse,
            DescribeComplianceByResourceResponseBuilder> {
  factory DescribeComplianceByResourceResponse({
    List<_i2.ComplianceByResource>? complianceByResources,
    String? nextToken,
  }) {
    return _$DescribeComplianceByResourceResponse._(
      complianceByResources: complianceByResources == null
          ? null
          : _i3.BuiltList(complianceByResources),
      nextToken: nextToken,
    );
  }

  factory DescribeComplianceByResourceResponse.build(
      [void Function(DescribeComplianceByResourceResponseBuilder)
          updates]) = _$DescribeComplianceByResourceResponse;

  const DescribeComplianceByResourceResponse._();

  /// Constructs a [DescribeComplianceByResourceResponse] from a [payload] and [response].
  factory DescribeComplianceByResourceResponse.fromResponse(
    DescribeComplianceByResourceResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeComplianceByResourceResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeComplianceByResourceResponseBuilder b) {}

  /// Indicates whether the specified Amazon Web Services resource complies with all of the Config rules that evaluate it.
  _i3.BuiltList<_i2.ComplianceByResource>? get complianceByResources;

  /// The string that you use in a subsequent request to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        complianceByResources,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeComplianceByResourceResponse');
    helper.add(
      'complianceByResources',
      complianceByResources,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeComplianceByResourceResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<DescribeComplianceByResourceResponse> {
  const DescribeComplianceByResourceResponseAwsJson11Serializer()
      : super('DescribeComplianceByResourceResponse');

  @override
  Iterable<Type> get types => const [
        DescribeComplianceByResourceResponse,
        _$DescribeComplianceByResourceResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeComplianceByResourceResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeComplianceByResourceResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ComplianceByResources':
          if (value != null) {
            result.complianceByResources.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ComplianceByResource)],
              ),
            ) as _i3.BuiltList<_i2.ComplianceByResource>));
          }
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as DescribeComplianceByResourceResponse);
    final result = <Object?>[];
    if (payload.complianceByResources != null) {
      result
        ..add('ComplianceByResources')
        ..add(serializers.serialize(
          payload.complianceByResources!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ComplianceByResource)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
