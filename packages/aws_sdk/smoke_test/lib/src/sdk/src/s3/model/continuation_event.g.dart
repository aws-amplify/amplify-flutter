// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.continuation_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ContinuationEvent extends ContinuationEvent {
  factory _$ContinuationEvent(
          [void Function(ContinuationEventBuilder)? updates]) =>
      (new ContinuationEventBuilder()..update(updates))._build();

  _$ContinuationEvent._() : super._();

  @override
  ContinuationEvent rebuild(void Function(ContinuationEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContinuationEventBuilder toBuilder() =>
      new ContinuationEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContinuationEvent;
  }

  @override
  int get hashCode {
    return 428859500;
  }
}

class ContinuationEventBuilder
    implements Builder<ContinuationEvent, ContinuationEventBuilder> {
  _$ContinuationEvent? _$v;

  ContinuationEventBuilder() {
    ContinuationEvent._init(this);
  }

  @override
  void replace(ContinuationEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ContinuationEvent;
  }

  @override
  void update(void Function(ContinuationEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContinuationEvent build() => _build();

  _$ContinuationEvent _build() {
    final _$result = _$v ?? new _$ContinuationEvent._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
