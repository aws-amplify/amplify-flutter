// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_organizations_access_report_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/iam/model/access_detail.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/error_details.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/job_status_type.dart' as _i2;

part 'get_organizations_access_report_response.g.dart';

abstract class GetOrganizationsAccessReportResponse
    with
        _i1.AWSEquatable<GetOrganizationsAccessReportResponse>
    implements
        Built<GetOrganizationsAccessReportResponse,
            GetOrganizationsAccessReportResponseBuilder> {
  factory GetOrganizationsAccessReportResponse({
    required _i2.JobStatusType jobStatus,
    required DateTime jobCreationDate,
    DateTime? jobCompletionDate,
    int? numberOfServicesAccessible,
    int? numberOfServicesNotAccessed,
    List<_i3.AccessDetail>? accessDetails,
    bool? isTruncated,
    String? marker,
    _i4.ErrorDetails? errorDetails,
  }) {
    isTruncated ??= false;
    return _$GetOrganizationsAccessReportResponse._(
      jobStatus: jobStatus,
      jobCreationDate: jobCreationDate,
      jobCompletionDate: jobCompletionDate,
      numberOfServicesAccessible: numberOfServicesAccessible,
      numberOfServicesNotAccessed: numberOfServicesNotAccessed,
      accessDetails:
          accessDetails == null ? null : _i5.BuiltList(accessDetails),
      isTruncated: isTruncated,
      marker: marker,
      errorDetails: errorDetails,
    );
  }

  factory GetOrganizationsAccessReportResponse.build(
      [void Function(GetOrganizationsAccessReportResponseBuilder)
          updates]) = _$GetOrganizationsAccessReportResponse;

  const GetOrganizationsAccessReportResponse._();

  /// Constructs a [GetOrganizationsAccessReportResponse] from a [payload] and [response].
  factory GetOrganizationsAccessReportResponse.fromResponse(
    GetOrganizationsAccessReportResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i6.SmithySerializer<GetOrganizationsAccessReportResponse>>
      serializers = [GetOrganizationsAccessReportResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetOrganizationsAccessReportResponseBuilder b) {
    b.isTruncated = false;
  }

  /// The status of the job.
  _i2.JobStatusType get jobStatus;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the report job was created.
  DateTime get jobCreationDate;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the generated report job was completed or failed.
  ///
  /// This field is null if the job is still in progress, as indicated by a job status value of `IN_PROGRESS`.
  DateTime? get jobCompletionDate;

  /// The number of services that the applicable SCPs allow account principals to access.
  int? get numberOfServicesAccessible;

  /// The number of services that account principals are allowed but did not attempt to access.
  int? get numberOfServicesNotAccessed;

  /// An object that contains details about the most recent attempt to access the service.
  _i5.BuiltList<_i3.AccessDetail>? get accessDetails;

  /// A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the `Marker` request parameter to retrieve more items. Note that IAM might return fewer than the `MaxItems` number of results even when there are more results available. We recommend that you check `IsTruncated` after every call to ensure that you receive all your results.
  bool get isTruncated;

  /// When `IsTruncated` is `true`, this element is present and contains the value to use for the `Marker` parameter in a subsequent pagination request.
  String? get marker;

  /// Contains information about the reason that the operation failed.
  ///
  /// This data type is used as a response element in the GetOrganizationsAccessReport, GetServiceLastAccessedDetails, and GetServiceLastAccessedDetailsWithEntities operations.
  _i4.ErrorDetails? get errorDetails;
  @override
  List<Object?> get props => [
        jobStatus,
        jobCreationDate,
        jobCompletionDate,
        numberOfServicesAccessible,
        numberOfServicesNotAccessed,
        accessDetails,
        isTruncated,
        marker,
        errorDetails,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetOrganizationsAccessReportResponse')
          ..add(
            'jobStatus',
            jobStatus,
          )
          ..add(
            'jobCreationDate',
            jobCreationDate,
          )
          ..add(
            'jobCompletionDate',
            jobCompletionDate,
          )
          ..add(
            'numberOfServicesAccessible',
            numberOfServicesAccessible,
          )
          ..add(
            'numberOfServicesNotAccessed',
            numberOfServicesNotAccessed,
          )
          ..add(
            'accessDetails',
            accessDetails,
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
            'errorDetails',
            errorDetails,
          );
    return helper.toString();
  }
}

class GetOrganizationsAccessReportResponseAwsQuerySerializer extends _i6
    .StructuredSmithySerializer<GetOrganizationsAccessReportResponse> {
  const GetOrganizationsAccessReportResponseAwsQuerySerializer()
      : super('GetOrganizationsAccessReportResponse');

  @override
  Iterable<Type> get types => const [
        GetOrganizationsAccessReportResponse,
        _$GetOrganizationsAccessReportResponse,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetOrganizationsAccessReportResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetOrganizationsAccessReportResponseBuilder();
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
        case 'JobCreationDate':
          result.jobCreationDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'JobCompletionDate':
          result.jobCompletionDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'NumberOfServicesAccessible':
          result.numberOfServicesAccessible = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NumberOfServicesNotAccessed':
          result.numberOfServicesNotAccessed = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'AccessDetails':
          result.accessDetails.replace((const _i6.XmlBuiltListSerializer(
                  indexer: _i6.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i3.AccessDetail)],
            ),
          ) as _i5.BuiltList<_i3.AccessDetail>));
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
        case 'ErrorDetails':
          result.errorDetails.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ErrorDetails),
          ) as _i4.ErrorDetails));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetOrganizationsAccessReportResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i6.XmlElementName(
        'GetOrganizationsAccessReportResponseResponse',
        _i6.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetOrganizationsAccessReportResponse(
      :jobStatus,
      :jobCreationDate,
      :jobCompletionDate,
      :numberOfServicesAccessible,
      :numberOfServicesNotAccessed,
      :accessDetails,
      :isTruncated,
      :marker,
      :errorDetails
    ) = object;
    result$
      ..add(const _i6.XmlElementName('JobStatus'))
      ..add(serializers.serialize(
        jobStatus,
        specifiedType: const FullType.nullable(_i2.JobStatusType),
      ));
    result$
      ..add(const _i6.XmlElementName('JobCreationDate'))
      ..add(serializers.serialize(
        jobCreationDate,
        specifiedType: const FullType.nullable(DateTime),
      ));
    if (jobCompletionDate != null) {
      result$
        ..add(const _i6.XmlElementName('JobCompletionDate'))
        ..add(serializers.serialize(
          jobCompletionDate,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (numberOfServicesAccessible != null) {
      result$
        ..add(const _i6.XmlElementName('NumberOfServicesAccessible'))
        ..add(serializers.serialize(
          numberOfServicesAccessible,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (numberOfServicesNotAccessed != null) {
      result$
        ..add(const _i6.XmlElementName('NumberOfServicesNotAccessed'))
        ..add(serializers.serialize(
          numberOfServicesNotAccessed,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (accessDetails != null) {
      result$
        ..add(const _i6.XmlElementName('AccessDetails'))
        ..add(const _i6.XmlBuiltListSerializer(
                indexer: _i6.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          accessDetails,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i3.AccessDetail)],
          ),
        ));
    }
    result$
      ..add(const _i6.XmlElementName('IsTruncated'))
      ..add(serializers.serialize(
        isTruncated,
        specifiedType: const FullType(bool),
      ));
    if (marker != null) {
      result$
        ..add(const _i6.XmlElementName('Marker'))
        ..add(serializers.serialize(
          marker,
          specifiedType: const FullType(String),
        ));
    }
    if (errorDetails != null) {
      result$
        ..add(const _i6.XmlElementName('ErrorDetails'))
        ..add(serializers.serialize(
          errorDetails,
          specifiedType: const FullType(_i4.ErrorDetails),
        ));
    }
    return result$;
  }
}
