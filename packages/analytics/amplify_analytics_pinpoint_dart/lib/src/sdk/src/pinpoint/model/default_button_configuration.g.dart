// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.default_button_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DefaultButtonConfiguration extends DefaultButtonConfiguration {
  @override
  final String? backgroundColor;
  @override
  final int borderRadius;
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
      required this.borderRadius,
      required this.buttonAction,
      this.link,
      required this.text,
      this.textColor})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        borderRadius, r'DefaultButtonConfiguration', 'borderRadius');
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
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, backgroundColor.hashCode),
                        borderRadius.hashCode),
                    buttonAction.hashCode),
                link.hashCode),
            text.hashCode),
        textColor.hashCode));
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
            borderRadius: BuiltValueNullFieldError.checkNotNull(
                borderRadius, r'DefaultButtonConfiguration', 'borderRadius'),
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
