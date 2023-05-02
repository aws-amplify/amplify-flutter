// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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

  static const List<_i1.SmithySerializer> serializers = [
    ListMfaDeviceTagsRequestAwsQuerySerializer()
  ];

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
    final helper = newBuiltValueToStringHelper('ListMfaDeviceTagsRequest');
    helper.add(
      'serialNumber',
      serialNumber,
    );
    helper.add(
      'marker',
      marker,
    );
    helper.add(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'SerialNumber':
          result.serialNumber = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Marker':
          if (value != null) {
            result.marker = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'MaxItems':
          if (value != null) {
            result.maxItems = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as ListMfaDeviceTagsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ListMfaDeviceTagsRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('SerialNumber'))
      ..add(serializers.serialize(
        payload.serialNumber,
        specifiedType: const FullType(String),
      ));
    if (payload.marker != null) {
      result
        ..add(const _i1.XmlElementName('Marker'))
        ..add(serializers.serialize(
          payload.marker!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.maxItems != null) {
      result
        ..add(const _i1.XmlElementName('MaxItems'))
        ..add(serializers.serialize(
          payload.maxItems!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result;
  }
}
