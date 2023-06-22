// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sdk_configuration_property.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SdkConfigurationProperty extends SdkConfigurationProperty {
  @override
  final String? name;
  @override
  final String? friendlyName;
  @override
  final String? description;
  @override
  final bool required;
  @override
  final String? defaultValue;

  factory _$SdkConfigurationProperty(
          [void Function(SdkConfigurationPropertyBuilder)? updates]) =>
      (new SdkConfigurationPropertyBuilder()..update(updates))._build();

  _$SdkConfigurationProperty._(
      {this.name,
      this.friendlyName,
      this.description,
      required this.required,
      this.defaultValue})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        required, r'SdkConfigurationProperty', 'required');
  }

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
        name == other.name &&
        friendlyName == other.friendlyName &&
        description == other.description &&
        required == other.required &&
        defaultValue == other.defaultValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, friendlyName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, required.hashCode);
    _$hash = $jc(_$hash, defaultValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SdkConfigurationPropertyBuilder
    implements
        Builder<SdkConfigurationProperty, SdkConfigurationPropertyBuilder> {
  _$SdkConfigurationProperty? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _friendlyName;
  String? get friendlyName => _$this._friendlyName;
  set friendlyName(String? friendlyName) => _$this._friendlyName = friendlyName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _required;
  bool? get required => _$this._required;
  set required(bool? required) => _$this._required = required;

  String? _defaultValue;
  String? get defaultValue => _$this._defaultValue;
  set defaultValue(String? defaultValue) => _$this._defaultValue = defaultValue;

  SdkConfigurationPropertyBuilder() {
    SdkConfigurationProperty._init(this);
  }

  SdkConfigurationPropertyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _friendlyName = $v.friendlyName;
      _description = $v.description;
      _required = $v.required;
      _defaultValue = $v.defaultValue;
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
            name: name,
            friendlyName: friendlyName,
            description: description,
            required: BuiltValueNullFieldError.checkNotNull(
                required, r'SdkConfigurationProperty', 'required'),
            defaultValue: defaultValue);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
