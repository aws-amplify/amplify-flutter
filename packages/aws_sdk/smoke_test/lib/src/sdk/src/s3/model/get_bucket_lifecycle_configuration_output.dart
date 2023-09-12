// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.get_bucket_lifecycle_configuration_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/lifecycle_rule.dart';

part 'get_bucket_lifecycle_configuration_output.g.dart';

abstract class GetBucketLifecycleConfigurationOutput
    with
        _i1.AWSEquatable<GetBucketLifecycleConfigurationOutput>
    implements
        Built<GetBucketLifecycleConfigurationOutput,
            GetBucketLifecycleConfigurationOutputBuilder> {
  factory GetBucketLifecycleConfigurationOutput({List<LifecycleRule>? rules}) {
    return _$GetBucketLifecycleConfigurationOutput._(
        rules: rules == null ? null : _i2.BuiltList(rules));
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

  static const List<_i3.SmithySerializer<GetBucketLifecycleConfigurationOutput>>
      serializers = [GetBucketLifecycleConfigurationOutputRestXmlSerializer()];

  /// Container for a lifecycle rule.
  _i2.BuiltList<LifecycleRule>? get rules;
  @override
  List<Object?> get props => [rules];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketLifecycleConfigurationOutput')
          ..add(
            'rules',
            rules,
          );
    return helper.toString();
  }
}

class GetBucketLifecycleConfigurationOutputRestXmlSerializer extends _i3
    .StructuredSmithySerializer<GetBucketLifecycleConfigurationOutput> {
  const GetBucketLifecycleConfigurationOutputRestXmlSerializer()
      : super('GetBucketLifecycleConfigurationOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketLifecycleConfigurationOutput,
        _$GetBucketLifecycleConfigurationOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Rule':
          result.rules.add((serializers.deserialize(
            value,
            specifiedType: const FullType(LifecycleRule),
          ) as LifecycleRule));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetBucketLifecycleConfigurationOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'LifecycleConfiguration',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final GetBucketLifecycleConfigurationOutput(:rules) = object;
    if (rules != null) {
      result$.addAll(
          const _i3.XmlBuiltListSerializer(memberName: 'Rule').serialize(
        serializers,
        rules,
        specifiedType: const FullType(
          _i2.BuiltList,
          [FullType(LifecycleRule)],
        ),
      ));
    }
    return result$;
  }
}
