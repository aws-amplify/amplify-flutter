// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_mfa_devices_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListMfaDevicesResponse extends ListMfaDevicesResponse {
  @override
  final _i3.BuiltList<_i2.MfaDevice> mfaDevices;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListMfaDevicesResponse(
          [void Function(ListMfaDevicesResponseBuilder)? updates]) =>
      (new ListMfaDevicesResponseBuilder()..update(updates))._build();

  _$ListMfaDevicesResponse._(
      {required this.mfaDevices, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        mfaDevices, r'ListMfaDevicesResponse', 'mfaDevices');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListMfaDevicesResponse', 'isTruncated');
  }

  @override
  ListMfaDevicesResponse rebuild(
          void Function(ListMfaDevicesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListMfaDevicesResponseBuilder toBuilder() =>
      new ListMfaDevicesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListMfaDevicesResponse &&
        mfaDevices == other.mfaDevices &&
        isTruncated == other.isTruncated &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mfaDevices.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListMfaDevicesResponseBuilder
    implements Builder<ListMfaDevicesResponse, ListMfaDevicesResponseBuilder> {
  _$ListMfaDevicesResponse? _$v;

  _i3.ListBuilder<_i2.MfaDevice>? _mfaDevices;
  _i3.ListBuilder<_i2.MfaDevice> get mfaDevices =>
      _$this._mfaDevices ??= new _i3.ListBuilder<_i2.MfaDevice>();
  set mfaDevices(_i3.ListBuilder<_i2.MfaDevice>? mfaDevices) =>
      _$this._mfaDevices = mfaDevices;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  ListMfaDevicesResponseBuilder() {
    ListMfaDevicesResponse._init(this);
  }

  ListMfaDevicesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mfaDevices = $v.mfaDevices.toBuilder();
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListMfaDevicesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListMfaDevicesResponse;
  }

  @override
  void update(void Function(ListMfaDevicesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListMfaDevicesResponse build() => _build();

  _$ListMfaDevicesResponse _build() {
    _$ListMfaDevicesResponse _$result;
    try {
      _$result = _$v ??
          new _$ListMfaDevicesResponse._(
              mfaDevices: mfaDevices.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated, r'ListMfaDevicesResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mfaDevices';
        mfaDevices.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListMfaDevicesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
