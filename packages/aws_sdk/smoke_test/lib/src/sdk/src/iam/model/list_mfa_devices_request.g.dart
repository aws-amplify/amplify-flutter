// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_mfa_devices_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListMfaDevicesRequest extends ListMfaDevicesRequest {
  @override
  final String? userName;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListMfaDevicesRequest(
          [void Function(ListMfaDevicesRequestBuilder)? updates]) =>
      (new ListMfaDevicesRequestBuilder()..update(updates))._build();

  _$ListMfaDevicesRequest._({this.userName, this.marker, this.maxItems})
      : super._();

  @override
  ListMfaDevicesRequest rebuild(
          void Function(ListMfaDevicesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListMfaDevicesRequestBuilder toBuilder() =>
      new ListMfaDevicesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListMfaDevicesRequest &&
        userName == other.userName &&
        marker == other.marker &&
        maxItems == other.maxItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListMfaDevicesRequestBuilder
    implements Builder<ListMfaDevicesRequest, ListMfaDevicesRequestBuilder> {
  _$ListMfaDevicesRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListMfaDevicesRequestBuilder() {
    ListMfaDevicesRequest._init(this);
  }

  ListMfaDevicesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _marker = $v.marker;
      _maxItems = $v.maxItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListMfaDevicesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListMfaDevicesRequest;
  }

  @override
  void update(void Function(ListMfaDevicesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListMfaDevicesRequest build() => _build();

  _$ListMfaDevicesRequest _build() {
    final _$result = _$v ??
        new _$ListMfaDevicesRequest._(
            userName: userName, marker: marker, maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
