// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.get_bucket_lifecycle_configuration_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/lifecycle_rule.dart' as _i2;

part 'get_bucket_lifecycle_configuration_output.g.dart';

abstract class GetBucketLifecycleConfigurationOutput
    with
        _i1.AWSEquatable<GetBucketLifecycleConfigurationOutput>
    implements
        Built<GetBucketLifecycleConfigurationOutput,
            GetBucketLifecycleConfigurationOutputBuilder> {
  factory GetBucketLifecycleConfigurationOutput(
      {List<_i2.LifecycleRule>? rules}) {
    return _$GetBucketLifecycleConfigurationOutput._(
        rules: rules == null ? null : _i3.BuiltList(rules));
  }

  factory GetBucketLifecycleConfigurationOutput.build(
      [void Function(GetBucketLifecycleConfigurationOutputBuilder)
          updates]) = _$GetBucketLifecycleConfigurationOutput;

  const GetBucketLifecycleConfigurationOutput._();

  /// Constructs a [GetBucketLifecycleConfigurationOutput] from a [payload] and [response].
  factory GetBucketLifecycleConfigurationOutput.fromResponse(
    GetBucketLifecycleConfigurationOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetBucketLifecycleConfigurationOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketLifecycleConfigurationOutputBuilder b) {}

  /// Container for a lifecycle rule.
  _i3.BuiltList<_i2.LifecycleRule>? get rules;
  @override
  List<Object?> get props => [rules];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketLifecycleConfigurationOutput');
    helper.add(
      'rules',
      rules,
    );
    return helper.toString();
  }
}

class GetBucketLifecycleConfigurationOutputRestXmlSerializer extends _i4
    .StructuredSmithySerializer<GetBucketLifecycleConfigurationOutput> {
  const GetBucketLifecycleConfigurationOutputRestXmlSerializer()
      : super('GetBucketLifecycleConfigurationOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketLifecycleConfigurationOutput,
        _$GetBucketLifecycleConfigurationOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketLifecycleConfigurationOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetBucketLifecycleConfigurationOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Rule':
          if (value != null) {
            result.rules.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.LifecycleRule),
            ) as _i2.LifecycleRule));
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
    final payload = (object as GetBucketLifecycleConfigurationOutput);
    final result = <Object?>[
      const _i4.XmlElementName(
        'LifecycleConfiguration',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.rules != null) {
      result.addAll(
          const _i4.XmlBuiltListSerializer(memberName: 'Rule').serialize(
        serializers,
        payload.rules!,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(_i2.LifecycleRule)],
        ),
      ));
    }
    return result;
  }
}
