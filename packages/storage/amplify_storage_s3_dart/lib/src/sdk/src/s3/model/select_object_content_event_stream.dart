// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.select_object_content_event_stream; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i2;

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/continuation_event.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/end_event.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/progress.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/progress_event.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/records_event.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/stats.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/stats_event.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

/// The container for selecting objects from a content event stream.
sealed class SelectObjectContentEventStream
    extends _i1.SmithyUnion<SelectObjectContentEventStream> {
  const SelectObjectContentEventStream._();

  factory SelectObjectContentEventStream.records({_i2.Uint8List? payload}) =>
      SelectObjectContentEventStreamRecords$(RecordsEvent(payload: payload));

  factory SelectObjectContentEventStream.stats({Stats? details}) =>
      SelectObjectContentEventStreamStats$(StatsEvent(details: details));

  factory SelectObjectContentEventStream.progress({Progress? details}) =>
      SelectObjectContentEventStreamProgress$(ProgressEvent(details: details));

  factory SelectObjectContentEventStream.cont() =>
      SelectObjectContentEventStreamCont$(ContinuationEvent());

  factory SelectObjectContentEventStream.end() =>
      SelectObjectContentEventStreamEnd$(EndEvent());

  const factory SelectObjectContentEventStream.sdkUnknown(
    String name,
    Object value,
  ) = SelectObjectContentEventStreamSdkUnknown$;

  static const List<_i1.SmithySerializer<SelectObjectContentEventStream>>
      serializers = [SelectObjectContentEventStreamRestXmlSerializer()];

  /// The Records Event.
  RecordsEvent? get records => null;

  /// The Stats Event.
  StatsEvent? get stats => null;

  /// The Progress Event.
  ProgressEvent? get progress => null;

  /// The Continuation Event.
  ContinuationEvent? get cont => null;

  /// The End Event.
  EndEvent? get end => null;

  @override
  Object get value => (records ?? stats ?? progress ?? cont ?? end)!;

  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper(r'SelectObjectContentEventStream');
    if (records != null) {
      helper.add(
        r'records',
        records,
      );
    }
    if (stats != null) {
      helper.add(
        r'stats',
        stats,
      );
    }
    if (progress != null) {
      helper.add(
        r'progress',
        progress,
      );
    }
    if (cont != null) {
      helper.add(
        r'cont',
        cont,
      );
    }
    if (end != null) {
      helper.add(
        r'end',
        end,
      );
    }
    return helper.toString();
  }
}

final class SelectObjectContentEventStreamRecords$
    extends SelectObjectContentEventStream {
  const SelectObjectContentEventStreamRecords$(this.records) : super._();

  @override
  final RecordsEvent records;

  @override
  String get name => 'Records';
}

final class SelectObjectContentEventStreamStats$
    extends SelectObjectContentEventStream {
  const SelectObjectContentEventStreamStats$(this.stats) : super._();

  @override
  final StatsEvent stats;

  @override
  String get name => 'Stats';
}

final class SelectObjectContentEventStreamProgress$
    extends SelectObjectContentEventStream {
  const SelectObjectContentEventStreamProgress$(this.progress) : super._();

  @override
  final ProgressEvent progress;

  @override
  String get name => 'Progress';
}

final class SelectObjectContentEventStreamCont$
    extends SelectObjectContentEventStream {
  const SelectObjectContentEventStreamCont$(this.cont) : super._();

  @override
  final ContinuationEvent cont;

  @override
  String get name => 'Cont';
}

final class SelectObjectContentEventStreamEnd$
    extends SelectObjectContentEventStream {
  const SelectObjectContentEventStreamEnd$(this.end) : super._();

  @override
  final EndEvent end;

  @override
  String get name => 'End';
}

final class SelectObjectContentEventStreamSdkUnknown$
    extends SelectObjectContentEventStream {
  const SelectObjectContentEventStreamSdkUnknown$(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class SelectObjectContentEventStreamRestXmlSerializer
    extends _i1.StructuredSmithySerializer<SelectObjectContentEventStream> {
  const SelectObjectContentEventStreamRestXmlSerializer()
      : super('SelectObjectContentEventStream');

  @override
  Iterable<Type> get types => const [
        SelectObjectContentEventStream,
        SelectObjectContentEventStreamRecords$,
        SelectObjectContentEventStreamStats$,
        SelectObjectContentEventStreamProgress$,
        SelectObjectContentEventStreamCont$,
        SelectObjectContentEventStreamEnd$,
      ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  SelectObjectContentEventStream deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'Records':
        return SelectObjectContentEventStreamRecords$((serializers.deserialize(
          value,
          specifiedType: const FullType(RecordsEvent),
        ) as RecordsEvent));
      case 'Stats':
        return SelectObjectContentEventStreamStats$((serializers.deserialize(
          value,
          specifiedType: const FullType(StatsEvent),
        ) as StatsEvent));
      case 'Progress':
        return SelectObjectContentEventStreamProgress$((serializers.deserialize(
          value,
          specifiedType: const FullType(ProgressEvent),
        ) as ProgressEvent));
      case 'Cont':
        return SelectObjectContentEventStreamCont$((serializers.deserialize(
          value,
          specifiedType: const FullType(ContinuationEvent),
        ) as ContinuationEvent));
      case 'End':
        return SelectObjectContentEventStreamEnd$((serializers.deserialize(
          value,
          specifiedType: const FullType(EndEvent),
        ) as EndEvent));
    }
    return SelectObjectContentEventStream.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SelectObjectContentEventStream object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      object.name,
      switch (object) {
        SelectObjectContentEventStreamRecords$(:final value) =>
          serializers.serialize(
            value,
            specifiedType: const FullType(RecordsEvent),
          ),
        SelectObjectContentEventStreamStats$(:final value) =>
          serializers.serialize(
            value,
            specifiedType: const FullType(StatsEvent),
          ),
        SelectObjectContentEventStreamProgress$(:final value) =>
          serializers.serialize(
            value,
            specifiedType: const FullType(ProgressEvent),
          ),
        SelectObjectContentEventStreamCont$(:final value) =>
          serializers.serialize(
            value,
            specifiedType: const FullType(ContinuationEvent),
          ),
        SelectObjectContentEventStreamEnd$(:final value) =>
          serializers.serialize(
            value,
            specifiedType: const FullType(EndEvent),
          ),
        SelectObjectContentEventStreamSdkUnknown$(:final value) => value,
      },
    ];
  }
}
