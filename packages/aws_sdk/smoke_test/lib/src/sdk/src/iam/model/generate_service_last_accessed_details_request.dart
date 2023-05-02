// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.generate_service_last_accessed_details_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/access_advisor_usage_granularity_type.dart'
    as _i3;

part 'generate_service_last_accessed_details_request.g.dart';

abstract class GenerateServiceLastAccessedDetailsRequest
    with
        _i1.HttpInput<GenerateServiceLastAccessedDetailsRequest>,
        _i2.AWSEquatable<GenerateServiceLastAccessedDetailsRequest>
    implements
        Built<GenerateServiceLastAccessedDetailsRequest,
            GenerateServiceLastAccessedDetailsRequestBuilder> {
  factory GenerateServiceLastAccessedDetailsRequest({
    required String arn,
    _i3.AccessAdvisorUsageGranularityType? granularity,
  }) {
    return _$GenerateServiceLastAccessedDetailsRequest._(
      arn: arn,
      granularity: granularity,
    );
  }

  factory GenerateServiceLastAccessedDetailsRequest.build(
      [void Function(GenerateServiceLastAccessedDetailsRequestBuilder)
          updates]) = _$GenerateServiceLastAccessedDetailsRequest;

  const GenerateServiceLastAccessedDetailsRequest._();

  factory GenerateServiceLastAccessedDetailsRequest.fromRequest(
    GenerateServiceLastAccessedDetailsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GenerateServiceLastAccessedDetailsRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GenerateServiceLastAccessedDetailsRequestBuilder b) {}

  /// The ARN of the IAM resource (user, group, role, or managed policy) used to generate information about when the resource was last used in an attempt to access an Amazon Web Services service.
  String get arn;

  /// The level of detail that you want to generate. You can specify whether you want to generate information about the last attempt to access services or actions. If you specify service-level granularity, this operation generates only service data. If you specify action-level granularity, it generates service and action data. If you don't include this optional parameter, the operation generates service data.
  _i3.AccessAdvisorUsageGranularityType? get granularity;
  @override
  GenerateServiceLastAccessedDetailsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        arn,
        granularity,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GenerateServiceLastAccessedDetailsRequest');
    helper.add(
      'arn',
      arn,
    );
    helper.add(
      'granularity',
      granularity,
    );
    return helper.toString();
  }
}

class GenerateServiceLastAccessedDetailsRequestAwsQuerySerializer extends _i1
    .StructuredSmithySerializer<GenerateServiceLastAccessedDetailsRequest> {
  const GenerateServiceLastAccessedDetailsRequestAwsQuerySerializer()
      : super('GenerateServiceLastAccessedDetailsRequest');

  @override
  Iterable<Type> get types => const [
        GenerateServiceLastAccessedDetailsRequest,
        _$GenerateServiceLastAccessedDetailsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GenerateServiceLastAccessedDetailsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GenerateServiceLastAccessedDetailsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Arn':
          result.arn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Granularity':
          if (value != null) {
            result.granularity = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.AccessAdvisorUsageGranularityType),
            ) as _i3.AccessAdvisorUsageGranularityType);
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
    final payload = (object as GenerateServiceLastAccessedDetailsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'GenerateServiceLastAccessedDetailsRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('Arn'))
      ..add(serializers.serialize(
        payload.arn,
        specifiedType: const FullType(String),
      ));
    if (payload.granularity != null) {
      result
        ..add(const _i1.XmlElementName('Granularity'))
        ..add(serializers.serialize(
          payload.granularity!,
          specifiedType:
              const FullType.nullable(_i3.AccessAdvisorUsageGranularityType),
        ));
    }
    return result;
  }
}
