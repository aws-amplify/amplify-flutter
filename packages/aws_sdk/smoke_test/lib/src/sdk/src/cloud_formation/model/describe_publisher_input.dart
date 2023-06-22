// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.describe_publisher_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_publisher_input.g.dart';

abstract class DescribePublisherInput
    with
        _i1.HttpInput<DescribePublisherInput>,
        _i2.AWSEquatable<DescribePublisherInput>
    implements Built<DescribePublisherInput, DescribePublisherInputBuilder> {
  factory DescribePublisherInput({String? publisherId}) {
    return _$DescribePublisherInput._(publisherId: publisherId);
  }

  factory DescribePublisherInput.build(
          [void Function(DescribePublisherInputBuilder) updates]) =
      _$DescribePublisherInput;

  const DescribePublisherInput._();

  factory DescribePublisherInput.fromRequest(
    DescribePublisherInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribePublisherInput>> serializers =
      [DescribePublisherInputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribePublisherInputBuilder b) {}

  /// The ID of the extension publisher.
  ///
  /// If you don't supply a `PublisherId`, and you have registered as an extension publisher, `DescribePublisher` returns information about your own publisher account.
  String? get publisherId;
  @override
  DescribePublisherInput getPayload() => this;
  @override
  List<Object?> get props => [publisherId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribePublisherInput')
      ..add(
        'publisherId',
        publisherId,
      );
    return helper.toString();
  }
}

class DescribePublisherInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DescribePublisherInput> {
  const DescribePublisherInputAwsQuerySerializer()
      : super('DescribePublisherInput');

  @override
  Iterable<Type> get types => const [
        DescribePublisherInput,
        _$DescribePublisherInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribePublisherInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribePublisherInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PublisherId':
          result.publisherId = (serializers.deserialize(
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
    DescribePublisherInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribePublisherInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribePublisherInput(:publisherId) = object;
    if (publisherId != null) {
      result$
        ..add(const _i1.XmlElementName('PublisherId'))
        ..add(serializers.serialize(
          publisherId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
