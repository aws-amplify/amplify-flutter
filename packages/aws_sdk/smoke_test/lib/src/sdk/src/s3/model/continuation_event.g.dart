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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
