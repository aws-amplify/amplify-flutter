// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_service_last_accessed_details_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/iam/model/access_advisor_usage_granularity_type.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/error_details.dart' as _i5;
import 'package:smoke_test/src/sdk/src/iam/model/job_status_type.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/service_last_accessed.dart'
    as _i4;

part 'get_service_last_accessed_details_response.g.dart';

abstract class GetServiceLastAccessedDetailsResponse
    with
        _i1.AWSEquatable<GetServiceLastAccessedDetailsResponse>
    implements
        Built<GetServiceLastAccessedDetailsResponse,
            GetServiceLastAccessedDetailsResponseBuilder> {
  factory GetServiceLastAccessedDetailsResponse({
    required _i2.JobStatusType jobStatus,
    _i3.AccessAdvisorUsageGranularityType? jobType,
    required DateTime jobCreationDate,
    required List<_i4.ServiceLastAccessed> servicesLastAccessed,
    required DateTime jobCompletionDate,
    bool? isTruncated,
    String? marker,
    _i5.ErrorDetails? error,
  }) {
    isTruncated ??= false;
    return _$GetServiceLastAccessedDetailsResponse._(
      jobStatus: jobStatus,
      jobType: jobType,
      jobCreationDate: jobCreationDate,
      servicesLastAccessed: _i6.BuiltList(servicesLastAccessed),
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

  static const List<_i7.SmithySerializer<GetServiceLastAccessedDetailsResponse>>
      serializers = [GetServiceLastAccessedDetailsResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetServiceLastAccessedDetailsResponseBuilder b) {
    b.isTruncated = false;
  }

  /// The status of the job.
  _i2.JobStatusType get jobStatus;

  /// The type of job. Service jobs return information about when each service was last accessed. Action jobs also include information about when tracked actions within the service were last accessed.
  _i3.AccessAdvisorUsageGranularityType? get jobType;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the report job was created.
  DateTime get jobCreationDate;

  /// A `ServiceLastAccessed` object that contains details about the most recent attempt to access the service.
  _i6.BuiltList<_i4.ServiceLastAccessed> get servicesLastAccessed;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the generated report job was completed or failed.
  ///
  /// This field is null if the job is still in progress, as indicated by a job status value of `IN_PROGRESS`.
  DateTime get jobCompletionDate;

  /// A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the `Marker` request parameter to retrieve more items. Note that IAM might return fewer than the `MaxItems` number of results even when there are more results available. We recommend that you check `IsTruncated` after every call to ensure that you receive all your results.
  bool get isTruncated;

  /// When `IsTruncated` is `true`, this element is present and contains the value to use for the `Marker` parameter in a subsequent pagination request.
  String? get marker;

  /// An object that contains details about the reason the operation failed.
  _i5.ErrorDetails? get error;
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

class GetServiceLastAccessedDetailsResponseAwsQuerySerializer extends _i7
    .StructuredSmithySerializer<GetServiceLastAccessedDetailsResponse> {
  const GetServiceLastAccessedDetailsResponseAwsQuerySerializer()
      : super('GetServiceLastAccessedDetailsResponse');

  @override
  Iterable<Type> get types => const [
        GetServiceLastAccessedDetailsResponse,
        _$GetServiceLastAccessedDetailsResponse,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
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
            specifiedType: const FullType(_i2.JobStatusType),
          ) as _i2.JobStatusType);
        case 'JobType':
          result.jobType = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i3.AccessAdvisorUsageGranularityType),
          ) as _i3.AccessAdvisorUsageGranularityType);
        case 'JobCreationDate':
          result.jobCreationDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'ServicesLastAccessed':
          result.servicesLastAccessed.replace((const _i7.XmlBuiltListSerializer(
                  indexer: _i7.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i4.ServiceLastAccessed)],
            ),
          ) as _i6.BuiltList<_i4.ServiceLastAccessed>));
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
            specifiedType: const FullType(_i5.ErrorDetails),
          ) as _i5.ErrorDetails));
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
      const _i7.XmlElementName(
        'GetServiceLastAccessedDetailsResponseResponse',
        _i7.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
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
      ..add(const _i7.XmlElementName('JobStatus'))
      ..add(serializers.serialize(
        jobStatus,
        specifiedType: const FullType.nullable(_i2.JobStatusType),
      ));
    if (jobType != null) {
      result$
        ..add(const _i7.XmlElementName('JobType'))
        ..add(serializers.serialize(
          jobType,
          specifiedType:
              const FullType.nullable(_i3.AccessAdvisorUsageGranularityType),
        ));
    }
    result$
      ..add(const _i7.XmlElementName('JobCreationDate'))
      ..add(serializers.serialize(
        jobCreationDate,
        specifiedType: const FullType.nullable(DateTime),
      ));
    result$
      ..add(const _i7.XmlElementName('ServicesLastAccessed'))
      ..add(
          const _i7.XmlBuiltListSerializer(indexer: _i7.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        servicesLastAccessed,
        specifiedType: const FullType.nullable(
          _i6.BuiltList,
          [FullType(_i4.ServiceLastAccessed)],
        ),
      ));
    result$
      ..add(const _i7.XmlElementName('JobCompletionDate'))
      ..add(serializers.serialize(
        jobCompletionDate,
        specifiedType: const FullType.nullable(DateTime),
      ));
    result$
      ..add(const _i7.XmlElementName('IsTruncated'))
      ..add(serializers.serialize(
        isTruncated,
        specifiedType: const FullType(bool),
      ));
    if (marker != null) {
      result$
        ..add(const _i7.XmlElementName('Marker'))
        ..add(serializers.serialize(
          marker,
          specifiedType: const FullType(String),
        ));
    }
    if (error != null) {
      result$
        ..add(const _i7.XmlElementName('Error'))
        ..add(serializers.serialize(
          error,
          specifiedType: const FullType(_i5.ErrorDetails),
        ));
    }
    return result$;
  }
}
