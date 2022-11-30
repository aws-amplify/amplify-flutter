// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.notification_configuration_filter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/s3_key_filter.dart' as _i2;

part 'notification_configuration_filter.g.dart';

/// Specifies object key name filtering rules. For information about key name filtering, see [Configuring Event Notifications](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html) in the _Amazon S3 User Guide_.
abstract class NotificationConfigurationFilter
    with
        _i1.AWSEquatable<NotificationConfigurationFilter>
    implements
        Built<NotificationConfigurationFilter,
            NotificationConfigurationFilterBuilder> {
  /// Specifies object key name filtering rules. For information about key name filtering, see [Configuring Event Notifications](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html) in the _Amazon S3 User Guide_.
  factory NotificationConfigurationFilter({_i2.S3KeyFilter? key}) {
    return _$NotificationConfigurationFilter._(key: key);
  }

  /// Specifies object key name filtering rules. For information about key name filtering, see [Configuring Event Notifications](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html) in the _Amazon S3 User Guide_.
  factory NotificationConfigurationFilter.build(
          [void Function(NotificationConfigurationFilterBuilder) updates]) =
      _$NotificationConfigurationFilter;

  const NotificationConfigurationFilter._();

  static const List<_i3.SmithySerializer> serializers = [
    NotificationConfigurationFilterRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NotificationConfigurationFilterBuilder b) {}

  /// A container for object key name prefix and suffix filtering rules.
  _i2.S3KeyFilter? get key;
  @override
  List<Object?> get props => [key];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('NotificationConfigurationFilter');
    helper.add(
      'key',
      key,
    );
    return helper.toString();
  }
}

class NotificationConfigurationFilterRestXmlSerializer
    extends _i3.StructuredSmithySerializer<NotificationConfigurationFilter> {
  const NotificationConfigurationFilterRestXmlSerializer()
      : super('NotificationConfigurationFilter');

  @override
  Iterable<Type> get types => const [
        NotificationConfigurationFilter,
        _$NotificationConfigurationFilter,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'S3Key':
          if (value != null) {
            result.key.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.S3KeyFilter),
            ) as _i2.S3KeyFilter));
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
    final payload = (object as NotificationConfigurationFilter);
    final result = <Object?>[
      const _i3.XmlElementName(
        'NotificationConfigurationFilter',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.key != null) {
      result
        ..add(const _i3.XmlElementName('S3Key'))
        ..add(serializers.serialize(
          payload.key!,
          specifiedType: const FullType(_i2.S3KeyFilter),
        ));
    }
    return result;
  }
}
