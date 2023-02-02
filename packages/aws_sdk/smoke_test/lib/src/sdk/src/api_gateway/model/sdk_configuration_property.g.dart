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
    var _$hash = 0;
    _$hash = $jc(_$hash, defaultValue.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, friendlyName.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, required.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
