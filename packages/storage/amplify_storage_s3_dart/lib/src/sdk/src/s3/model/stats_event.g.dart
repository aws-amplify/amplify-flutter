// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.stats_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatsEvent extends StatsEvent {
  @override
  final _i2.Stats? details;

  factory _$StatsEvent([void Function(StatsEventBuilder)? updates]) =>
      (new StatsEventBuilder()..update(updates))._build();

  _$StatsEvent._({this.details}) : super._();

  @override
  StatsEvent rebuild(void Function(StatsEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatsEventBuilder toBuilder() => new StatsEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatsEvent && details == other.details;
  }

  @override
  int get hashCode {
    return $jf($jc(0, details.hashCode));
  }
}

class StatsEventBuilder implements Builder<StatsEvent, StatsEventBuilder> {
  _$StatsEvent? _$v;

  _i2.StatsBuilder? _details;
  _i2.StatsBuilder get details => _$this._details ??= new _i2.StatsBuilder();
  set details(_i2.StatsBuilder? details) => _$this._details = details;

  StatsEventBuilder() {
    StatsEvent._init(this);
  }

  StatsEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _details = $v.details?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatsEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StatsEvent;
  }

  @override
  void update(void Function(StatsEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatsEvent build() => _build();

  _$StatsEvent _build() {
    _$StatsEvent _$result;
    try {
      _$result = _$v ?? new _$StatsEvent._(details: _details?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StatsEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
