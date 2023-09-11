// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.get_service_last_accessed_details_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/access_advisor_usage_granularity_type.dart';
import 'package:smoke_test/src/sdk/src/iam/model/error_details.dart';
import 'package:smoke_test/src/sdk/src/iam/model/job_status_type.dart';
import 'package:smoke_test/src/sdk/src/iam/model/service_last_accessed.dart';

part 'get_service_last_accessed_details_response.g.dart';

abstract class GetServiceLastAccessedDetailsResponse
    with
        _i1.AWSEquatable<GetServiceLastAccessedDetailsResponse>
    implements
        Built<GetServiceLastAccessedDetailsResponse,
            GetServiceLastAccessedDetailsResponseBuilder> {
  factory GetServiceLastAccessedDetailsResponse({
    required JobStatusType jobStatus,
    AccessAdvisorUsageGranularityType? jobType,
    required DateTime jobCreationDate,
    required List<ServiceLastAccessed> servicesLastAccessed,
    required DateTime jobCompletionDate,
    bool? isTruncated,
    String? marker,
    ErrorDetails? error,
  }) {
    isTruncated ??= false;
    return _$GetServiceLastAccessedDetailsResponse._(
      jobStatus: jobStatus,
      jobType: jobType,
      jobCreationDate: jobCreationDate,
      servicesLastAccessed: _i2.BuiltList(servicesLastAccessed),
      jobCompletionDate: jobCompletionDate,
      isTruncated: isTruncated,
      marker: marker,
      error: error,
    );
  }

  factory GetServiceLastAccessedDetailsResponse.build(
      [void Function(GetServiceLastAccessedDetailsResponseBuilder)
          updates]) = _$GetServiceLastAccessedDetailsResponse;

  const GetServiceLastAccessedDetailsResponse._();

  /// Constructs a [GetServiceLastAccessedDetailsResponse] from a [payload] and [response].
  factory GetServiceLastAccessedDetailsResponse.fromResponse(
    GetServiceLastAccessedDetailsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetServiceLastAccessedDetailsResponse>>
      serializers = [GetServiceLastAccessedDetailsResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetServiceLastAccessedDetailsResponseBuilder b) {
    b.isTruncated = false;
  }

  /// The status of the job.
  JobStatusType get jobStatus;

  /// The type of job. Service jobs return information about when each service was last accessed. Action jobs also include information about when tracked actions within the service were last accessed.
  AccessAdvisorUsageGranularityType? get jobType;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the report job was created.
  DateTime get jobCreationDate;

  /// A `ServiceLastAccessed` object that contains details about the most recent attempt to access the service.
  _i2.BuiltList<ServiceLastAccessed> get servicesLastAccessed;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the generated report job was completed or failed.
  ///
  /// This field is null if the job is still in progress, as indicated by a job status value of `IN_PROGRESS`.
  DateTime get jobCompletionDate;

  /// A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the `Marker` request parameter to retrieve more items. Note that IAM might return fewer than the `MaxItems` number of results even when there are more results available. We recommend that you check `IsTruncated` after every call to ensure that you receive all your results.
  bool get isTruncated;

  /// When `IsTruncated` is `true`, this element is present and contains the value to use for the `Marker` parameter in a subsequent pagination request.
  String? get marker;

  /// An object that contains details about the reason the operation failed.
  ErrorDetails? get error;
  @override
  List<Object?> get props => [
        jobStatus,
        jobType,
        jobCreationDate,
        servicesLastAccessed,
        jobCompletionDate,
        isTruncated,
        marker,
        error,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetServiceLastAccessedDetailsResponse')
          ..add(
            'jobStatus',
            jobStatus,
          )
          ..add(
            'jobType',
            jobType,
          )
          ..add(
            'jobCreationDate',
            jobCreationDate,
          )
          ..add(
            'servicesLastAccessed',
            servicesLastAccessed,
          )
          ..add(
            'jobCompletionDate',
            jobCompletionDate,
          )
          ..add(
            'isTruncated',
            isTruncated,
          )
          ..add(
            'marker',
            marker,
          )
          ..add(
            'error',
            error,
          );
    return helper.toString();
  }
}

class GetServiceLastAccessedDetailsResponseAwsQuerySerializer extends _i3
    .StructuredSmithySerializer<GetServiceLastAccessedDetailsResponse> {
  const GetServiceLastAccessedDetailsResponseAwsQuerySerializer()
      : super('GetServiceLastAccessedDetailsResponse');

  @override
  Iterable<Type> get types => const [
        GetServiceLastAccessedDetailsResponse,
        _$GetServiceLastAccessedDetailsResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetServiceLastAccessedDetailsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetServiceLastAccessedDetailsResponseBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'JobStatus':
          result.jobStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(JobStatusType),
          ) as JobStatusType);
        case 'JobType':
          result.jobType = (serializers.deserialize(
            value,
            specifiedType: const FullType(AccessAdvisorUsageGranularityType),
          ) as AccessAdvisorUsageGranularityType);
        case 'JobCreationDate':
          result.jobCreationDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'ServicesLastAccessed':
          result.servicesLastAccessed.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ServiceLastAccessed)],
            ),
          ) as _i2.BuiltList<ServiceLastAccessed>));
        case 'JobCompletionDate':
          result.jobCompletionDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'IsTruncated':
          result.isTruncated = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Marker':
          result.marker = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Error':
          result.error.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ErrorDetails),
          ) as ErrorDetails));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetServiceLastAccessedDetailsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetServiceLastAccessedDetailsResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetServiceLastAccessedDetailsResponse(
      :jobStatus,
      :jobType,
      :jobCreationDate,
      :servicesLastAccessed,
      :jobCompletionDate,
      :isTruncated,
      :marker,
      :error
    ) = object;
    result$
      ..add(const _i3.XmlElementName('JobStatus'))
      ..add(serializers.serialize(
        jobStatus,
        specifiedType: const FullType(JobStatusType),
      ));
    if (jobType != null) {
      result$
        ..add(const _i3.XmlElementName('JobType'))
        ..add(serializers.serialize(
          jobType,
          specifiedType: const FullType(AccessAdvisorUsageGranularityType),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('JobCreationDate'))
      ..add(serializers.serialize(
        jobCreationDate,
        specifiedType: const FullType(DateTime),
      ));
    result$
      ..add(const _i3.XmlElementName('ServicesLastAccessed'))
      ..add(
          const _i3.XmlBuiltListSerializer(indexer: _i3.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        servicesLastAccessed,
        specifiedType: const FullType(
          _i2.BuiltList,
          [FullType(ServiceLastAccessed)],
        ),
      ));
    result$
      ..add(const _i3.XmlElementName('JobCompletionDate'))
      ..add(serializers.serialize(
        jobCompletionDate,
        specifiedType: const FullType(DateTime),
      ));
    result$
      ..add(const _i3.XmlElementName('IsTruncated'))
      ..add(serializers.serialize(
        isTruncated,
        specifiedType: const FullType(bool),
      ));
    if (marker != null) {
      result$
        ..add(const _i3.XmlElementName('Marker'))
        ..add(serializers.serialize(
          marker,
          specifiedType: const FullType(String),
        ));
    }
    if (error != null) {
      result$
        ..add(const _i3.XmlElementName('Error'))
        ..add(serializers.serialize(
          error,
          specifiedType: const FullType(ErrorDetails),
        ));
    }
    return result$;
  }
}
