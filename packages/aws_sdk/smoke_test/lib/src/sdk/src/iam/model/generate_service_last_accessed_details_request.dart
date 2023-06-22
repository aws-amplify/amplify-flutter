// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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

  static const List<
          _i1.SmithySerializer<GenerateServiceLastAccessedDetailsRequest>>
      serializers = [
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
    final helper =
        newBuiltValueToStringHelper('GenerateServiceLastAccessedDetailsRequest')
          ..add(
            'arn',
            arn,
          )
          ..add(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Arn':
          result.arn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Granularity':
          result.granularity = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i3.AccessAdvisorUsageGranularityType),
          ) as _i3.AccessAdvisorUsageGranularityType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GenerateServiceLastAccessedDetailsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GenerateServiceLastAccessedDetailsRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GenerateServiceLastAccessedDetailsRequest(:arn, :granularity) =
        object;
    result$
      ..add(const _i1.XmlElementName('Arn'))
      ..add(serializers.serialize(
        arn,
        specifiedType: const FullType(String),
      ));
    if (granularity != null) {
      result$
        ..add(const _i1.XmlElementName('Granularity'))
        ..add(serializers.serialize(
          granularity,
          specifiedType:
              const FullType.nullable(_i3.AccessAdvisorUsageGranularityType),
        ));
    }
    return result$;
  }
}
