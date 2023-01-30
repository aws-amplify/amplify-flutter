// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.api_key_ids; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'api_key_ids.g.dart';

/// The identifier of an ApiKey used in a UsagePlan.
abstract class ApiKeyIds
    with _i1.AWSEquatable<ApiKeyIds>
    implements Built<ApiKeyIds, ApiKeyIdsBuilder> {
  /// The identifier of an ApiKey used in a UsagePlan.
  factory ApiKeyIds({
    List<String>? ids,
    List<String>? warnings,
  }) {
    return _$ApiKeyIds._(
      ids: ids == null ? null : _i2.BuiltList(ids),
      warnings: warnings == null ? null : _i2.BuiltList(warnings),
    );
  }

  /// The identifier of an ApiKey used in a UsagePlan.
  factory ApiKeyIds.build([void Function(ApiKeyIdsBuilder) updates]) =
      _$ApiKeyIds;

  const ApiKeyIds._();

  /// Constructs a [ApiKeyIds] from a [payload] and [response].
  factory ApiKeyIds.fromResponse(
    ApiKeyIds payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ApiKeyIdsRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ApiKeyIdsBuilder b) {}

  /// A list of all the ApiKey identifiers.
  _i2.BuiltList<String>? get ids;

  /// A list of warning messages.
  _i2.BuiltList<String>? get warnings;
  @override
  List<Object?> get props => [
        ids,
        warnings,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ApiKeyIds');
    helper.add(
      'ids',
      ids,
    );
    helper.add(
      'warnings',
      warnings,
    );
    return helper.toString();
  }
}

class ApiKeyIdsRestJson1Serializer
    extends _i3.StructuredSmithySerializer<ApiKeyIds> {
  const ApiKeyIdsRestJson1Serializer() : super('ApiKeyIds');

  @override
  Iterable<Type> get types => const [
        ApiKeyIds,
        _$ApiKeyIds,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  ApiKeyIds deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiKeyIdsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ids':
          if (value != null) {
            result.ids.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i2.BuiltList,
                [FullType(String)],
              ),
            ) as _i2.BuiltList<String>));
          }
          break;
        case 'warnings':
          if (value != null) {
            result.warnings.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i2.BuiltList,
                [FullType(String)],
              ),
            ) as _i2.BuiltList<String>));
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
    final payload = (object as ApiKeyIds);
    final result = <Object?>[];
    if (payload.ids != null) {
      result
        ..add('ids')
        ..add(serializers.serialize(
          payload.ids!,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.warnings != null) {
      result
        ..add('warnings')
        ..add(serializers.serialize(
          payload.warnings!,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
