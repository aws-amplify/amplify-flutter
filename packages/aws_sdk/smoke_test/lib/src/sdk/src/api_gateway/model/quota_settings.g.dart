// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.quota_settings;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuotaSettings extends QuotaSettings {
  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final _i2.QuotaPeriodType? period;

  factory _$QuotaSettings([void Function(QuotaSettingsBuilder)? updates]) =>
      (new QuotaSettingsBuilder()..update(updates))._build();

  _$QuotaSettings._({this.limit, this.offset, this.period}) : super._();

  @override
  QuotaSettings rebuild(void Function(QuotaSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuotaSettingsBuilder toBuilder() => new QuotaSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuotaSettings &&
        limit == other.limit &&
        offset == other.offset &&
        period == other.period;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, limit.hashCode), offset.hashCode), period.hashCode));
  }
}

class QuotaSettingsBuilder
    implements Builder<QuotaSettings, QuotaSettingsBuilder> {
  _$QuotaSettings? _$v;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  _i2.QuotaPeriodType? _period;
  _i2.QuotaPeriodType? get period => _$this._period;
  set period(_i2.QuotaPeriodType? period) => _$this._period = period;

  QuotaSettingsBuilder() {
    QuotaSettings._init(this);
  }

  QuotaSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _limit = $v.limit;
      _offset = $v.offset;
      _period = $v.period;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuotaSettings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuotaSettings;
  }

  @override
  void update(void Function(QuotaSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuotaSettings build() => _build();

  _$QuotaSettings _build() {
    final _$result = _$v ??
        new _$QuotaSettings._(limit: limit, offset: offset, period: period);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
