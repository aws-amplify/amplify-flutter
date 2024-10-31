// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_auth_cognito_dart.cognito_identity_provider.model.list_devices_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/device_type.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'list_devices_response.g.dart';

/// Represents the response to list devices.
abstract class ListDevicesResponse
    with _i1.AWSEquatable<ListDevicesResponse>
    implements Built<ListDevicesResponse, ListDevicesResponseBuilder> {
  /// Represents the response to list devices.
  factory ListDevicesResponse({
    List<DeviceType>? devices,
    String? paginationToken,
  }) {
    return _$ListDevicesResponse._(
      devices: devices == null ? null : _i2.BuiltList(devices),
      paginationToken: paginationToken,
    );
  }

  /// Represents the response to list devices.
  factory ListDevicesResponse.build(
          [void Function(ListDevicesResponseBuilder) updates]) =
      _$ListDevicesResponse;

  const ListDevicesResponse._();

  /// Constructs a [ListDevicesResponse] from a [payload] and [response].
  factory ListDevicesResponse.fromResponse(
    ListDevicesResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ListDevicesResponse>> serializers = [
    ListDevicesResponseAwsJson11Serializer()
  ];

  /// The devices returned in the list devices response.
  _i2.BuiltList<DeviceType>? get devices;

  /// The identifier that Amazon Cognito returned with the previous request to this operation. When you include a pagination token in your request, Amazon Cognito returns the next set of items in the list. By use of this token, you can paginate through the full list of items.
  String? get paginationToken;
  @override
  List<Object?> get props => [
        devices,
        paginationToken,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListDevicesResponse')
      ..add(
        'devices',
        devices,
      )
      ..add(
        'paginationToken',
        paginationToken,
      );
    return helper.toString();
  }
}

class ListDevicesResponseAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ListDevicesResponse> {
  const ListDevicesResponseAwsJson11Serializer() : super('ListDevicesResponse');

  @override
  Iterable<Type> get types => const [
        ListDevicesResponse,
        _$ListDevicesResponse,
      ];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];

  @override
  ListDevicesResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListDevicesResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Devices':
          result.devices.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(DeviceType)],
            ),
          ) as _i2.BuiltList<DeviceType>));
        case 'PaginationToken':
          result.paginationToken = (serializers.deserialize(
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
    ListDevicesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ListDevicesResponse(:devices, :paginationToken) = object;
    if (devices != null) {
      result$
        ..add('Devices')
        ..add(serializers.serialize(
          devices,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(DeviceType)],
          ),
        ));
    }
    if (paginationToken != null) {
      result$
        ..add('PaginationToken')
        ..add(serializers.serialize(
          paginationToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
