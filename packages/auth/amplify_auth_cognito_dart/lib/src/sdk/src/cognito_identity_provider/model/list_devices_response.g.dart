// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.list_devices_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListDevicesResponse extends ListDevicesResponse {
  @override
  final _i3.BuiltList<_i2.DeviceType>? devices;
  @override
  final String? paginationToken;

  factory _$ListDevicesResponse(
          [void Function(ListDevicesResponseBuilder)? updates]) =>
      (new ListDevicesResponseBuilder()..update(updates))._build();

  _$ListDevicesResponse._({this.devices, this.paginationToken}) : super._();

  @override
  ListDevicesResponse rebuild(
          void Function(ListDevicesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListDevicesResponseBuilder toBuilder() =>
      new ListDevicesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListDevicesResponse &&
        devices == other.devices &&
        paginationToken == other.paginationToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, devices.hashCode);
    _$hash = $jc(_$hash, paginationToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListDevicesResponseBuilder
    implements Builder<ListDevicesResponse, ListDevicesResponseBuilder> {
  _$ListDevicesResponse? _$v;

  _i3.ListBuilder<_i2.DeviceType>? _devices;
  _i3.ListBuilder<_i2.DeviceType> get devices =>
      _$this._devices ??= new _i3.ListBuilder<_i2.DeviceType>();
  set devices(_i3.ListBuilder<_i2.DeviceType>? devices) =>
      _$this._devices = devices;

  String? _paginationToken;
  String? get paginationToken => _$this._paginationToken;
  set paginationToken(String? paginationToken) =>
      _$this._paginationToken = paginationToken;

  ListDevicesResponseBuilder() {
    ListDevicesResponse._init(this);
  }

  ListDevicesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _devices = $v.devices?.toBuilder();
      _paginationToken = $v.paginationToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListDevicesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListDevicesResponse;
  }

  @override
  void update(void Function(ListDevicesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListDevicesResponse build() => _build();

  _$ListDevicesResponse _build() {
    _$ListDevicesResponse _$result;
    try {
      _$result = _$v ??
          new _$ListDevicesResponse._(
              devices: _devices?.build(), paginationToken: paginationToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'devices';
        _devices?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListDevicesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
