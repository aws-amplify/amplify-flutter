// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_button_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DefaultButtonConfiguration extends DefaultButtonConfiguration {
  @override
  final String? backgroundColor;
  @override
  final int? borderRadius;
  @override
  final _i2.ButtonAction buttonAction;
  @override
  final String? link;
  @override
  final String text;
  @override
  final String? textColor;

  factory _$DefaultButtonConfiguration(
          [void Function(DefaultButtonConfigurationBuilder)? updates]) =>
      (new DefaultButtonConfigurationBuilder()..update(updates))._build();

  _$DefaultButtonConfiguration._(
      {this.backgroundColor,
      this.borderRadius,
      required this.buttonAction,
      this.link,
      required this.text,
      this.textColor})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        buttonAction, r'DefaultButtonConfiguration', 'buttonAction');
    BuiltValueNullFieldError.checkNotNull(
        text, r'DefaultButtonConfiguration', 'text');
  }

  @override
  DefaultButtonConfiguration rebuild(
          void Function(DefaultButtonConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DefaultButtonConfigurationBuilder toBuilder() =>
      new DefaultButtonConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DefaultButtonConfiguration &&
        backgroundColor == other.backgroundColor &&
        borderRadius == other.borderRadius &&
        buttonAction == other.buttonAction &&
        link == other.link &&
        text == other.text &&
        textColor == other.textColor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, backgroundColor.hashCode);
    _$hash = $jc(_$hash, borderRadius.hashCode);
    _$hash = $jc(_$hash, buttonAction.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, textColor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DefaultButtonConfigurationBuilder
    implements
        Builder<DefaultButtonConfiguration, DefaultButtonConfigurationBuilder> {
  _$DefaultButtonConfiguration? _$v;

  String? _backgroundColor;
  String? get backgroundColor => _$this._backgroundColor;
  set backgroundColor(String? backgroundColor) =>
      _$this._backgroundColor = backgroundColor;

  int? _borderRadius;
  int? get borderRadius => _$this._borderRadius;
  set borderRadius(int? borderRadius) => _$this._borderRadius = borderRadius;

  _i2.ButtonAction? _buttonAction;
  _i2.ButtonAction? get buttonAction => _$this._buttonAction;
  set buttonAction(_i2.ButtonAction? buttonAction) =>
      _$this._buttonAction = buttonAction;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _textColor;
  String? get textColor => _$this._textColor;
  set textColor(String? textColor) => _$this._textColor = textColor;

  DefaultButtonConfigurationBuilder() {
    DefaultButtonConfiguration._init(this);
  }

  DefaultButtonConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _backgroundColor = $v.backgroundColor;
      _borderRadius = $v.borderRadius;
      _buttonAction = $v.buttonAction;
      _link = $v.link;
      _text = $v.text;
      _textColor = $v.textColor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DefaultButtonConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DefaultButtonConfiguration;
  }

  @override
  void update(void Function(DefaultButtonConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DefaultButtonConfiguration build() => _build();

  _$DefaultButtonConfiguration _build() {
    final _$result = _$v ??
        new _$DefaultButtonConfiguration._(
            backgroundColor: backgroundColor,
            borderRadius: borderRadius,
            buttonAction: BuiltValueNullFieldError.checkNotNull(
                buttonAction, r'DefaultButtonConfiguration', 'buttonAction'),
            link: link,
            text: BuiltValueNullFieldError.checkNotNull(
                text, r'DefaultButtonConfiguration', 'text'),
            textColor: textColor);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
