// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.get_organizations_access_report_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/sort_key_type.dart';

part 'get_organizations_access_report_request.g.dart';

abstract class GetOrganizationsAccessReportRequest
    with
        _i1.HttpInput<GetOrganizationsAccessReportRequest>,
        _i2.AWSEquatable<GetOrganizationsAccessReportRequest>
    implements
        Built<GetOrganizationsAccessReportRequest,
            GetOrganizationsAccessReportRequestBuilder> {
  factory GetOrganizationsAccessReportRequest({
    required String jobId,
    int? maxItems,
    String? marker,
    SortKeyType? sortKey,
  }) {
    return _$GetOrganizationsAccessReportRequest._(
      jobId: jobId,
      maxItems: maxItems,
      marker: marker,
      sortKey: sortKey,
    );
  }

  factory GetOrganizationsAccessReportRequest.build(
          [void Function(GetOrganizationsAccessReportRequestBuilder) updates]) =
      _$GetOrganizationsAccessReportRequest;

  const GetOrganizationsAccessReportRequest._();

  factory GetOrganizationsAccessReportRequest.fromRequest(
    GetOrganizationsAccessReportRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetOrganizationsAccessReportRequest>>
      serializers = [GetOrganizationsAccessReportRequestAwsQuerySerializer()];

  /// The identifier of the request generated by the GenerateOrganizationsAccessReport operation.
  String get jobId;

  /// Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.
  ///
  /// If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true`, and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.
  int? get maxItems;

  /// Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.
  String? get marker;

  /// The key that is used to sort the results. If you choose the namespace key, the results are returned in alphabetical order. If you choose the time key, the results are sorted numerically by the date and time.
  SortKeyType? get sortKey;
  @override
  GetOrganizationsAccessReportRequest getPayload() => this;
  @override
  List<Object?> get props => [
        jobId,
        maxItems,
        marker,
        sortKey,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetOrganizationsAccessReportRequest')
          ..add(
            'jobId',
            jobId,
          )
          ..add(
            'maxItems',
            maxItems,
          )
          ..add(
            'marker',
            marker,
          )
          ..add(
            'sortKey',
            sortKey,
          );
    return helper.toString();
  }
}

class GetOrganizationsAccessReportRequestAwsQuerySerializer extends _i1
    .StructuredSmithySerializer<GetOrganizationsAccessReportRequest> {
  const GetOrganizationsAccessReportRequestAwsQuerySerializer()
      : super('GetOrganizationsAccessReportRequest');

  @override
  Iterable<Type> get types => const [
        GetOrganizationsAccessReportRequest,
        _$GetOrganizationsAccessReportRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetOrganizationsAccessReportRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetOrganizationsAccessReportRequestBuilder();
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
        case 'JobId':
          result.jobId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaxItems':
          result.maxItems = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Marker':
          result.marker = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SortKey':
          result.sortKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(SortKeyType),
          ) as SortKeyType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetOrganizationsAccessReportRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetOrganizationsAccessReportRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetOrganizationsAccessReportRequest(
      :jobId,
      :maxItems,
      :marker,
      :sortKey
    ) = object;
    result$
      ..add(const _i1.XmlElementName('JobId'))
      ..add(serializers.serialize(
        jobId,
        specifiedType: const FullType(String),
      ));
    if (maxItems != null) {
      result$
        ..add(const _i1.XmlElementName('MaxItems'))
        ..add(serializers.serialize(
          maxItems,
          specifiedType: const FullType(int),
        ));
    }
    if (marker != null) {
      result$
        ..add(const _i1.XmlElementName('Marker'))
        ..add(serializers.serialize(
          marker,
          specifiedType: const FullType(String),
        ));
    }
    if (sortKey != null) {
      result$
        ..add(const _i1.XmlElementName('SortKey'))
        ..add(serializers.serialize(
          sortKey,
          specifiedType: const FullType(SortKeyType),
        ));
    }
    return result$;
  }
}
