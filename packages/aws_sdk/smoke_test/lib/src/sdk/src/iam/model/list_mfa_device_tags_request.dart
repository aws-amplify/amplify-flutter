// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.list_mfa_device_tags_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_mfa_device_tags_request.g.dart';

abstract class ListMfaDeviceTagsRequest
    with
        _i1.HttpInput<ListMfaDeviceTagsRequest>,
        _i2.AWSEquatable<ListMfaDeviceTagsRequest>
    implements
        Built<ListMfaDeviceTagsRequest, ListMfaDeviceTagsRequestBuilder> {
  factory ListMfaDeviceTagsRequest({
    required String serialNumber,
    String? marker,
    int? maxItems,
  }) {
    return _$ListMfaDeviceTagsRequest._(
      serialNumber: serialNumber,
      marker: marker,
      maxItems: maxItems,
    );
  }

  factory ListMfaDeviceTagsRequest.build(
          [void Function(ListMfaDeviceTagsRequestBuilder) updates]) =
      _$ListMfaDeviceTagsRequest;

  const ListMfaDeviceTagsRequest._();

  factory ListMfaDeviceTagsRequest.fromRequest(
    ListMfaDeviceTagsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ListMfaDeviceTagsRequest>>
      serializers = [ListMfaDeviceTagsRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListMfaDeviceTagsRequestBuilder b) {}

  /// The unique identifier for the IAM virtual MFA device whose tags you want to see. For virtual MFA devices, the serial number is the same as the ARN.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get serialNumber;

  /// Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.
  String? get marker;

  /// Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.
  ///
  /// If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true`, and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.
  int? get maxItems;
  @override
  ListMfaDeviceTagsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        serialNumber,
        marker,
        maxItems,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListMfaDeviceTagsRequest')
      ..add(
        'serialNumber',
        serialNumber,
      )
      ..add(
        'marker',
        marker,
      )
      ..add(
        'maxItems',
        maxItems,
      );
    return helper.toString();
  }
}

class ListMfaDeviceTagsRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ListMfaDeviceTagsRequest> {
  const ListMfaDeviceTagsRequestAwsQuerySerializer()
      : super('ListMfaDeviceTagsRequest');

  @override
  Iterable<Type> get types => const [
        ListMfaDeviceTagsRequest,
        _$ListMfaDeviceTagsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListMfaDeviceTagsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListMfaDeviceTagsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SerialNumber':
          result.serialNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Marker':
          result.marker = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaxItems':
          result.maxItems = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListMfaDeviceTagsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ListMfaDeviceTagsRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ListMfaDeviceTagsRequest(:serialNumber, :marker, :maxItems) = object;
    result$
      ..add(const _i1.XmlElementName('SerialNumber'))
      ..add(serializers.serialize(
        serialNumber,
        specifiedType: const FullType(String),
      ));
    if (marker != null) {
      result$
        ..add(const _i1.XmlElementName('Marker'))
        ..add(serializers.serialize(
          marker,
          specifiedType: const FullType(String),
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
    return result$;
  }
}
