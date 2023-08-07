// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.notification_configuration_filter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/s3_key_filter.dart';

part 'notification_configuration_filter.g.dart';

/// Specifies object key name filtering rules. For information about key name filtering, see [Configuring event notifications using object key name filtering](https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-filtering.html) in the _Amazon S3 User Guide_.
abstract class NotificationConfigurationFilter
    with
        _i1.AWSEquatable<NotificationConfigurationFilter>
    implements
        Built<NotificationConfigurationFilter,
            NotificationConfigurationFilterBuilder> {
  /// Specifies object key name filtering rules. For information about key name filtering, see [Configuring event notifications using object key name filtering](https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-filtering.html) in the _Amazon S3 User Guide_.
  factory NotificationConfigurationFilter({S3KeyFilter? key}) {
    return _$NotificationConfigurationFilter._(key: key);
  }

  /// Specifies object key name filtering rules. For information about key name filtering, see [Configuring event notifications using object key name filtering](https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-filtering.html) in the _Amazon S3 User Guide_.
  factory NotificationConfigurationFilter.build(
          [void Function(NotificationConfigurationFilterBuilder) updates]) =
      _$NotificationConfigurationFilter;

  const NotificationConfigurationFilter._();

  static const List<_i2.SmithySerializer<NotificationConfigurationFilter>>
      serializers = [NotificationConfigurationFilterRestXmlSerializer()];

  /// A container for object key name prefix and suffix filtering rules.
  S3KeyFilter? get key;
  @override
  List<Object?> get props => [key];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('NotificationConfigurationFilter')
          ..add(
            'key',
            key,
          );
    return helper.toString();
  }
}

class NotificationConfigurationFilterRestXmlSerializer
    extends _i2.StructuredSmithySerializer<NotificationConfigurationFilter> {
  const NotificationConfigurationFilterRestXmlSerializer()
      : super('NotificationConfigurationFilter');

  @override
  Iterable<Type> get types => const [
        NotificationConfigurationFilter,
        _$NotificationConfigurationFilter,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  NotificationConfigurationFilter deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationConfigurationFilterBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'S3Key':
          result.key.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(S3KeyFilter),
          ) as S3KeyFilter));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NotificationConfigurationFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'NotificationConfigurationFilter',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final NotificationConfigurationFilter(:key) = object;
    if (key != null) {
      result$
        ..add(const _i2.XmlElementName('S3Key'))
        ..add(serializers.serialize(
          key,
          specifiedType: const FullType(S3KeyFilter),
        ));
    }
    return result$;
  }
}
