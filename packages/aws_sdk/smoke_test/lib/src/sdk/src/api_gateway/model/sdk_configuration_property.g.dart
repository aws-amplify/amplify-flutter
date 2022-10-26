// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.sdk_configuration_property;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SdkConfigurationProperty extends SdkConfigurationProperty {
  @override
  final String? defaultValue;
  @override
  final String? description;
  @override
  final String? friendlyName;
  @override
  final String? name;
  @override
  final bool? required;

  factory _$SdkConfigurationProperty(
          [void Function(SdkConfigurationPropertyBuilder)? updates]) =>
      (new SdkConfigurationPropertyBuilder()..update(updates))._build();

  _$SdkConfigurationProperty._(
      {this.defaultValue,
      this.description,
      this.friendlyName,
      this.name,
      this.required})
      : super._();

  @override
  SdkConfigurationProperty rebuild(
          void Function(SdkConfigurationPropertyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SdkConfigurationPropertyBuilder toBuilder() =>
      new SdkConfigurationPropertyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SdkConfigurationProperty &&
        defaultValue == other.defaultValue &&
        description == other.description &&
        friendlyName == other.friendlyName &&
        name == other.name &&
        required == other.required;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, defaultValue.hashCode), description.hashCode),
                friendlyName.hashCode),
            name.hashCode),
        required.hashCode));
  }
}

class SdkConfigurationPropertyBuilder
    implements
        Builder<SdkConfigurationProperty, SdkConfigurationPropertyBuilder> {
  _$SdkConfigurationProperty? _$v;

  String? _defaultValue;
  String? get defaultValue => _$this._defaultValue;
  set defaultValue(String? defaultValue) => _$this._defaultValue = defaultValue;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _friendlyName;
  String? get friendlyName => _$this._friendlyName;
  set friendlyName(String? friendlyName) => _$this._friendlyName = friendlyName;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _required;
  bool? get required => _$this._required;
  set required(bool? required) => _$this._required = required;

  SdkConfigurationPropertyBuilder() {
    SdkConfigurationProperty._init(this);
  }

  SdkConfigurationPropertyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _defaultValue = $v.defaultValue;
      _description = $v.description;
      _friendlyName = $v.friendlyName;
      _name = $v.name;
      _required = $v.required;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SdkConfigurationProperty other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SdkConfigurationProperty;
  }

  @override
  void update(void Function(SdkConfigurationPropertyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SdkConfigurationProperty build() => _build();

  _$SdkConfigurationProperty _build() {
    final _$result = _$v ??
        new _$SdkConfigurationProperty._(
            defaultValue: defaultValue,
            description: description,
            friendlyName: friendlyName,
            name: name,
            required: required);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
