// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_virtual_mfa_devices_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListVirtualMfaDevicesResponse extends ListVirtualMfaDevicesResponse {
  @override
  final _i3.BuiltList<_i2.VirtualMfaDevice> virtualMfaDevices;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListVirtualMfaDevicesResponse(
          [void Function(ListVirtualMfaDevicesResponseBuilder)? updates]) =>
      (new ListVirtualMfaDevicesResponseBuilder()..update(updates))._build();

  _$ListVirtualMfaDevicesResponse._(
      {required this.virtualMfaDevices, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(virtualMfaDevices,
        r'ListVirtualMfaDevicesResponse', 'virtualMfaDevices');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListVirtualMfaDevicesResponse', 'isTruncated');
  }

  @override
  ListVirtualMfaDevicesResponse rebuild(
          void Function(ListVirtualMfaDevicesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListVirtualMfaDevicesResponseBuilder toBuilder() =>
      new ListVirtualMfaDevicesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListVirtualMfaDevicesResponse &&
        virtualMfaDevices == other.virtualMfaDevices &&
        isTruncated == other.isTruncated &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, virtualMfaDevices.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListVirtualMfaDevicesResponseBuilder
    implements
        Builder<ListVirtualMfaDevicesResponse,
            ListVirtualMfaDevicesResponseBuilder> {
  _$ListVirtualMfaDevicesResponse? _$v;

  _i3.ListBuilder<_i2.VirtualMfaDevice>? _virtualMfaDevices;
  _i3.ListBuilder<_i2.VirtualMfaDevice> get virtualMfaDevices =>
      _$this._virtualMfaDevices ??= new _i3.ListBuilder<_i2.VirtualMfaDevice>();
  set virtualMfaDevices(
          _i3.ListBuilder<_i2.VirtualMfaDevice>? virtualMfaDevices) =>
      _$this._virtualMfaDevices = virtualMfaDevices;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  ListVirtualMfaDevicesResponseBuilder() {
    ListVirtualMfaDevicesResponse._init(this);
  }

  ListVirtualMfaDevicesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _virtualMfaDevices = $v.virtualMfaDevices.toBuilder();
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListVirtualMfaDevicesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListVirtualMfaDevicesResponse;
  }

  @override
  void update(void Function(ListVirtualMfaDevicesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListVirtualMfaDevicesResponse build() => _build();

  _$ListVirtualMfaDevicesResponse _build() {
    _$ListVirtualMfaDevicesResponse _$result;
    try {
      _$result = _$v ??
          new _$ListVirtualMfaDevicesResponse._(
              virtualMfaDevices: virtualMfaDevices.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated, r'ListVirtualMfaDevicesResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'virtualMfaDevices';
        virtualMfaDevices.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListVirtualMfaDevicesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
