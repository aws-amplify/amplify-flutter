// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.sdk_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SdkType extends SdkType {
  @override
  final String? id;
  @override
  final String? friendlyName;
  @override
  final String? description;
  @override
  final _i3.BuiltList<_i2.SdkConfigurationProperty>? configurationProperties;

  factory _$SdkType([void Function(SdkTypeBuilder)? updates]) =>
      (new SdkTypeBuilder()..update(updates))._build();

  _$SdkType._(
      {this.id,
      this.friendlyName,
      this.description,
      this.configurationProperties})
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
        id == other.id &&
        friendlyName == other.friendlyName &&
        description == other.description &&
        configurationProperties == other.configurationProperties;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, friendlyName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, configurationProperties.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SdkTypeBuilder implements Builder<SdkType, SdkTypeBuilder> {
  _$SdkType? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _friendlyName;
  String? get friendlyName => _$this._friendlyName;
  set friendlyName(String? friendlyName) => _$this._friendlyName = friendlyName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i3.ListBuilder<_i2.SdkConfigurationProperty>? _configurationProperties;
  _i3.ListBuilder<_i2.SdkConfigurationProperty> get configurationProperties =>
      _$this._configurationProperties ??=
          new _i3.ListBuilder<_i2.SdkConfigurationProperty>();
  set configurationProperties(
          _i3.ListBuilder<_i2.SdkConfigurationProperty>?
              configurationProperties) =>
      _$this._configurationProperties = configurationProperties;

  SdkTypeBuilder() {
    SdkType._init(this);
  }

  SdkTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _friendlyName = $v.friendlyName;
      _description = $v.description;
      _configurationProperties = $v.configurationProperties?.toBuilder();
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
              id: id,
              friendlyName: friendlyName,
              description: description,
              configurationProperties: _configurationProperties?.build());
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
