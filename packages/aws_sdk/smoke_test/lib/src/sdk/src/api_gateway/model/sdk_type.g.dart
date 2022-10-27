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
    return $jf($jc(
        $jc($jc($jc(0, configurationProperties.hashCode), description.hashCode),
            friendlyName.hashCode),
        id.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
