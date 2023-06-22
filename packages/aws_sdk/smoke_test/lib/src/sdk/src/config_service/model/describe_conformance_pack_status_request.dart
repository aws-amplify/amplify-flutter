// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.describe_conformance_pack_status_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_conformance_pack_status_request.g.dart';

abstract class DescribeConformancePackStatusRequest
    with
        _i1.HttpInput<DescribeConformancePackStatusRequest>,
        _i2.AWSEquatable<DescribeConformancePackStatusRequest>
    implements
        Built<DescribeConformancePackStatusRequest,
            DescribeConformancePackStatusRequestBuilder> {
  factory DescribeConformancePackStatusRequest({
    List<String>? conformancePackNames,
    int? limit,
    String? nextToken,
  }) {
    limit ??= 0;
    return _$DescribeConformancePackStatusRequest._(
      conformancePackNames: conformancePackNames == null
          ? null
          : _i3.BuiltList(conformancePackNames),
      limit: limit,
      nextToken: nextToken,
    );
  }

  factory DescribeConformancePackStatusRequest.build(
      [void Function(DescribeConformancePackStatusRequestBuilder)
          updates]) = _$DescribeConformancePackStatusRequest;

  const DescribeConformancePackStatusRequest._();

  factory DescribeConformancePackStatusRequest.fromRequest(
    DescribeConformancePackStatusRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeConformancePackStatusRequest>>
      serializers = [DescribeConformancePackStatusRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeConformancePackStatusRequestBuilder b) {
    b.limit = 0;
  }

  /// Comma-separated list of conformance pack names.
  _i3.BuiltList<String>? get conformancePackNames;

  /// The maximum number of conformance packs status returned on each page.
  int get limit;

  /// The `nextToken` string returned in a previous request that you use to request the next page of results in a paginated response.
  String? get nextToken;
  @override
  DescribeConformancePackStatusRequest getPayload() => this;
  @override
  List<Object?> get props => [
        conformancePackNames,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeConformancePackStatusRequest')
          ..add(
            'conformancePackNames',
            conformancePackNames,
          )
          ..add(
            'limit',
            limit,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeConformancePackStatusRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<DescribeConformancePackStatusRequest> {
  const DescribeConformancePackStatusRequestAwsJson11Serializer()
      : super('DescribeConformancePackStatusRequest');

  @override
  Iterable<Type> get types => const [
        DescribeConformancePackStatusRequest,
        _$DescribeConformancePackStatusRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeConformancePackStatusRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeConformancePackStatusRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConformancePackNames':
          result.conformancePackNames.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'Limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextToken':
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
    DescribeConformancePackStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeConformancePackStatusRequest(
      :conformancePackNames,
      :limit,
      :nextToken
    ) = object;
    result$.addAll([
      'Limit',
      serializers.serialize(
        limit,
        specifiedType: const FullType(int),
      ),
    ]);
    if (conformancePackNames != null) {
      result$
        ..add('ConformancePackNames')
        ..add(serializers.serialize(
          conformancePackNames,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add('NextToken')
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
