// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_aws_network_performance_data_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/data_query.dart';

part 'get_aws_network_performance_data_request.g.dart';

abstract class GetAwsNetworkPerformanceDataRequest
    with
        _i1.HttpInput<GetAwsNetworkPerformanceDataRequest>,
        _i2.AWSEquatable<GetAwsNetworkPerformanceDataRequest>
    implements
        Built<GetAwsNetworkPerformanceDataRequest,
            GetAwsNetworkPerformanceDataRequestBuilder> {
  factory GetAwsNetworkPerformanceDataRequest({
    List<DataQuery>? dataQueries,
    DateTime? startTime,
    DateTime? endTime,
    int? maxResults,
    String? nextToken,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$GetAwsNetworkPerformanceDataRequest._(
      dataQueries: dataQueries == null ? null : _i3.BuiltList(dataQueries),
      startTime: startTime,
      endTime: endTime,
      maxResults: maxResults,
      nextToken: nextToken,
      dryRun: dryRun,
    );
  }

  factory GetAwsNetworkPerformanceDataRequest.build(
          [void Function(GetAwsNetworkPerformanceDataRequestBuilder) updates]) =
      _$GetAwsNetworkPerformanceDataRequest;

  const GetAwsNetworkPerformanceDataRequest._();

  factory GetAwsNetworkPerformanceDataRequest.fromRequest(
    GetAwsNetworkPerformanceDataRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetAwsNetworkPerformanceDataRequest>>
      serializers = [GetAwsNetworkPerformanceDataRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAwsNetworkPerformanceDataRequestBuilder b) {
    b
      ..maxResults = 0
      ..dryRun = false;
  }

  /// A list of network performance data queries.
  _i3.BuiltList<DataQuery>? get dataQueries;

  /// The starting time for the performance data request. The starting time must be formatted as `yyyy-mm-ddThh:mm:ss`. For example, `2022-06-10T12:00:00.000Z`.
  DateTime? get startTime;

  /// The ending time for the performance data request. The end time must be formatted as `yyyy-mm-ddThh:mm:ss`. For example, `2022-06-12T12:00:00.000Z`.
  DateTime? get endTime;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  GetAwsNetworkPerformanceDataRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dataQueries,
        startTime,
        endTime,
        maxResults,
        nextToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetAwsNetworkPerformanceDataRequest')
          ..add(
            'dataQueries',
            dataQueries,
          )
          ..add(
            'startTime',
            startTime,
          )
          ..add(
            'endTime',
            endTime,
          )
          ..add(
            'maxResults',
            maxResults,
          )
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class GetAwsNetworkPerformanceDataRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<GetAwsNetworkPerformanceDataRequest> {
  const GetAwsNetworkPerformanceDataRequestEc2QuerySerializer()
      : super('GetAwsNetworkPerformanceDataRequest');

  @override
  Iterable<Type> get types => const [
        GetAwsNetworkPerformanceDataRequest,
        _$GetAwsNetworkPerformanceDataRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetAwsNetworkPerformanceDataRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAwsNetworkPerformanceDataRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DataQuery':
          result.dataQueries.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(DataQuery)],
            ),
          ) as _i3.BuiltList<DataQuery>));
        case 'StartTime':
          result.startTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'EndTime':
          result.endTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetAwsNetworkPerformanceDataRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetAwsNetworkPerformanceDataRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetAwsNetworkPerformanceDataRequest(
      :dataQueries,
      :startTime,
      :endTime,
      :maxResults,
      :nextToken,
      :dryRun
    ) = object;
    if (dataQueries != null) {
      result$
        ..add(const _i1.XmlElementName('DataQuery'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          dataQueries,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(DataQuery)],
          ),
        ));
    }
    if (startTime != null) {
      result$
        ..add(const _i1.XmlElementName('StartTime'))
        ..add(serializers.serialize(
          startTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (endTime != null) {
      result$
        ..add(const _i1.XmlElementName('EndTime'))
        ..add(serializers.serialize(
          endTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
