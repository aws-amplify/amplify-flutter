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
    return $jf($jc($jc(0, buttonAction.hashCode), link.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
