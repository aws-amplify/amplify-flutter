// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_service_last_accessed_details_with_entities_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/iam/model/entity_details.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/error_details.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/job_status_type.dart' as _i2;

part 'get_service_last_accessed_details_with_entities_response.g.dart';

abstract class GetServiceLastAccessedDetailsWithEntitiesResponse
    with
        _i1.AWSEquatable<GetServiceLastAccessedDetailsWithEntitiesResponse>
    implements
        Built<GetServiceLastAccessedDetailsWithEntitiesResponse,
            GetServiceLastAccessedDetailsWithEntitiesResponseBuilder> {
  factory GetServiceLastAccessedDetailsWithEntitiesResponse({
    required _i2.JobStatusType jobStatus,
    required DateTime jobCreationDate,
    required DateTime jobCompletionDate,
    required List<_i3.EntityDetails> entityDetailsList,
    bool? isTruncated,
    String? marker,
    _i4.ErrorDetails? error,
  }) {
    isTruncated ??= false;
    return _$GetServiceLastAccessedDetailsWithEntitiesResponse._(
      jobStatus: jobStatus,
      jobCreationDate: jobCreationDate,
      jobCompletionDate: jobCompletionDate,
      entityDetailsList: _i5.BuiltList(entityDetailsList),
      isTruncated: isTruncated,
      marker: marker,
      error: error,
    );
  }

  factory GetServiceLastAccessedDetailsWithEntitiesResponse.build(
      [void Function(GetServiceLastAccessedDetailsWithEntitiesResponseBuilder)
          updates]) = _$GetServiceLastAccessedDetailsWithEntitiesResponse;

  const GetServiceLastAccessedDetailsWithEntitiesResponse._();

  /// Constructs a [GetServiceLastAccessedDetailsWithEntitiesResponse] from a [payload] and [response].
  factory GetServiceLastAccessedDetailsWithEntitiesResponse.fromResponse(
    GetServiceLastAccessedDetailsWithEntitiesResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
      _i6.SmithySerializer<
          GetServiceLastAccessedDetailsWithEntitiesResponse>> serializers = [
    GetServiceLastAccessedDetailsWithEntitiesResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      GetServiceLastAccessedDetailsWithEntitiesResponseBuilder b) {
    b.isTruncated = false;
  }

  /// The status of the job.
  _i2.JobStatusType get jobStatus;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the report job was created.
  DateTime get jobCreationDate;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the generated report job was completed or failed.
  ///
  /// This field is null if the job is still in progress, as indicated by a job status value of `IN_PROGRESS`.
  DateTime get jobCompletionDate;

  /// An `EntityDetailsList` object that contains details about when an IAM entity (user or role) used group or policy permissions in an attempt to access the specified Amazon Web Services service.
  _i5.BuiltList<_i3.EntityDetails> get entityDetailsList;

  /// A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the `Marker` request parameter to retrieve more items. Note that IAM might return fewer than the `MaxItems` number of results even when there are more results available. We recommend that you check `IsTruncated` after every call to ensure that you receive all your results.
  bool get isTruncated;

  /// When `IsTruncated` is `true`, this element is present and contains the value to use for the `Marker` parameter in a subsequent pagination request.
  String? get marker;

  /// An object that contains details about the reason the operation failed.
  _i4.ErrorDetails? get error;
  @override
  List<Object?> get props => [
        jobStatus,
        jobCreationDate,
        jobCompletionDate,
        entityDetailsList,
        isTruncated,
        marker,
        error,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetServiceLastAccessedDetailsWithEntitiesResponse')
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
        'entityDetailsList',
        entityDetailsList,
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

class GetServiceLastAccessedDetailsWithEntitiesResponseAwsQuerySerializer
    extends _i6.StructuredSmithySerializer<
        GetServiceLastAccessedDetailsWithEntitiesResponse> {
  const GetServiceLastAccessedDetailsWithEntitiesResponseAwsQuerySerializer()
      : super('GetServiceLastAccessedDetailsWithEntitiesResponse');

  @override
  Iterable<Type> get types => const [
        GetServiceLastAccessedDetailsWithEntitiesResponse,
        _$GetServiceLastAccessedDetailsWithEntitiesResponse,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetServiceLastAccessedDetailsWithEntitiesResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetServiceLastAccessedDetailsWithEntitiesResponseBuilder();
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
        case 'EntityDetailsList':
          result.entityDetailsList.replace((const _i6.XmlBuiltListSerializer(
                  indexer: _i6.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i3.EntityDetails)],
            ),
          ) as _i5.BuiltList<_i3.EntityDetails>));
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
            specifiedType: const FullType(_i4.ErrorDetails),
          ) as _i4.ErrorDetails));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetServiceLastAccessedDetailsWithEntitiesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i6.XmlElementName(
        'GetServiceLastAccessedDetailsWithEntitiesResponseResponse',
        _i6.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetServiceLastAccessedDetailsWithEntitiesResponse(
      :jobStatus,
      :jobCreationDate,
      :jobCompletionDate,
      :entityDetailsList,
      :isTruncated,
      :marker,
      :error
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
    result$
      ..add(const _i6.XmlElementName('JobCompletionDate'))
      ..add(serializers.serialize(
        jobCompletionDate,
        specifiedType: const FullType.nullable(DateTime),
      ));
    result$
      ..add(const _i6.XmlElementName('EntityDetailsList'))
      ..add(
          const _i6.XmlBuiltListSerializer(indexer: _i6.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        entityDetailsList,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(_i3.EntityDetails)],
        ),
      ));
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
    if (error != null) {
      result$
        ..add(const _i6.XmlElementName('Error'))
        ..add(serializers.serialize(
          error,
          specifiedType: const FullType(_i4.ErrorDetails),
        ));
    }
    return result$;
  }
}
