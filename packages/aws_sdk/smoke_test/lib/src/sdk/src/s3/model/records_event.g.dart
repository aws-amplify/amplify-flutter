// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.records_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecordsEvent extends RecordsEvent {
  @override
  final _i2.Uint8List? payload;

  factory _$RecordsEvent([void Function(RecordsEventBuilder)? updates]) =>
      (new RecordsEventBuilder()..update(updates))._build();

  _$RecordsEvent._({this.payload}) : super._();

  @override
  RecordsEvent rebuild(void Function(RecordsEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecordsEventBuilder toBuilder() => new RecordsEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecordsEvent && payload == other.payload;
  }

  @override
  int get hashCode {
    return $jf($jc(0, payload.hashCode));
  }
}

class RecordsEventBuilder
    implements Builder<RecordsEvent, RecordsEventBuilder> {
  _$RecordsEvent? _$v;

  _i2.Uint8List? _payload;
  _i2.Uint8List? get payload => _$this._payload;
  set payload(_i2.Uint8List? payload) => _$this._payload = payload;

  RecordsEventBuilder() {
    RecordsEvent._init(this);
  }

  RecordsEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecordsEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecordsEvent;
  }

  @override
  void update(void Function(RecordsEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecordsEvent build() => _build();

  _$RecordsEvent _build() {
    final _$result = _$v ?? new _$RecordsEvent._(payload: payload);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
