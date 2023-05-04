// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.select_object_content_event_stream; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/continuation_event.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/end_event.dart' as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/progress_event.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/records_event.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/stats_event.dart' as _i3;

sealed class SelectObjectContentEventStream
    extends _i1.SmithyUnion<SelectObjectContentEventStream> {
  const SelectObjectContentEventStream._();

  const factory SelectObjectContentEventStream.records(
      _i2.RecordsEvent records) = SelectObjectContentEventStreamRecords;

  const factory SelectObjectContentEventStream.stats(_i3.StatsEvent stats) =
      SelectObjectContentEventStreamStats;

  const factory SelectObjectContentEventStream.progress(
      _i4.ProgressEvent progress) = SelectObjectContentEventStreamProgress;

  const factory SelectObjectContentEventStream.cont(
      _i5.ContinuationEvent cont) = SelectObjectContentEventStreamCont;

  const factory SelectObjectContentEventStream.end(_i6.EndEvent end) =
      SelectObjectContentEventStreamEnd;

  const factory SelectObjectContentEventStream.sdkUnknown(
    String name,
    Object value,
  ) = SelectObjectContentEventStreamSdkUnknown;

  static const List<_i1.SmithySerializer<SelectObjectContentEventStream>>
      serializers = [SelectObjectContentEventStreamRestXmlSerializer()];

  /// The Records Event.
  _i2.RecordsEvent? get records => null;

  /// The Stats Event.
  _i3.StatsEvent? get stats => null;

  /// The Progress Event.
  _i4.ProgressEvent? get progress => null;

  /// The Continuation Event.
  _i5.ContinuationEvent? get cont => null;

  /// The End Event.
  _i6.EndEvent? get end => null;
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
  final _i2.RecordsEvent records;

  @override
  String get name => 'Records';
}

final class SelectObjectContentEventStreamStats
    extends SelectObjectContentEventStream {
  const SelectObjectContentEventStreamStats(this.stats) : super._();

  @override
  final _i3.StatsEvent stats;

  @override
  String get name => 'Stats';
}

final class SelectObjectContentEventStreamProgress
    extends SelectObjectContentEventStream {
  const SelectObjectContentEventStreamProgress(this.progress) : super._();

  @override
  final _i4.ProgressEvent progress;

  @override
  String get name => 'Progress';
}

final class SelectObjectContentEventStreamCont
    extends SelectObjectContentEventStream {
  const SelectObjectContentEventStreamCont(this.cont) : super._();

  @override
  final _i5.ContinuationEvent cont;

  @override
  String get name => 'Cont';
}

final class SelectObjectContentEventStreamEnd
    extends SelectObjectContentEventStream {
  const SelectObjectContentEventStreamEnd(this.end) : super._();

  @override
  final _i6.EndEvent end;

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
          specifiedType: const FullType(_i2.RecordsEvent),
        ) as _i2.RecordsEvent));
      case 'Stats':
        return SelectObjectContentEventStreamStats((serializers.deserialize(
          value,
          specifiedType: const FullType(_i3.StatsEvent),
        ) as _i3.StatsEvent));
      case 'Progress':
        return SelectObjectContentEventStreamProgress((serializers.deserialize(
          value,
          specifiedType: const FullType(_i4.ProgressEvent),
        ) as _i4.ProgressEvent));
      case 'Cont':
        return SelectObjectContentEventStreamCont((serializers.deserialize(
          value,
          specifiedType: const FullType(_i5.ContinuationEvent),
        ) as _i5.ContinuationEvent));
      case 'End':
        return SelectObjectContentEventStreamEnd((serializers.deserialize(
          value,
          specifiedType: const FullType(_i6.EndEvent),
        ) as _i6.EndEvent));
    }
    return SelectObjectContentEventStream.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    (object as SelectObjectContentEventStream);
    return [
      object.name,
      switch (object) {
        SelectObjectContentEventStreamRecords(:final value) =>
          serializers.serialize(
          value,
          specifiedType: const FullType(_i2.RecordsEvent),
        ),
        SelectObjectContentEventStreamStats(:final value) =>
          serializers.serialize(
          value,
          specifiedType: const FullType(_i3.StatsEvent),
        ),
        SelectObjectContentEventStreamProgress(:final value) =>
          serializers.serialize(
          value,
          specifiedType: const FullType(_i4.ProgressEvent),
        ),
        SelectObjectContentEventStreamCont(:final value) =>
          serializers.serialize(
          value,
          specifiedType: const FullType(_i5.ContinuationEvent),
        ),
        SelectObjectContentEventStreamEnd(:final value) =>
          serializers.serialize(
          value,
          specifiedType: const FullType(_i6.EndEvent),
        ),
        SelectObjectContentEventStreamSdkUnknown(:final value) => value,
      },
    ];
  }
}
