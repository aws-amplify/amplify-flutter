// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.device_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceType extends DeviceType {
  @override
  final _i3.BuiltList<_i2.AttributeType>? deviceAttributes;
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
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceAttributes.hashCode);
    _$hash = $jc(_$hash, deviceCreateDate.hashCode);
    _$hash = $jc(_$hash, deviceKey.hashCode);
    _$hash = $jc(_$hash, deviceLastAuthenticatedDate.hashCode);
    _$hash = $jc(_$hash, deviceLastModifiedDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeviceTypeBuilder implements Builder<DeviceType, DeviceTypeBuilder> {
  _$DeviceType? _$v;

  _i3.ListBuilder<_i2.AttributeType>? _deviceAttributes;
  _i3.ListBuilder<_i2.AttributeType> get deviceAttributes =>
      _$this._deviceAttributes ??= new _i3.ListBuilder<_i2.AttributeType>();
  set deviceAttributes(_i3.ListBuilder<_i2.AttributeType>? deviceAttributes) =>
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
            r'DeviceType', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
