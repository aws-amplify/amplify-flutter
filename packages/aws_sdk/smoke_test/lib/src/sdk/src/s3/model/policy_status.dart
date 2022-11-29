// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.policy_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'policy_status.g.dart';

/// The container element for a bucket's policy status.
abstract class PolicyStatus
    with _i1.AWSEquatable<PolicyStatus>
    implements Built<PolicyStatus, PolicyStatusBuilder> {
  /// The container element for a bucket's policy status.
  factory PolicyStatus({bool? isPublic}) {
    return _$PolicyStatus._(isPublic: isPublic);
  }

  /// The container element for a bucket's policy status.
  factory PolicyStatus.build([void Function(PolicyStatusBuilder) updates]) =
      _$PolicyStatus;

  const PolicyStatus._();

  static const List<_i2.SmithySerializer> serializers = [
    PolicyStatusRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PolicyStatusBuilder b) {}

  /// The policy status for this bucket. `TRUE` indicates that this bucket is public. `FALSE` indicates that the bucket is not public.
  bool? get isPublic;
  @override
  List<Object?> get props => [isPublic];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PolicyStatus');
    helper.add(
      'isPublic',
      isPublic,
    );
    return helper.toString();
  }
}

class PolicyStatusRestXmlSerializer
    extends _i2.StructuredSmithySerializer<PolicyStatus> {
  const PolicyStatusRestXmlSerializer() : super('PolicyStatus');

  @override
  Iterable<Type> get types => const [
        PolicyStatus,
        _$PolicyStatus,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  PolicyStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolicyStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'IsPublic':
          if (value != null) {
            result.isPublic = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
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
    final payload = (object as PolicyStatus);
    final result = <Object?>[
      const _i2.XmlElementName(
        'PolicyStatus',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.isPublic != null) {
      result
        ..add(const _i2.XmlElementName('IsPublic'))
        ..add(serializers.serialize(
          payload.isPublic!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result;
  }
}
