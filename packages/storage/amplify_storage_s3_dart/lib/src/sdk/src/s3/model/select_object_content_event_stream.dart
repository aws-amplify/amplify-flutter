// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_storage_s3_dart.s3.model.select_object_content_event_stream; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i2;

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/continuation_event.dart'
    as _i8;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/end_event.dart'
    as _i9;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/progress.dart'
    as _i6;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/progress_event.dart'
    as _i7;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/records_event.dart'
    as _i3;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/stats.dart' as _i4;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/stats_event.dart'
    as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

/// The container for selecting objects from a content event stream.
sealed class SelectObjectContentEventStream
    extends _i1.SmithyUnion<SelectObjectContentEventStream> {
  const SelectObjectContentEventStream._();

  factory SelectObjectContentEventStream.records({_i2.Uint8List? payload}) =>
      SelectObjectContentEventStreamRecords(_i3.RecordsEvent(payload: payload));

  factory SelectObjectContentEventStream.stats({_i4.Stats? details}) =>
      SelectObjectContentEventStreamStats(_i5.StatsEvent(details: details));

  factory SelectObjectContentEventStream.progress({_i6.Progress? details}) =>
      SelectObjectContentEventStreamProgress(
          _i7.ProgressEvent(details: details));

  factory SelectObjectContentEventStream.cont() =>
      SelectObjectContentEventStreamCont(_i8.ContinuationEvent());

  factory SelectObjectContentEventStream.end() =>
      SelectObjectContentEventStreamEnd(_i9.EndEvent());

  const factory SelectObjectContentEventStream.sdkUnknown(
    String name,
    Object value,
  ) = SelectObjectContentEventStreamSdkUnknown;

  static const List<_i1.SmithySerializer<SelectObjectContentEventStream>>
      serializers = [SelectObjectContentEventStreamRestXmlSerializer()];

  /// The Records Event.
  _i3.RecordsEvent? get records => null;

  /// The Stats Event.
  _i5.StatsEvent? get stats => null;

  /// The Progress Event.
  _i7.ProgressEvent? get progress => null;

  /// The Continuation Event.
  _i8.ContinuationEvent? get cont => null;

  /// The End Event.
  _i9.EndEvent? get end => null;
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

final class SelectObjectContentEventStreamRecords
    extends SelectObjectContentEventStream {
  const SelectObjectContentEventStreamRecords(this.records) : super._();

  @override
  final _i3.RecordsEvent records;

  @override
  String get name => 'Records';
}

final class SelectObjectContentEventStreamStats
    extends SelectObjectContentEventStream {
  const SelectObjectContentEventStreamStats(this.stats) : super._();

  @override
  final _i5.StatsEvent stats;

  @override
  String get name => 'Stats';
}

final class SelectObjectContentEventStreamProgress
    extends SelectObjectContentEventStream {
  const SelectObjectContentEventStreamProgress(this.progress) : super._();

  @override
  final _i7.ProgressEvent progress;

  @override
  String get name => 'Progress';
}

final class SelectObjectContentEventStreamCont
    extends SelectObjectContentEventStream {
  const SelectObjectContentEventStreamCont(this.cont) : super._();

  @override
  final _i8.ContinuationEvent cont;

  @override
  String get name => 'Cont';
}

final class SelectObjectContentEventStreamEnd
    extends SelectObjectContentEventStream {
  const SelectObjectContentEventStreamEnd(this.end) : super._();

  @override
  final _i9.EndEvent end;

  @override
  String get name => 'End';
}

final class SelectObjectContentEventStreamSdkUnknown
    extends SelectObjectContentEventStream {
  const SelectObjectContentEventStreamSdkUnknown(
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
        SelectObjectContentEventStreamRecords,
        SelectObjectContentEventStreamStats,
        SelectObjectContentEventStreamProgress,
        SelectObjectContentEventStreamCont,
        SelectObjectContentEventStreamEnd,
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
        return SelectObjectContentEventStreamRecords((serializers.deserialize(
          value,
          specifiedType: const FullType(_i3.RecordsEvent),
        ) as _i3.RecordsEvent));
      case 'Stats':
        return SelectObjectContentEventStreamStats((serializers.deserialize(
          value,
          specifiedType: const FullType(_i5.StatsEvent),
        ) as _i5.StatsEvent));
      case 'Progress':
        return SelectObjectContentEventStreamProgress((serializers.deserialize(
          value,
          specifiedType: const FullType(_i7.ProgressEvent),
        ) as _i7.ProgressEvent));
      case 'Cont':
        return SelectObjectContentEventStreamCont((serializers.deserialize(
          value,
          specifiedType: const FullType(_i8.ContinuationEvent),
        ) as _i8.ContinuationEvent));
      case 'End':
        return SelectObjectContentEventStreamEnd((serializers.deserialize(
          value,
          specifiedType: const FullType(_i9.EndEvent),
        ) as _i9.EndEvent));
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
        SelectObjectContentEventStreamRecords(:final value) =>
          serializers.serialize(
            value,
            specifiedType: const FullType(_i3.RecordsEvent),
          ),
        SelectObjectContentEventStreamStats(:final value) =>
          serializers.serialize(
            value,
            specifiedType: const FullType(_i5.StatsEvent),
          ),
        SelectObjectContentEventStreamProgress(:final value) =>
          serializers.serialize(
            value,
            specifiedType: const FullType(_i7.ProgressEvent),
          ),
        SelectObjectContentEventStreamCont(:final value) =>
          serializers.serialize(
            value,
            specifiedType: const FullType(_i8.ContinuationEvent),
          ),
        SelectObjectContentEventStreamEnd(:final value) =>
          serializers.serialize(
            value,
            specifiedType: const FullType(_i9.EndEvent),
          ),
        SelectObjectContentEventStreamSdkUnknown(:final value) => value,
      },
    ];
  }
}
