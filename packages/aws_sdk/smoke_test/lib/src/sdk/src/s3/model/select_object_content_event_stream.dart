// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.select_object_content_event_stream; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/continuation_event.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/end_event.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/progress_event.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/records_event.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/stats_event.dart' as _i6;

/// The discrete values of [SelectObjectContentEventStream].
enum SelectObjectContentEventStreamType<
    T extends SelectObjectContentEventStream> {
  /// The type for [SelectObjectContentEventStreamCont].
  cont<SelectObjectContentEventStreamCont>(r'Cont'),

  /// The type for [SelectObjectContentEventStreamEnd].
  end<SelectObjectContentEventStreamEnd>(r'End'),

  /// The type for [SelectObjectContentEventStreamProgress].
  progress<SelectObjectContentEventStreamProgress>(r'Progress'),

  /// The type for [SelectObjectContentEventStreamRecords].
  records<SelectObjectContentEventStreamRecords>(r'Records'),

  /// The type for [SelectObjectContentEventStreamStats].
  stats<SelectObjectContentEventStreamStats>(r'Stats'),

  /// The type for an unknown value.
  sdkUnknown<SelectObjectContentEventStreamSdkUnknown>('sdkUnknown');

  /// The discrete values of [SelectObjectContentEventStream].
  const SelectObjectContentEventStreamType(this.value);

  /// The Smithy value.
  final String value;
}

/// The container for selecting objects from a content event stream.
abstract class SelectObjectContentEventStream
    extends _i1.SmithyUnion<SelectObjectContentEventStream> {
  const SelectObjectContentEventStream._();

  const factory SelectObjectContentEventStream.cont(
      _i2.ContinuationEvent cont) = SelectObjectContentEventStreamCont;

  const factory SelectObjectContentEventStream.end(_i3.EndEvent end) =
      SelectObjectContentEventStreamEnd;

  const factory SelectObjectContentEventStream.progress(
      _i4.ProgressEvent progress) = SelectObjectContentEventStreamProgress;

  const factory SelectObjectContentEventStream.records(
      _i5.RecordsEvent records) = SelectObjectContentEventStreamRecords;

  const factory SelectObjectContentEventStream.stats(_i6.StatsEvent stats) =
      SelectObjectContentEventStreamStats;

  const factory SelectObjectContentEventStream.sdkUnknown(
    String name,
    Object value,
  ) = SelectObjectContentEventStreamSdkUnknown;

  static const List<_i1.SmithySerializer<SelectObjectContentEventStream>>
      serializers = [SelectObjectContentEventStreamRestXmlSerializer()];

  /// The Continuation Event.
  _i2.ContinuationEvent? get cont => null;

  /// The End Event.
  _i3.EndEvent? get end => null;

  /// The Progress Event.
  _i4.ProgressEvent? get progress => null;

  /// The Records Event.
  _i5.RecordsEvent? get records => null;

  /// The Stats Event.
  _i6.StatsEvent? get stats => null;
  SelectObjectContentEventStreamType get type;
  @override
  Object get value => (cont ?? end ?? progress ?? records ?? stats)!;
  @override
  T? when<T>({
    T Function(_i2.ContinuationEvent)? cont,
    T Function(_i3.EndEvent)? end,
    T Function(_i4.ProgressEvent)? progress,
    T Function(_i5.RecordsEvent)? records,
    T Function(_i6.StatsEvent)? stats,
    T Function(
      String,
      Object,
    )?
        sdkUnknown,
  }) {
    if (this is SelectObjectContentEventStreamCont) {
      return cont?.call((this as SelectObjectContentEventStreamCont).cont);
    }
    if (this is SelectObjectContentEventStreamEnd) {
      return end?.call((this as SelectObjectContentEventStreamEnd).end);
    }
    if (this is SelectObjectContentEventStreamProgress) {
      return progress
          ?.call((this as SelectObjectContentEventStreamProgress).progress);
    }
    if (this is SelectObjectContentEventStreamRecords) {
      return records
          ?.call((this as SelectObjectContentEventStreamRecords).records);
    }
    if (this is SelectObjectContentEventStreamStats) {
      return stats?.call((this as SelectObjectContentEventStreamStats).stats);
    }
    return sdkUnknown?.call(
      name,
      value,
    );
  }

  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper(r'SelectObjectContentEventStream');
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
    if (progress != null) {
      helper.add(
        r'progress',
        progress,
      );
    }
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
    return helper.toString();
  }
}

class SelectObjectContentEventStreamCont
    extends SelectObjectContentEventStream {
  const SelectObjectContentEventStreamCont(this.cont) : super._();

  @override
  final _i2.ContinuationEvent cont;

  @override
  SelectObjectContentEventStreamType get type =>
      SelectObjectContentEventStreamType.cont;
  @override
  String get name => 'Cont';
}

class SelectObjectContentEventStreamEnd extends SelectObjectContentEventStream {
  const SelectObjectContentEventStreamEnd(this.end) : super._();

  @override
  final _i3.EndEvent end;

  @override
  SelectObjectContentEventStreamType get type =>
      SelectObjectContentEventStreamType.end;
  @override
  String get name => 'End';
}

class SelectObjectContentEventStreamProgress
    extends SelectObjectContentEventStream {
  const SelectObjectContentEventStreamProgress(this.progress) : super._();

  @override
  final _i4.ProgressEvent progress;

  @override
  SelectObjectContentEventStreamType get type =>
      SelectObjectContentEventStreamType.progress;
  @override
  String get name => 'Progress';
}

class SelectObjectContentEventStreamRecords
    extends SelectObjectContentEventStream {
  const SelectObjectContentEventStreamRecords(this.records) : super._();

  @override
  final _i5.RecordsEvent records;

  @override
  SelectObjectContentEventStreamType get type =>
      SelectObjectContentEventStreamType.records;
  @override
  String get name => 'Records';
}

class SelectObjectContentEventStreamStats
    extends SelectObjectContentEventStream {
  const SelectObjectContentEventStreamStats(this.stats) : super._();

  @override
  final _i6.StatsEvent stats;

  @override
  SelectObjectContentEventStreamType get type =>
      SelectObjectContentEventStreamType.stats;
  @override
  String get name => 'Stats';
}

class SelectObjectContentEventStreamSdkUnknown
    extends SelectObjectContentEventStream {
  const SelectObjectContentEventStreamSdkUnknown(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;

  @override
  SelectObjectContentEventStreamType get type =>
      SelectObjectContentEventStreamType.sdkUnknown;
}

class SelectObjectContentEventStreamRestXmlSerializer
    extends _i1.StructuredSmithySerializer<SelectObjectContentEventStream> {
  const SelectObjectContentEventStreamRestXmlSerializer()
      : super('SelectObjectContentEventStream');

  @override
  Iterable<Type> get types => const [
        SelectObjectContentEventStream,
        SelectObjectContentEventStreamCont,
        SelectObjectContentEventStreamEnd,
        SelectObjectContentEventStreamProgress,
        SelectObjectContentEventStreamRecords,
        SelectObjectContentEventStreamStats,
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
    final iterator = serialized.iterator;
    iterator.moveNext();
    final key = iterator.current as String;
    iterator.moveNext();
    final value = iterator.current as Object;
    switch (key) {
      case 'Cont':
        return SelectObjectContentEventStreamCont((serializers.deserialize(
          value,
          specifiedType: const FullType(_i2.ContinuationEvent),
        ) as _i2.ContinuationEvent));
      case 'End':
        return SelectObjectContentEventStreamEnd((serializers.deserialize(
          value,
          specifiedType: const FullType(_i3.EndEvent),
        ) as _i3.EndEvent));
      case 'Progress':
        return SelectObjectContentEventStreamProgress((serializers.deserialize(
          value,
          specifiedType: const FullType(_i4.ProgressEvent),
        ) as _i4.ProgressEvent));
      case 'Records':
        return SelectObjectContentEventStreamRecords((serializers.deserialize(
          value,
          specifiedType: const FullType(_i5.RecordsEvent),
        ) as _i5.RecordsEvent));
      case 'Stats':
        return SelectObjectContentEventStreamStats((serializers.deserialize(
          value,
          specifiedType: const FullType(_i6.StatsEvent),
        ) as _i6.StatsEvent));
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
      object.when<Object?>(
        cont: (_i2.ContinuationEvent cont) => serializers.serialize(
          cont,
          specifiedType: const FullType(_i2.ContinuationEvent),
        ),
        end: (_i3.EndEvent end) => serializers.serialize(
          end,
          specifiedType: const FullType(_i3.EndEvent),
        ),
        progress: (_i4.ProgressEvent progress) => serializers.serialize(
          progress,
          specifiedType: const FullType(_i4.ProgressEvent),
        ),
        records: (_i5.RecordsEvent records) => serializers.serialize(
          records,
          specifiedType: const FullType(_i5.RecordsEvent),
        ),
        stats: (_i6.StatsEvent stats) => serializers.serialize(
          stats,
          specifiedType: const FullType(_i6.StatsEvent),
        ),
        sdkUnknown: (
          String _,
          Object sdkUnknown,
        ) =>
            sdkUnknown,
      )!,
    ];
  }
}
