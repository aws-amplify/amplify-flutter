// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_key_exists_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceKeyExistsException extends DeviceKeyExistsException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$DeviceKeyExistsException([
    void Function(DeviceKeyExistsExceptionBuilder)? updates,
  ]) => (DeviceKeyExistsExceptionBuilder()..update(updates))._build();

  _$DeviceKeyExistsException._({this.message, this.headers}) : super._();
  @override
  DeviceKeyExistsException rebuild(
    void Function(DeviceKeyExistsExceptionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DeviceKeyExistsExceptionBuilder toBuilder() =>
      DeviceKeyExistsExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceKeyExistsException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeviceKeyExistsExceptionBuilder
    implements
        Builder<DeviceKeyExistsException, DeviceKeyExistsExceptionBuilder> {
  _$DeviceKeyExistsException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  DeviceKeyExistsExceptionBuilder();

  DeviceKeyExistsExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceKeyExistsException other) {
    _$v = other as _$DeviceKeyExistsException;
  }

  @override
  void update(void Function(DeviceKeyExistsExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceKeyExistsException build() => _build();

  _$DeviceKeyExistsException _build() {
    final _$result =
        _$v ?? _$DeviceKeyExistsException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
