// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.access_log_settings;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccessLogSettings extends AccessLogSettings {
  @override
  final String? format;
  @override
  final String? destinationArn;

  factory _$AccessLogSettings(
          [void Function(AccessLogSettingsBuilder)? updates]) =>
      (new AccessLogSettingsBuilder()..update(updates))._build();

  _$AccessLogSettings._({this.format, this.destinationArn}) : super._();

  @override
  AccessLogSettings rebuild(void Function(AccessLogSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessLogSettingsBuilder toBuilder() =>
      new AccessLogSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessLogSettings &&
        format == other.format &&
        destinationArn == other.destinationArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, destinationArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AccessLogSettingsBuilder
    implements Builder<AccessLogSettings, AccessLogSettingsBuilder> {
  _$AccessLogSettings? _$v;

  String? _format;
  String? get format => _$this._format;
  set format(String? format) => _$this._format = format;

  String? _destinationArn;
  String? get destinationArn => _$this._destinationArn;
  set destinationArn(String? destinationArn) =>
      _$this._destinationArn = destinationArn;

  AccessLogSettingsBuilder() {
    AccessLogSettings._init(this);
  }

  AccessLogSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _format = $v.format;
      _destinationArn = $v.destinationArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessLogSettings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccessLogSettings;
  }

  @override
  void update(void Function(AccessLogSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccessLogSettings build() => _build();

  _$AccessLogSettings _build() {
    final _$result = _$v ??
        new _$AccessLogSettings._(
            format: format, destinationArn: destinationArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
