// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.get_account_summary_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/summary_key_type.dart' as _i2;

part 'get_account_summary_response.g.dart';

/// Contains the response to a successful GetAccountSummary request.
abstract class GetAccountSummaryResponse
    with _i1.AWSEquatable<GetAccountSummaryResponse>
    implements
        Built<GetAccountSummaryResponse, GetAccountSummaryResponseBuilder> {
  /// Contains the response to a successful GetAccountSummary request.
  factory GetAccountSummaryResponse(
      {Map<_i2.SummaryKeyType, int>? summaryMap}) {
    return _$GetAccountSummaryResponse._(
        summaryMap: summaryMap == null ? null : _i3.BuiltMap(summaryMap));
  }

  /// Contains the response to a successful GetAccountSummary request.
  factory GetAccountSummaryResponse.build(
          [void Function(GetAccountSummaryResponseBuilder) updates]) =
      _$GetAccountSummaryResponse;

  const GetAccountSummaryResponse._();

  /// Constructs a [GetAccountSummaryResponse] from a [payload] and [response].
  factory GetAccountSummaryResponse.fromResponse(
    GetAccountSummaryResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetAccountSummaryResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAccountSummaryResponseBuilder b) {}

  /// A set of key–value pairs containing information about IAM entity usage and IAM quotas.
  _i3.BuiltMap<_i2.SummaryKeyType, int>? get summaryMap;
  @override
  List<Object?> get props => [summaryMap];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetAccountSummaryResponse');
    helper.add(
      'summaryMap',
      summaryMap,
    );
    return helper.toString();
  }
}

class GetAccountSummaryResponseAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<GetAccountSummaryResponse> {
  const GetAccountSummaryResponseAwsQuerySerializer()
      : super('GetAccountSummaryResponse');

  @override
  Iterable<Type> get types => const [
        GetAccountSummaryResponse,
        _$GetAccountSummaryResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetAccountSummaryResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAccountSummaryResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'SummaryMap':
          if (value != null) {
            result.summaryMap.replace(const _i4.XmlBuiltMapSerializer(
                    indexer: _i4.XmlIndexer.awsQueryMap)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltMap,
                [
                  FullType(_i2.SummaryKeyType),
                  FullType(int),
                ],
              ),
            ));
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
    final payload = (object as GetAccountSummaryResponse);
    final result = <Object?>[
      const _i4.XmlElementName(
        'GetAccountSummaryResponseResponse',
        _i4.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.summaryMap != null) {
      result
        ..add(const _i4.XmlElementName('SummaryMap'))
        ..add(
            const _i4.XmlBuiltMapSerializer(indexer: _i4.XmlIndexer.awsQueryMap)
                .serialize(
          serializers,
          payload.summaryMap!,
          specifiedType: const FullType.nullable(
            _i3.BuiltMap,
            [
              FullType(_i2.SummaryKeyType),
              FullType(int),
            ],
          ),
        ));
    }
    return result;
  }
}
