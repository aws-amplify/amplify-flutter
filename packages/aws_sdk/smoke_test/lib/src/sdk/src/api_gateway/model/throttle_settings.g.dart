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
    var _$hash = 0;
    _$hash = $jc(_$hash, burstLimit.hashCode);
    _$hash = $jc(_$hash, rateLimit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
