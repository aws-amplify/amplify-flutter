// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_mfa_device_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetMfaDeviceRequest extends GetMfaDeviceRequest {
  @override
  final String serialNumber;
  @override
  final String? userName;

  factory _$GetMfaDeviceRequest(
          [void Function(GetMfaDeviceRequestBuilder)? updates]) =>
      (new GetMfaDeviceRequestBuilder()..update(updates))._build();

  _$GetMfaDeviceRequest._({required this.serialNumber, this.userName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        serialNumber, r'GetMfaDeviceRequest', 'serialNumber');
  }

  @override
  GetMfaDeviceRequest rebuild(
          void Function(GetMfaDeviceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMfaDeviceRequestBuilder toBuilder() =>
      new GetMfaDeviceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMfaDeviceRequest &&
        serialNumber == other.serialNumber &&
        userName == other.userName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serialNumber.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetMfaDeviceRequestBuilder
    implements Builder<GetMfaDeviceRequest, GetMfaDeviceRequestBuilder> {
  _$GetMfaDeviceRequest? _$v;

  String? _serialNumber;
  String? get serialNumber => _$this._serialNumber;
  set serialNumber(String? serialNumber) => _$this._serialNumber = serialNumber;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  GetMfaDeviceRequestBuilder();

  GetMfaDeviceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serialNumber = $v.serialNumber;
      _userName = $v.userName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetMfaDeviceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetMfaDeviceRequest;
  }

  @override
  void update(void Function(GetMfaDeviceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetMfaDeviceRequest build() => _build();

  _$GetMfaDeviceRequest _build() {
    final _$result = _$v ??
        new _$GetMfaDeviceRequest._(
            serialNumber: BuiltValueNullFieldError.checkNotNull(
                serialNumber, r'GetMfaDeviceRequest', 'serialNumber'),
            userName: userName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
