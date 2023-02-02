// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.in_app_message_button;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InAppMessageButton extends InAppMessageButton {
  @override
  final _i2.OverrideButtonConfiguration? android;
  @override
  final _i3.DefaultButtonConfiguration? defaultConfig;
  @override
  final _i2.OverrideButtonConfiguration? ios;
  @override
  final _i2.OverrideButtonConfiguration? web;

  factory _$InAppMessageButton(
          [void Function(InAppMessageButtonBuilder)? updates]) =>
      (new InAppMessageButtonBuilder()..update(updates))._build();

  _$InAppMessageButton._({this.android, this.defaultConfig, this.ios, this.web})
      : super._();

  @override
  InAppMessageButton rebuild(
          void Function(InAppMessageButtonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InAppMessageButtonBuilder toBuilder() =>
      new InAppMessageButtonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InAppMessageButton &&
        android == other.android &&
        defaultConfig == other.defaultConfig &&
        ios == other.ios &&
        web == other.web;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, android.hashCode);
    _$hash = $jc(_$hash, defaultConfig.hashCode);
    _$hash = $jc(_$hash, ios.hashCode);
    _$hash = $jc(_$hash, web.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InAppMessageButtonBuilder
    implements Builder<InAppMessageButton, InAppMessageButtonBuilder> {
  _$InAppMessageButton? _$v;

  _i2.OverrideButtonConfigurationBuilder? _android;
  _i2.OverrideButtonConfigurationBuilder get android =>
      _$this._android ??= new _i2.OverrideButtonConfigurationBuilder();
  set android(_i2.OverrideButtonConfigurationBuilder? android) =>
      _$this._android = android;

  _i3.DefaultButtonConfigurationBuilder? _defaultConfig;
  _i3.DefaultButtonConfigurationBuilder get defaultConfig =>
      _$this._defaultConfig ??= new _i3.DefaultButtonConfigurationBuilder();
  set defaultConfig(_i3.DefaultButtonConfigurationBuilder? defaultConfig) =>
      _$this._defaultConfig = defaultConfig;

  _i2.OverrideButtonConfigurationBuilder? _ios;
  _i2.OverrideButtonConfigurationBuilder get ios =>
      _$this._ios ??= new _i2.OverrideButtonConfigurationBuilder();
  set ios(_i2.OverrideButtonConfigurationBuilder? ios) => _$this._ios = ios;

  _i2.OverrideButtonConfigurationBuilder? _web;
  _i2.OverrideButtonConfigurationBuilder get web =>
      _$this._web ??= new _i2.OverrideButtonConfigurationBuilder();
  set web(_i2.OverrideButtonConfigurationBuilder? web) => _$this._web = web;

  InAppMessageButtonBuilder() {
    InAppMessageButton._init(this);
  }

  InAppMessageButtonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _android = $v.android?.toBuilder();
      _defaultConfig = $v.defaultConfig?.toBuilder();
      _ios = $v.ios?.toBuilder();
      _web = $v.web?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InAppMessageButton other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InAppMessageButton;
  }

  @override
  void update(void Function(InAppMessageButtonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InAppMessageButton build() => _build();

  _$InAppMessageButton _build() {
    _$InAppMessageButton _$result;
    try {
      _$result = _$v ??
          new _$InAppMessageButton._(
              android: _android?.build(),
              defaultConfig: _defaultConfig?.build(),
              ios: _ios?.build(),
              web: _web?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'android';
        _android?.build();
        _$failedField = 'defaultConfig';
        _defaultConfig?.build();
        _$failedField = 'ios';
        _ios?.build();
        _$failedField = 'web';
        _web?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InAppMessageButton', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
