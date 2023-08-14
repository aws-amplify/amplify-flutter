// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.lambda_function_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/event.dart';
import 'package:smoke_test/src/sdk/src/s3/model/notification_configuration_filter.dart';

part 'lambda_function_configuration.g.dart';

/// A container for specifying the configuration for Lambda notifications.
abstract class LambdaFunctionConfiguration
    with _i1.AWSEquatable<LambdaFunctionConfiguration>
    implements
        Built<LambdaFunctionConfiguration, LambdaFunctionConfigurationBuilder> {
  /// A container for specifying the configuration for Lambda notifications.
  factory LambdaFunctionConfiguration({
    String? id,
    required String lambdaFunctionArn,
    required List<Event> events,
    NotificationConfigurationFilter? filter,
  }) {
    return _$LambdaFunctionConfiguration._(
      id: id,
      lambdaFunctionArn: lambdaFunctionArn,
      events: _i2.BuiltList(events),
      filter: filter,
    );
  }

  /// A container for specifying the configuration for Lambda notifications.
  factory LambdaFunctionConfiguration.build(
          [void Function(LambdaFunctionConfigurationBuilder) updates]) =
      _$LambdaFunctionConfiguration;

  const LambdaFunctionConfiguration._();

  static const List<_i3.SmithySerializer<LambdaFunctionConfiguration>>
      serializers = [LambdaFunctionConfigurationRestXmlSerializer()];

  /// An optional unique identifier for configurations in a notification configuration. If you don't provide one, Amazon S3 will assign an ID.
  String? get id;

  /// The Amazon Resource Name (ARN) of the Lambda function that Amazon S3 invokes when the specified event type occurs.
  String get lambdaFunctionArn;

  /// The Amazon S3 bucket event for which to invoke the Lambda function. For more information, see [Supported Event Types](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html) in the _Amazon S3 User Guide_.
  _i2.BuiltList<Event> get events;

  /// Specifies object key name filtering rules. For information about key name filtering, see [Configuring event notifications using object key name filtering](https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-filtering.html) in the _Amazon S3 User Guide_.
  NotificationConfigurationFilter? get filter;
  @override
  List<Object?> get props => [
        id,
        lambdaFunctionArn,
        events,
        filter,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LambdaFunctionConfiguration')
      ..add(
        'id',
        id,
      )
      ..add(
        'lambdaFunctionArn',
        lambdaFunctionArn,
      )
      ..add(
        'events',
        events,
      )
      ..add(
        'filter',
        filter,
      );
    return helper.toString();
  }
}

class LambdaFunctionConfigurationRestXmlSerializer
    extends _i3.StructuredSmithySerializer<LambdaFunctionConfiguration> {
  const LambdaFunctionConfigurationRestXmlSerializer()
      : super('LambdaFunctionConfiguration');

  @override
  Iterable<Type> get types => const [
        LambdaFunctionConfiguration,
        _$LambdaFunctionConfiguration,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  LambdaFunctionConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LambdaFunctionConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Event':
          result.events.add((serializers.deserialize(
            value,
            specifiedType: const FullType(Event),
          ) as Event));
        case 'Filter':
          result.filter.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NotificationConfigurationFilter),
          ) as NotificationConfigurationFilter));
        case 'Id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CloudFunction':
          result.lambdaFunctionArn = (serializers.deserialize(
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
    LambdaFunctionConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'LambdaFunctionConfiguration',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final LambdaFunctionConfiguration(
      :events,
      :filter,
      :id,
      :lambdaFunctionArn
    ) = object;
    result$
        .addAll(const _i3.XmlBuiltListSerializer(memberName: 'Event').serialize(
      serializers,
      events,
      specifiedType: const FullType.nullable(
        _i2.BuiltList,
        [FullType(Event)],
      ),
    ));
    if (filter != null) {
      result$
        ..add(const _i3.XmlElementName('Filter'))
        ..add(serializers.serialize(
          filter,
          specifiedType: const FullType(NotificationConfigurationFilter),
        ));
    }
    if (id != null) {
      result$
        ..add(const _i3.XmlElementName('Id'))
        ..add(serializers.serialize(
          id,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('CloudFunction'))
      ..add(serializers.serialize(
        lambdaFunctionArn,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
