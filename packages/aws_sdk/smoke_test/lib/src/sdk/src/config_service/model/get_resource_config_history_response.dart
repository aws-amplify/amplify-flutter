// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.get_resource_config_history_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_item.dart'
    as _i2;

part 'get_resource_config_history_response.g.dart';

/// The output for the GetResourceConfigHistory action.
abstract class GetResourceConfigHistoryResponse
    with
        _i1.AWSEquatable<GetResourceConfigHistoryResponse>
    implements
        Built<GetResourceConfigHistoryResponse,
            GetResourceConfigHistoryResponseBuilder> {
  /// The output for the GetResourceConfigHistory action.
  factory GetResourceConfigHistoryResponse({
    List<_i2.ConfigurationItem>? configurationItems,
    String? nextToken,
  }) {
    return _$GetResourceConfigHistoryResponse._(
      configurationItems:
          configurationItems == null ? null : _i3.BuiltList(configurationItems),
      nextToken: nextToken,
    );
  }

  /// The output for the GetResourceConfigHistory action.
  factory GetResourceConfigHistoryResponse.build(
          [void Function(GetResourceConfigHistoryResponseBuilder) updates]) =
      _$GetResourceConfigHistoryResponse;

  const GetResourceConfigHistoryResponse._();

  /// Constructs a [GetResourceConfigHistoryResponse] from a [payload] and [response].
  factory GetResourceConfigHistoryResponse.fromResponse(
    GetResourceConfigHistoryResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<GetResourceConfigHistoryResponse>>
      serializers = [GetResourceConfigHistoryResponseAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetResourceConfigHistoryResponseBuilder b) {}

  /// A list that contains the configuration history of one or more resources.
  _i3.BuiltList<_i2.ConfigurationItem>? get configurationItems;

  /// The string that you use in a subsequent request to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        configurationItems,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetResourceConfigHistoryResponse')
          ..add(
            'configurationItems',
            configurationItems,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class GetResourceConfigHistoryResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<GetResourceConfigHistoryResponse> {
  const GetResourceConfigHistoryResponseAwsJson11Serializer()
      : super('GetResourceConfigHistoryResponse');

  @override
  Iterable<Type> get types => const [
        GetResourceConfigHistoryResponse,
        _$GetResourceConfigHistoryResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetResourceConfigHistoryResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetResourceConfigHistoryResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'configurationItems':
          result.configurationItems.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.ConfigurationItem)],
            ),
          ) as _i3.BuiltList<_i2.ConfigurationItem>));
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
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
    GetResourceConfigHistoryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetResourceConfigHistoryResponse(:configurationItems, :nextToken) =
        object;
    if (configurationItems != null) {
      result$
        ..add('configurationItems')
        ..add(serializers.serialize(
          configurationItems,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ConfigurationItem)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add('nextToken')
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
