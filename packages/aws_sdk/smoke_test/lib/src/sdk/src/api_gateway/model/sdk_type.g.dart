// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.sdk_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SdkType extends SdkType {
  @override
  final _i3.BuiltList<_i2.SdkConfigurationProperty>? configurationProperties;
  @override
  final String? description;
  @override
  final String? friendlyName;
  @override
  final String? id;

  factory _$SdkType([void Function(SdkTypeBuilder)? updates]) =>
      (new SdkTypeBuilder()..update(updates))._build();

  _$SdkType._(
      {this.configurationProperties,
      this.description,
      this.friendlyName,
      this.id})
      : super._();

  @override
  SdkType rebuild(void Function(SdkTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SdkTypeBuilder toBuilder() => new SdkTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SdkType &&
        configurationProperties == other.configurationProperties &&
        description == other.description &&
        friendlyName == other.friendlyName &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configurationProperties.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, friendlyName.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SdkTypeBuilder implements Builder<SdkType, SdkTypeBuilder> {
  _$SdkType? _$v;

  _i3.ListBuilder<_i2.SdkConfigurationProperty>? _configurationProperties;
  _i3.ListBuilder<_i2.SdkConfigurationProperty> get configurationProperties =>
      _$this._configurationProperties ??=
          new _i3.ListBuilder<_i2.SdkConfigurationProperty>();
  set configurationProperties(
          _i3.ListBuilder<_i2.SdkConfigurationProperty>?
              configurationProperties) =>
      _$this._configurationProperties = configurationProperties;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _friendlyName;
  String? get friendlyName => _$this._friendlyName;
  set friendlyName(String? friendlyName) => _$this._friendlyName = friendlyName;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  SdkTypeBuilder() {
    SdkType._init(this);
  }

  SdkTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationProperties = $v.configurationProperties?.toBuilder();
      _description = $v.description;
      _friendlyName = $v.friendlyName;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SdkType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SdkType;
  }

  @override
  void update(void Function(SdkTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SdkType build() => _build();

  _$SdkType _build() {
    _$SdkType _$result;
    try {
      _$result = _$v ??
          new _$SdkType._(
              configurationProperties: _configurationProperties?.build(),
              description: description,
              friendlyName: friendlyName,
              id: id);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configurationProperties';
        _configurationProperties?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SdkType', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
