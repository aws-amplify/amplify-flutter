// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.progress_event; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/progress.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'progress_event.g.dart';

/// This data type contains information about the progress event of an operation.
abstract class ProgressEvent
    with _i1.AWSEquatable<ProgressEvent>
    implements Built<ProgressEvent, ProgressEventBuilder> {
  /// This data type contains information about the progress event of an operation.
  factory ProgressEvent({Progress? details}) {
    return _$ProgressEvent._(details: details);
  }

  /// This data type contains information about the progress event of an operation.
  factory ProgressEvent.build([void Function(ProgressEventBuilder) updates]) =
      _$ProgressEvent;

  const ProgressEvent._();

  static const List<_i2.SmithySerializer<ProgressEvent>> serializers = [
    ProgressEventRestXmlSerializer()
  ];

  /// The Progress event details.
  Progress? get details;
  @override
  List<Object?> get props => [details];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ProgressEvent')
      ..add(
        'details',
        details,
      );
    return helper.toString();
  }
}

class ProgressEventRestXmlSerializer
    extends _i2.StructuredSmithySerializer<ProgressEvent> {
  const ProgressEventRestXmlSerializer() : super('ProgressEvent');

  @override
  Iterable<Type> get types => const [
        ProgressEvent,
        _$ProgressEvent,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  ProgressEvent deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProgressEventBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Details':
          result.details.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Progress),
          ) as Progress));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ProgressEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ProgressEvent',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ProgressEvent(:details) = object;
    if (details != null) {
      result$
        ..add(const _i2.XmlElementName('Details'))
        ..add(serializers.serialize(
          details,
          specifiedType: const FullType(Progress),
        ));
    }
    return result$;
  }
}
