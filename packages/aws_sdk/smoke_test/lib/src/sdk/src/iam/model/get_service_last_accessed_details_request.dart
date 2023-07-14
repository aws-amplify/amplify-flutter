// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.get_service_last_accessed_details_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_service_last_accessed_details_request.g.dart';

abstract class GetServiceLastAccessedDetailsRequest
    with
        _i1.HttpInput<GetServiceLastAccessedDetailsRequest>,
        _i2.AWSEquatable<GetServiceLastAccessedDetailsRequest>
    implements
        Built<GetServiceLastAccessedDetailsRequest,
            GetServiceLastAccessedDetailsRequestBuilder> {
  factory GetServiceLastAccessedDetailsRequest({
    required String jobId,
    int? maxItems,
    String? marker,
  }) {
    return _$GetServiceLastAccessedDetailsRequest._(
      jobId: jobId,
      maxItems: maxItems,
      marker: marker,
    );
  }

  factory GetServiceLastAccessedDetailsRequest.build(
      [void Function(GetServiceLastAccessedDetailsRequestBuilder)
          updates]) = _$GetServiceLastAccessedDetailsRequest;

  const GetServiceLastAccessedDetailsRequest._();

  factory GetServiceLastAccessedDetailsRequest.fromRequest(
    GetServiceLastAccessedDetailsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetServiceLastAccessedDetailsRequest>>
      serializers = [GetServiceLastAccessedDetailsRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetServiceLastAccessedDetailsRequestBuilder b) {}

  /// The ID of the request generated by the GenerateServiceLastAccessedDetails operation. The `JobId` returned by `GenerateServiceLastAccessedDetail` must be used by the same role within a session, or by the same user when used to call `GetServiceLastAccessedDetail`.
  String get jobId;

  /// Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.
  ///
  /// If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true`, and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.
  int? get maxItems;

  /// Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.
  String? get marker;
  @override
  GetServiceLastAccessedDetailsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        jobId,
        maxItems,
        marker,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetServiceLastAccessedDetailsRequest')
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
          );
    return helper.toString();
  }
}

class GetServiceLastAccessedDetailsRequestAwsQuerySerializer extends _i1
    .StructuredSmithySerializer<GetServiceLastAccessedDetailsRequest> {
  const GetServiceLastAccessedDetailsRequestAwsQuerySerializer()
      : super('GetServiceLastAccessedDetailsRequest');

  @override
  Iterable<Type> get types => const [
        GetServiceLastAccessedDetailsRequest,
        _$GetServiceLastAccessedDetailsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetServiceLastAccessedDetailsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetServiceLastAccessedDetailsRequestBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetServiceLastAccessedDetailsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetServiceLastAccessedDetailsRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetServiceLastAccessedDetailsRequest(:jobId, :maxItems, :marker) =
        object;
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
          specifiedType: const FullType.nullable(int),
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
    return result$;
  }
}
