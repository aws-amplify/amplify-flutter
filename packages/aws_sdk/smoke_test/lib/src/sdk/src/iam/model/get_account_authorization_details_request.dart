// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_account_authorization_details_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/entity_type.dart' as _i3;

part 'get_account_authorization_details_request.g.dart';

abstract class GetAccountAuthorizationDetailsRequest
    with
        _i1.HttpInput<GetAccountAuthorizationDetailsRequest>,
        _i2.AWSEquatable<GetAccountAuthorizationDetailsRequest>
    implements
        Built<GetAccountAuthorizationDetailsRequest,
            GetAccountAuthorizationDetailsRequestBuilder> {
  factory GetAccountAuthorizationDetailsRequest({
    List<_i3.EntityType>? filter,
    int? maxItems,
    String? marker,
  }) {
    return _$GetAccountAuthorizationDetailsRequest._(
      filter: filter == null ? null : _i4.BuiltList(filter),
      maxItems: maxItems,
      marker: marker,
    );
  }

  factory GetAccountAuthorizationDetailsRequest.build(
      [void Function(GetAccountAuthorizationDetailsRequestBuilder)
          updates]) = _$GetAccountAuthorizationDetailsRequest;

  const GetAccountAuthorizationDetailsRequest._();

  factory GetAccountAuthorizationDetailsRequest.fromRequest(
    GetAccountAuthorizationDetailsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetAccountAuthorizationDetailsRequest>>
      serializers = [GetAccountAuthorizationDetailsRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAccountAuthorizationDetailsRequestBuilder b) {}

  /// A list of entity types used to filter the results. Only the entities that match the types you specify are included in the output. Use the value `LocalManagedPolicy` to include customer managed policies.
  ///
  /// The format for this parameter is a comma-separated (if more than one) list of strings. Each string value in the list must be one of the valid values listed below.
  _i4.BuiltList<_i3.EntityType>? get filter;

  /// Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.
  ///
  /// If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true`, and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.
  int? get maxItems;

  /// Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.
  String? get marker;
  @override
  GetAccountAuthorizationDetailsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filter,
        maxItems,
        marker,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetAccountAuthorizationDetailsRequest')
          ..add(
            'filter',
            filter,
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

class GetAccountAuthorizationDetailsRequestAwsQuerySerializer extends _i1
    .StructuredSmithySerializer<GetAccountAuthorizationDetailsRequest> {
  const GetAccountAuthorizationDetailsRequestAwsQuerySerializer()
      : super('GetAccountAuthorizationDetailsRequest');

  @override
  Iterable<Type> get types => const [
        GetAccountAuthorizationDetailsRequest,
        _$GetAccountAuthorizationDetailsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetAccountAuthorizationDetailsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAccountAuthorizationDetailsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Filter':
          result.filter.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.EntityType)],
            ),
          ) as _i4.BuiltList<_i3.EntityType>));
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
    GetAccountAuthorizationDetailsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetAccountAuthorizationDetailsRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetAccountAuthorizationDetailsRequest(:filter, :maxItems, :marker) =
        object;
    if (filter != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          filter,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.EntityType)],
          ),
        ));
    }
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
