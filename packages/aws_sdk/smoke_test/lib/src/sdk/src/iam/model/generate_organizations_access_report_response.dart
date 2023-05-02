// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.generate_organizations_access_report_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'generate_organizations_access_report_response.g.dart';

abstract class GenerateOrganizationsAccessReportResponse
    with
        _i1.AWSEquatable<GenerateOrganizationsAccessReportResponse>
    implements
        Built<GenerateOrganizationsAccessReportResponse,
            GenerateOrganizationsAccessReportResponseBuilder> {
  factory GenerateOrganizationsAccessReportResponse({String? jobId}) {
    return _$GenerateOrganizationsAccessReportResponse._(jobId: jobId);
  }

  factory GenerateOrganizationsAccessReportResponse.build(
      [void Function(GenerateOrganizationsAccessReportResponseBuilder)
          updates]) = _$GenerateOrganizationsAccessReportResponse;

  const GenerateOrganizationsAccessReportResponse._();

  /// Constructs a [GenerateOrganizationsAccessReportResponse] from a [payload] and [response].
  factory GenerateOrganizationsAccessReportResponse.fromResponse(
    GenerateOrganizationsAccessReportResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    GenerateOrganizationsAccessReportResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GenerateOrganizationsAccessReportResponseBuilder b) {}

  /// The job identifier that you can use in the GetOrganizationsAccessReport operation.
  String? get jobId;
  @override
  List<Object?> get props => [jobId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GenerateOrganizationsAccessReportResponse');
    helper.add(
      'jobId',
      jobId,
    );
    return helper.toString();
  }
}

class GenerateOrganizationsAccessReportResponseAwsQuerySerializer extends _i2
    .StructuredSmithySerializer<GenerateOrganizationsAccessReportResponse> {
  const GenerateOrganizationsAccessReportResponseAwsQuerySerializer()
      : super('GenerateOrganizationsAccessReportResponse');

  @override
  Iterable<Type> get types => const [
        GenerateOrganizationsAccessReportResponse,
        _$GenerateOrganizationsAccessReportResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GenerateOrganizationsAccessReportResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GenerateOrganizationsAccessReportResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'JobId':
          if (value != null) {
            result.jobId = (serializers.deserialize(
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
    final payload = (object as GenerateOrganizationsAccessReportResponse);
    final result = <Object?>[
      const _i2.XmlElementName(
        'GenerateOrganizationsAccessReportResponseResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.jobId != null) {
      result
        ..add(const _i2.XmlElementName('JobId'))
        ..add(serializers.serialize(
          payload.jobId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
