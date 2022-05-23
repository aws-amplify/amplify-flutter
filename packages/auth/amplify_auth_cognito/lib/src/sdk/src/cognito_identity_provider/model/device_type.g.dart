// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.device_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceType extends DeviceType {
  @override
  final _i2.BuiltList<_i3.AttributeType>? deviceAttributes;
  @override
  final DateTime? deviceCreateDate;
  @override
  final String? deviceKey;
  @override
  final DateTime? deviceLastAuthenticatedDate;
  @override
  final DateTime? deviceLastModifiedDate;

  factory _$DeviceType([void Function(DeviceTypeBuilder)? updates]) =>
      (new DeviceTypeBuilder()..update(updates))._build();

  _$DeviceType._(
      {this.deviceAttributes,
      this.deviceCreateDate,
      this.deviceKey,
      this.deviceLastAuthenticatedDate,
      this.deviceLastModifiedDate})
      : super._();

  @override
  DeviceType rebuild(void Function(DeviceTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceTypeBuilder toBuilder() => new DeviceTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceType &&
        deviceAttributes == other.deviceAttributes &&
        deviceCreateDate == other.deviceCreateDate &&
        deviceKey == other.deviceKey &&
        deviceLastAuthenticatedDate == other.deviceLastAuthenticatedDate &&
        deviceLastModifiedDate == other.deviceLastModifiedDate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc(0, deviceAttributes.hashCode),
                    deviceCreateDate.hashCode),
                deviceKey.hashCode),
            deviceLastAuthenticatedDate.hashCode),
        deviceLastModifiedDate.hashCode));
  }
}

class DeviceTypeBuilder implements Builder<DeviceType, DeviceTypeBuilder> {
  _$DeviceType? _$v;

  _i2.ListBuilder<_i3.AttributeType>? _deviceAttributes;
  _i2.ListBuilder<_i3.AttributeType> get deviceAttributes =>
      _$this._deviceAttributes ??= new _i2.ListBuilder<_i3.AttributeType>();
  set deviceAttributes(_i2.ListBuilder<_i3.AttributeType>? deviceAttributes) =>
      _$this._deviceAttributes = deviceAttributes;

  DateTime? _deviceCreateDate;
  DateTime? get deviceCreateDate => _$this._deviceCreateDate;
  set deviceCreateDate(DateTime? deviceCreateDate) =>
      _$this._deviceCreateDate = deviceCreateDate;

  String? _deviceKey;
  String? get deviceKey => _$this._deviceKey;
  set deviceKey(String? deviceKey) => _$this._deviceKey = deviceKey;

  DateTime? _deviceLastAuthenticatedDate;
  DateTime? get deviceLastAuthenticatedDate =>
      _$this._deviceLastAuthenticatedDate;
  set deviceLastAuthenticatedDate(DateTime? deviceLastAuthenticatedDate) =>
      _$this._deviceLastAuthenticatedDate = deviceLastAuthenticatedDate;

  DateTime? _deviceLastModifiedDate;
  DateTime? get deviceLastModifiedDate => _$this._deviceLastModifiedDate;
  set deviceLastModifiedDate(DateTime? deviceLastModifiedDate) =>
      _$this._deviceLastModifiedDate = deviceLastModifiedDate;

  DeviceTypeBuilder() {
    DeviceType._init(this);
  }

  DeviceTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceAttributes = $v.deviceAttributes?.toBuilder();
      _deviceCreateDate = $v.deviceCreateDate;
      _deviceKey = $v.deviceKey;
      _deviceLastAuthenticatedDate = $v.deviceLastAuthenticatedDate;
      _deviceLastModifiedDate = $v.deviceLastModifiedDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeviceType;
  }

  @override
  void update(void Function(DeviceTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceType build() => _build();

  _$DeviceType _build() {
    _$DeviceType _$result;
    try {
      _$result = _$v ??
          new _$DeviceType._(
              deviceAttributes: _deviceAttributes?.build(),
              deviceCreateDate: deviceCreateDate,
              deviceKey: deviceKey,
              deviceLastAuthenticatedDate: deviceLastAuthenticatedDate,
              deviceLastModifiedDate: deviceLastModifiedDate);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deviceAttributes';
        _deviceAttributes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DeviceType', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
