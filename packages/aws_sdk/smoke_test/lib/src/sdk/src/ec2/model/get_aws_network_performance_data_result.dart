// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_aws_network_performance_data_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/data_response.dart';

part 'get_aws_network_performance_data_result.g.dart';

abstract class GetAwsNetworkPerformanceDataResult
    with
        _i1.AWSEquatable<GetAwsNetworkPerformanceDataResult>
    implements
        Built<GetAwsNetworkPerformanceDataResult,
            GetAwsNetworkPerformanceDataResultBuilder> {
  factory GetAwsNetworkPerformanceDataResult({
    List<DataResponse>? dataResponses,
    String? nextToken,
  }) {
    return _$GetAwsNetworkPerformanceDataResult._(
      dataResponses:
          dataResponses == null ? null : _i2.BuiltList(dataResponses),
      nextToken: nextToken,
    );
  }

  factory GetAwsNetworkPerformanceDataResult.build(
          [void Function(GetAwsNetworkPerformanceDataResultBuilder) updates]) =
      _$GetAwsNetworkPerformanceDataResult;

  const GetAwsNetworkPerformanceDataResult._();

  /// Constructs a [GetAwsNetworkPerformanceDataResult] from a [payload] and [response].
  factory GetAwsNetworkPerformanceDataResult.fromResponse(
    GetAwsNetworkPerformanceDataResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetAwsNetworkPerformanceDataResult>>
      serializers = [GetAwsNetworkPerformanceDataResultEc2QuerySerializer()];

  /// The list of data responses.
  _i2.BuiltList<DataResponse>? get dataResponses;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        dataResponses,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetAwsNetworkPerformanceDataResult')
          ..add(
            'dataResponses',
            dataResponses,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class GetAwsNetworkPerformanceDataResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<GetAwsNetworkPerformanceDataResult> {
  const GetAwsNetworkPerformanceDataResultEc2QuerySerializer()
      : super('GetAwsNetworkPerformanceDataResult');

  @override
  Iterable<Type> get types => const [
        GetAwsNetworkPerformanceDataResult,
        _$GetAwsNetworkPerformanceDataResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetAwsNetworkPerformanceDataResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAwsNetworkPerformanceDataResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dataResponseSet':
          result.dataResponses.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(DataResponse)],
            ),
          ) as _i2.BuiltList<DataResponse>));
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
    GetAwsNetworkPerformanceDataResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetAwsNetworkPerformanceDataResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetAwsNetworkPerformanceDataResult(:dataResponses, :nextToken) =
        object;
    if (dataResponses != null) {
      result$
        ..add(const _i3.XmlElementName('DataResponseSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          dataResponses,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(DataResponse)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
