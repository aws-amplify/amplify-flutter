// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.get_bucket_cors_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/cors_rule.dart' as _i2;

part 'get_bucket_cors_output.g.dart';

abstract class GetBucketCorsOutput
    with _i1.AWSEquatable<GetBucketCorsOutput>
    implements Built<GetBucketCorsOutput, GetBucketCorsOutputBuilder> {
  factory GetBucketCorsOutput({List<_i2.CorsRule>? corsRules}) {
    return _$GetBucketCorsOutput._(
        corsRules: corsRules == null ? null : _i3.BuiltList(corsRules));
  }

  factory GetBucketCorsOutput.build(
          [void Function(GetBucketCorsOutputBuilder) updates]) =
      _$GetBucketCorsOutput;

  const GetBucketCorsOutput._();

  /// Constructs a [GetBucketCorsOutput] from a [payload] and [response].
  factory GetBucketCorsOutput.fromResponse(
    GetBucketCorsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetBucketCorsOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketCorsOutputBuilder b) {}

  /// A set of origins and methods (cross-origin access that you want to allow). You can add up to 100 rules to the configuration.
  _i3.BuiltList<_i2.CorsRule>? get corsRules;
  @override
  List<Object?> get props => [corsRules];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketCorsOutput');
    helper.add(
      'corsRules',
      corsRules,
    );
    return helper.toString();
  }
}

class GetBucketCorsOutputRestXmlSerializer
    extends _i4.StructuredSmithySerializer<GetBucketCorsOutput> {
  const GetBucketCorsOutputRestXmlSerializer() : super('GetBucketCorsOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketCorsOutput,
        _$GetBucketCorsOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketCorsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetBucketCorsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'CORSRule':
          if (value != null) {
            result.corsRules.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.CorsRule),
            ) as _i2.CorsRule));
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
    final payload = (object as GetBucketCorsOutput);
    final result = <Object?>[
      const _i4.XmlElementName(
        'CORSConfiguration',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.corsRules != null) {
      result.addAll(
          const _i4.XmlBuiltListSerializer(memberName: 'CORSRule').serialize(
        serializers,
        payload.corsRules!,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(_i2.CorsRule)],
        ),
      ));
    }
    return result;
  }
}
