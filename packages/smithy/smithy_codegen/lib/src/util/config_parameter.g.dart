// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_parameter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfigParameter extends ConfigParameter {
  @override
  final String name;
  @override
  final Reference type;
  @override
  final bool required;
  @override
  final bool isOverride;
  @override
  final ParameterLocation location;
  @override
  final Code? defaultTo;

  factory _$ConfigParameter([void Function(ConfigParameterBuilder)? updates]) =>
      (new ConfigParameterBuilder()..update(updates))._build();

  _$ConfigParameter._(
      {required this.name,
      required this.type,
      required this.required,
      required this.isOverride,
      required this.location,
      this.defaultTo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'ConfigParameter', 'name');
    BuiltValueNullFieldError.checkNotNull(type, r'ConfigParameter', 'type');
    BuiltValueNullFieldError.checkNotNull(
        required, r'ConfigParameter', 'required');
    BuiltValueNullFieldError.checkNotNull(
        isOverride, r'ConfigParameter', 'isOverride');
    BuiltValueNullFieldError.checkNotNull(
        location, r'ConfigParameter', 'location');
  }

  @override
  ConfigParameter rebuild(void Function(ConfigParameterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigParameterBuilder toBuilder() =>
      new ConfigParameterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfigParameter &&
        name == other.name &&
        type == other.type &&
        required == other.required &&
        isOverride == other.isOverride &&
        location == other.location &&
        defaultTo == other.defaultTo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, required.hashCode);
    _$hash = $jc(_$hash, isOverride.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, defaultTo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConfigParameter')
          ..add('name', name)
          ..add('type', type)
          ..add('required', required)
          ..add('isOverride', isOverride)
          ..add('location', location)
          ..add('defaultTo', defaultTo))
        .toString();
  }
}

class ConfigParameterBuilder
    implements Builder<ConfigParameter, ConfigParameterBuilder> {
  _$ConfigParameter? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  Reference? _type;
  Reference? get type => _$this._type;
  set type(Reference? type) => _$this._type = type;

  bool? _required;
  bool? get required => _$this._required;
  set required(bool? required) => _$this._required = required;

  bool? _isOverride;
  bool? get isOverride => _$this._isOverride;
  set isOverride(bool? isOverride) => _$this._isOverride = isOverride;

  ParameterLocation? _location;
  ParameterLocation? get location => _$this._location;
  set location(ParameterLocation? location) => _$this._location = location;

  Code? _defaultTo;
  Code? get defaultTo => _$this._defaultTo;
  set defaultTo(Code? defaultTo) => _$this._defaultTo = defaultTo;

  ConfigParameterBuilder() {
    ConfigParameter._init(this);
  }

  ConfigParameterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _type = $v.type;
      _required = $v.required;
      _isOverride = $v.isOverride;
      _location = $v.location;
      _defaultTo = $v.defaultTo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfigParameter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfigParameter;
  }

  @override
  void update(void Function(ConfigParameterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfigParameter build() => _build();

  _$ConfigParameter _build() {
    final _$result = _$v ??
        new _$ConfigParameter._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ConfigParameter', 'name'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'ConfigParameter', 'type'),
            required: BuiltValueNullFieldError.checkNotNull(
                required, r'ConfigParameter', 'required'),
            isOverride: BuiltValueNullFieldError.checkNotNull(
                isOverride, r'ConfigParameter', 'isOverride'),
            location: BuiltValueNullFieldError.checkNotNull(
                location, r'ConfigParameter', 'location'),
            defaultTo: defaultTo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
