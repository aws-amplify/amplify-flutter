// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.hibernation_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'hibernation_options_request.g.dart';

/// Indicates whether your instance is configured for hibernation. This parameter is valid only if the instance meets the [hibernation prerequisites](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hibernating-prerequisites.html). For more information, see [Hibernate your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in the _Amazon EC2 User Guide_.
abstract class HibernationOptionsRequest
    with _i1.AWSEquatable<HibernationOptionsRequest>
    implements
        Built<HibernationOptionsRequest, HibernationOptionsRequestBuilder> {
  /// Indicates whether your instance is configured for hibernation. This parameter is valid only if the instance meets the [hibernation prerequisites](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hibernating-prerequisites.html). For more information, see [Hibernate your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in the _Amazon EC2 User Guide_.
  factory HibernationOptionsRequest({bool? configured}) {
    configured ??= false;
    return _$HibernationOptionsRequest._(configured: configured);
  }

  /// Indicates whether your instance is configured for hibernation. This parameter is valid only if the instance meets the [hibernation prerequisites](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hibernating-prerequisites.html). For more information, see [Hibernate your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in the _Amazon EC2 User Guide_.
  factory HibernationOptionsRequest.build(
          [void Function(HibernationOptionsRequestBuilder) updates]) =
      _$HibernationOptionsRequest;

  const HibernationOptionsRequest._();

  static const List<_i2.SmithySerializer<HibernationOptionsRequest>>
      serializers = [HibernationOptionsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HibernationOptionsRequestBuilder b) {
    b.configured = false;
  }

  /// Set to `true` to enable your instance for hibernation.
  ///
  /// Default: `false`
  bool get configured;
  @override
  List<Object?> get props => [configured];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HibernationOptionsRequest')
      ..add(
        'configured',
        configured,
      );
    return helper.toString();
  }
}

class HibernationOptionsRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<HibernationOptionsRequest> {
  const HibernationOptionsRequestEc2QuerySerializer()
      : super('HibernationOptionsRequest');

  @override
  Iterable<Type> get types => const [
        HibernationOptionsRequest,
        _$HibernationOptionsRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  HibernationOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HibernationOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Configured':
          result.configured = (serializers.deserialize(
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
    HibernationOptionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'HibernationOptionsRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final HibernationOptionsRequest(:configured) = object;
    result$
      ..add(const _i2.XmlElementName('Configured'))
      ..add(serializers.serialize(
        configured,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
