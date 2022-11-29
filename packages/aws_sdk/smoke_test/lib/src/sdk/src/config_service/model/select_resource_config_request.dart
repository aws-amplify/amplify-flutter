// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.select_resource_config_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'select_resource_config_request.g.dart';

abstract class SelectResourceConfigRequest
    with
        _i1.HttpInput<SelectResourceConfigRequest>,
        _i2.AWSEquatable<SelectResourceConfigRequest>
    implements
        Built<SelectResourceConfigRequest, SelectResourceConfigRequestBuilder> {
  factory SelectResourceConfigRequest({
    required String expression,
    int? limit,
    String? nextToken,
  }) {
    return _$SelectResourceConfigRequest._(
      expression: expression,
      limit: limit,
      nextToken: nextToken,
    );
  }

  factory SelectResourceConfigRequest.build(
          [void Function(SelectResourceConfigRequestBuilder) updates]) =
      _$SelectResourceConfigRequest;

  const SelectResourceConfigRequest._();

  factory SelectResourceConfigRequest.fromRequest(
    SelectResourceConfigRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    SelectResourceConfigRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SelectResourceConfigRequestBuilder b) {}

  /// The SQL query `SELECT` command.
  String get expression;

  /// The maximum number of query results returned on each page.
  int? get limit;

  /// The `nextToken` string returned in a previous request that you use to request the next page of results in a paginated response.
  String? get nextToken;
  @override
  SelectResourceConfigRequest getPayload() => this;
  @override
  List<Object?> get props => [
        expression,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SelectResourceConfigRequest');
    helper.add(
      'expression',
      expression,
    );
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class SelectResourceConfigRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<SelectResourceConfigRequest> {
  const SelectResourceConfigRequestAwsJson11Serializer()
      : super('SelectResourceConfigRequest');

  @override
  Iterable<Type> get types => const [
        SelectResourceConfigRequest,
        _$SelectResourceConfigRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  SelectResourceConfigRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SelectResourceConfigRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Expression':
          result.expression = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Limit':
          if (value != null) {
            result.limit = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as SelectResourceConfigRequest);
    final result = <Object?>[
      'Expression',
      serializers.serialize(
        payload.expression,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.limit != null) {
      result
        ..add('Limit')
        ..add(serializers.serialize(
          payload.limit!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
