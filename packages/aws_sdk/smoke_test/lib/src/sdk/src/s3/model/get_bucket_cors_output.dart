// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.get_bucket_cors_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/cors_rule.dart';

part 'get_bucket_cors_output.g.dart';

abstract class GetBucketCorsOutput
    with _i1.AWSEquatable<GetBucketCorsOutput>
    implements Built<GetBucketCorsOutput, GetBucketCorsOutputBuilder> {
  factory GetBucketCorsOutput({List<CorsRule>? corsRules}) {
    return _$GetBucketCorsOutput._(
        corsRules: corsRules == null ? null : _i2.BuiltList(corsRules));
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

  static const List<_i3.SmithySerializer<GetBucketCorsOutput>> serializers = [
    GetBucketCorsOutputRestXmlSerializer()
  ];

  /// A set of origins and methods (cross-origin access that you want to allow). You can add up to 100 rules to the configuration.
  _i2.BuiltList<CorsRule>? get corsRules;
  @override
  List<Object?> get props => [corsRules];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketCorsOutput')
      ..add(
        'corsRules',
        corsRules,
      );
    return helper.toString();
  }
}

class GetBucketCorsOutputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<GetBucketCorsOutput> {
  const GetBucketCorsOutputRestXmlSerializer() : super('GetBucketCorsOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketCorsOutput,
        _$GetBucketCorsOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CORSRule':
          result.corsRules.add((serializers.deserialize(
            value,
            specifiedType: const FullType(CorsRule),
          ) as CorsRule));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetBucketCorsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CORSConfiguration',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final GetBucketCorsOutput(:corsRules) = object;
    if (corsRules != null) {
      result$.addAll(
          const _i3.XmlBuiltListSerializer(memberName: 'CORSRule').serialize(
        serializers,
        corsRules,
        specifiedType: const FullType.nullable(
          _i2.BuiltList,
          [FullType(CorsRule)],
        ),
      ));
    }
    return result$;
  }
}
