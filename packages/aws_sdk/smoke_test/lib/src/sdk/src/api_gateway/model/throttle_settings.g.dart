// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.throttle_settings;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ThrottleSettings extends ThrottleSettings {
  @override
  final int? burstLimit;
  @override
  final double? rateLimit;

  factory _$ThrottleSettings(
          [void Function(ThrottleSettingsBuilder)? updates]) =>
      (new ThrottleSettingsBuilder()..update(updates))._build();

  _$ThrottleSettings._({this.burstLimit, this.rateLimit}) : super._();

  @override
  ThrottleSettings rebuild(void Function(ThrottleSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThrottleSettingsBuilder toBuilder() =>
      new ThrottleSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ThrottleSettings &&
        burstLimit == other.burstLimit &&
        rateLimit == other.rateLimit;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, burstLimit.hashCode), rateLimit.hashCode));
  }
}

class ThrottleSettingsBuilder
    implements Builder<ThrottleSettings, ThrottleSettingsBuilder> {
  _$ThrottleSettings? _$v;

  int? _burstLimit;
  int? get burstLimit => _$this._burstLimit;
  set burstLimit(int? burstLimit) => _$this._burstLimit = burstLimit;

  double? _rateLimit;
  double? get rateLimit => _$this._rateLimit;
  set rateLimit(double? rateLimit) => _$this._rateLimit = rateLimit;

  ThrottleSettingsBuilder() {
    ThrottleSettings._init(this);
  }

  ThrottleSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _burstLimit = $v.burstLimit;
      _rateLimit = $v.rateLimit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ThrottleSettings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ThrottleSettings;
  }

  @override
  void update(void Function(ThrottleSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ThrottleSettings build() => _build();

  _$ThrottleSettings _build() {
    final _$result = _$v ??
        new _$ThrottleSettings._(burstLimit: burstLimit, rateLimit: rateLimit);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
