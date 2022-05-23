// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Generated with smithy-dart 0.5.1. DO NOT MODIFY.

library amplify_auth_cognito.cognito_identity_provider.model.list_devices_response;

import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/device_type.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'list_devices_response.g.dart';

/// Represents the response to list devices.
abstract class ListDevicesResponse
    with _i1.AWSEquatable<ListDevicesResponse>
    implements Built<ListDevicesResponse, ListDevicesResponseBuilder> {
  /// Represents the response to list devices.
  factory ListDevicesResponse(
      {_i2.BuiltList<_i3.DeviceType>? devices, String? paginationToken}) {
    return _$ListDevicesResponse._(
        devices: devices, paginationToken: paginationToken);
  }

  /// Represents the response to list devices.
  factory ListDevicesResponse.build(
          [void Function(ListDevicesResponseBuilder) updates]) =
      _$ListDevicesResponse;

  const ListDevicesResponse._();

  /// Constructs a [ListDevicesResponse] from a [payload] and [response].
  factory ListDevicesResponse.fromResponse(
          ListDevicesResponse payload, _i1.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    _ListDevicesResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListDevicesResponseBuilder b) {}

  /// The devices returned in the list devices response.
  _i2.BuiltList<_i3.DeviceType>? get devices;

  /// The pagination token for the list device response.
  String? get paginationToken;
  @override
  List<Object?> get props => [devices, paginationToken];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListDevicesResponse');
    helper.add('devices', devices);
    helper.add('paginationToken', paginationToken);
    return helper.toString();
  }
}

class _ListDevicesResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<ListDevicesResponse> {
  const _ListDevicesResponseAwsJson11Serializer()
      : super('ListDevicesResponse');

  @override
  Iterable<Type> get types =>
      const [ListDevicesResponse, _$ListDevicesResponse];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  ListDevicesResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ListDevicesResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Devices':
          if (value != null) {
            result.devices.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i2.BuiltList, [FullType(_i3.DeviceType)]))
                as _i2.BuiltList<_i3.DeviceType>));
          }
          break;
        case 'PaginationToken':
          if (value != null) {
            result.paginationToken = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as ListDevicesResponse);
    final result = <Object?>[];
    if (payload.devices != null) {
      result
        ..add('Devices')
        ..add(serializers.serialize(payload.devices!,
            specifiedType:
                const FullType(_i2.BuiltList, [FullType(_i3.DeviceType)])));
    }
    if (payload.paginationToken != null) {
      result
        ..add('PaginationToken')
        ..add(serializers.serialize(payload.paginationToken!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
