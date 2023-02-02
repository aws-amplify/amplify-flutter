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
    var _$hash = 0;
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
