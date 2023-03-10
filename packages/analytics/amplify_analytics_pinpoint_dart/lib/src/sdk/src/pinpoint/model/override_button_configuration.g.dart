// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.override_button_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OverrideButtonConfiguration extends OverrideButtonConfiguration {
  @override
  final _i2.ButtonAction buttonAction;
  @override
  final String? link;

  factory _$OverrideButtonConfiguration(
          [void Function(OverrideButtonConfigurationBuilder)? updates]) =>
      (new OverrideButtonConfigurationBuilder()..update(updates))._build();

  _$OverrideButtonConfiguration._({required this.buttonAction, this.link})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        buttonAction, r'OverrideButtonConfiguration', 'buttonAction');
  }

  @override
  OverrideButtonConfiguration rebuild(
          void Function(OverrideButtonConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OverrideButtonConfigurationBuilder toBuilder() =>
      new OverrideButtonConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OverrideButtonConfiguration &&
        buttonAction == other.buttonAction &&
        link == other.link;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, buttonAction.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OverrideButtonConfigurationBuilder
    implements
        Builder<OverrideButtonConfiguration,
            OverrideButtonConfigurationBuilder> {
  _$OverrideButtonConfiguration? _$v;

  _i2.ButtonAction? _buttonAction;
  _i2.ButtonAction? get buttonAction => _$this._buttonAction;
  set buttonAction(_i2.ButtonAction? buttonAction) =>
      _$this._buttonAction = buttonAction;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  OverrideButtonConfigurationBuilder() {
    OverrideButtonConfiguration._init(this);
  }

  OverrideButtonConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _buttonAction = $v.buttonAction;
      _link = $v.link;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OverrideButtonConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OverrideButtonConfiguration;
  }

  @override
  void update(void Function(OverrideButtonConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OverrideButtonConfiguration build() => _build();

  _$OverrideButtonConfiguration _build() {
    final _$result = _$v ??
        new _$OverrideButtonConfiguration._(
            buttonAction: BuiltValueNullFieldError.checkNotNull(
                buttonAction, r'OverrideButtonConfiguration', 'buttonAction'),
            link: link);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
