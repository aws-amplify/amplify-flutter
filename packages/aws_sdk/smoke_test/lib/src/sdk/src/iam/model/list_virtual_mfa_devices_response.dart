// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.list_virtual_mfa_devices_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/virtual_mfa_device.dart'
    as _i2;

part 'list_virtual_mfa_devices_response.g.dart';

/// Contains the response to a successful ListVirtualMFADevices request.
abstract class ListVirtualMfaDevicesResponse
    with
        _i1.AWSEquatable<ListVirtualMfaDevicesResponse>
    implements
        Built<ListVirtualMfaDevicesResponse,
            ListVirtualMfaDevicesResponseBuilder> {
  /// Contains the response to a successful ListVirtualMFADevices request.
  factory ListVirtualMfaDevicesResponse({
    required List<_i2.VirtualMfaDevice> virtualMfaDevices,
    bool? isTruncated,
    String? marker,
  }) {
    isTruncated ??= false;
    return _$ListVirtualMfaDevicesResponse._(
      virtualMfaDevices: _i3.BuiltList(virtualMfaDevices),
      isTruncated: isTruncated,
      marker: marker,
    );
  }

  /// Contains the response to a successful ListVirtualMFADevices request.
  factory ListVirtualMfaDevicesResponse.build(
          [void Function(ListVirtualMfaDevicesResponseBuilder) updates]) =
      _$ListVirtualMfaDevicesResponse;

  const ListVirtualMfaDevicesResponse._();

  /// Constructs a [ListVirtualMfaDevicesResponse] from a [payload] and [response].
  factory ListVirtualMfaDevicesResponse.fromResponse(
    ListVirtualMfaDevicesResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<ListVirtualMfaDevicesResponse>>
      serializers = [ListVirtualMfaDevicesResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListVirtualMfaDevicesResponseBuilder b) {
    b.isTruncated = false;
  }

  /// The list of virtual MFA devices in the current account that match the `AssignmentStatus` value that was passed in the request.
  _i3.BuiltList<_i2.VirtualMfaDevice> get virtualMfaDevices;

  /// A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the `Marker` request parameter to retrieve more items. Note that IAM might return fewer than the `MaxItems` number of results even when there are more results available. We recommend that you check `IsTruncated` after every call to ensure that you receive all your results.
  bool get isTruncated;

  /// When `IsTruncated` is `true`, this element is present and contains the value to use for the `Marker` parameter in a subsequent pagination request.
  String? get marker;
  @override
  List<Object?> get props => [
        virtualMfaDevices,
        isTruncated,
        marker,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListVirtualMfaDevicesResponse')
      ..add(
        'virtualMfaDevices',
        virtualMfaDevices,
      )
      ..add(
        'isTruncated',
        isTruncated,
      )
      ..add(
        'marker',
        marker,
      );
    return helper.toString();
  }
}

class ListVirtualMfaDevicesResponseAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<ListVirtualMfaDevicesResponse> {
  const ListVirtualMfaDevicesResponseAwsQuerySerializer()
      : super('ListVirtualMfaDevicesResponse');

  @override
  Iterable<Type> get types => const [
        ListVirtualMfaDevicesResponse,
        _$ListVirtualMfaDevicesResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListVirtualMfaDevicesResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListVirtualMfaDevicesResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'VirtualMFADevices':
          result.virtualMfaDevices.replace((const _i4.XmlBuiltListSerializer(
                  indexer: _i4.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.VirtualMfaDevice)],
            ),
          ) as _i3.BuiltList<_i2.VirtualMfaDevice>));
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListVirtualMfaDevicesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'ListVirtualMfaDevicesResponseResponse',
        _i4.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ListVirtualMfaDevicesResponse(
      :virtualMfaDevices,
      :isTruncated,
      :marker
    ) = object;
    result$
      ..add(const _i4.XmlElementName('VirtualMFADevices'))
      ..add(
          const _i4.XmlBuiltListSerializer(indexer: _i4.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        virtualMfaDevices,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(_i2.VirtualMfaDevice)],
        ),
      ));
    result$
      ..add(const _i4.XmlElementName('IsTruncated'))
      ..add(serializers.serialize(
        isTruncated,
        specifiedType: const FullType(bool),
      ));
    if (marker != null) {
      result$
        ..add(const _i4.XmlElementName('Marker'))
        ..add(serializers.serialize(
          marker,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
