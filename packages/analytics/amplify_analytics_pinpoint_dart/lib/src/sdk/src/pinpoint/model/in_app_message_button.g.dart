// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'in_app_message_button.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InAppMessageButton extends InAppMessageButton {
  @override
  final OverrideButtonConfiguration? android;
  @override
  final DefaultButtonConfiguration? defaultConfig;
  @override
  final OverrideButtonConfiguration? ios;
  @override
  final OverrideButtonConfiguration? web;

  factory _$InAppMessageButton([
    void Function(InAppMessageButtonBuilder)? updates,
  ]) => (InAppMessageButtonBuilder()..update(updates))._build();

  _$InAppMessageButton._({this.android, this.defaultConfig, this.ios, this.web})
    : super._();
  @override
  InAppMessageButton rebuild(
    void Function(InAppMessageButtonBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InAppMessageButtonBuilder toBuilder() =>
      InAppMessageButtonBuilder()..replace(this);

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

  OverrideButtonConfigurationBuilder? _android;
  OverrideButtonConfigurationBuilder get android =>
      _$this._android ??= OverrideButtonConfigurationBuilder();
  set android(OverrideButtonConfigurationBuilder? android) =>
      _$this._android = android;

  DefaultButtonConfigurationBuilder? _defaultConfig;
  DefaultButtonConfigurationBuilder get defaultConfig =>
      _$this._defaultConfig ??= DefaultButtonConfigurationBuilder();
  set defaultConfig(DefaultButtonConfigurationBuilder? defaultConfig) =>
      _$this._defaultConfig = defaultConfig;

  OverrideButtonConfigurationBuilder? _ios;
  OverrideButtonConfigurationBuilder get ios =>
      _$this._ios ??= OverrideButtonConfigurationBuilder();
  set ios(OverrideButtonConfigurationBuilder? ios) => _$this._ios = ios;

  OverrideButtonConfigurationBuilder? _web;
  OverrideButtonConfigurationBuilder get web =>
      _$this._web ??= OverrideButtonConfigurationBuilder();
  set web(OverrideButtonConfigurationBuilder? web) => _$this._web = web;

  InAppMessageButtonBuilder();

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
      _$result =
          _$v ??
          _$InAppMessageButton._(
            android: _android?.build(),
            defaultConfig: _defaultConfig?.build(),
            ios: _ios?.build(),
            web: _web?.build(),
          );
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
        throw BuiltValueNestedFieldError(
          r'InAppMessageButton',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
