// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_mfa_device_tags_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListMfaDeviceTagsRequest extends ListMfaDeviceTagsRequest {
  @override
  final String serialNumber;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListMfaDeviceTagsRequest(
          [void Function(ListMfaDeviceTagsRequestBuilder)? updates]) =>
      (new ListMfaDeviceTagsRequestBuilder()..update(updates))._build();

  _$ListMfaDeviceTagsRequest._(
      {required this.serialNumber, this.marker, this.maxItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        serialNumber, r'ListMfaDeviceTagsRequest', 'serialNumber');
  }

  @override
  ListMfaDeviceTagsRequest rebuild(
          void Function(ListMfaDeviceTagsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListMfaDeviceTagsRequestBuilder toBuilder() =>
      new ListMfaDeviceTagsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListMfaDeviceTagsRequest &&
        serialNumber == other.serialNumber &&
        marker == other.marker &&
        maxItems == other.maxItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serialNumber.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListMfaDeviceTagsRequestBuilder
    implements
        Builder<ListMfaDeviceTagsRequest, ListMfaDeviceTagsRequestBuilder> {
  _$ListMfaDeviceTagsRequest? _$v;

  String? _serialNumber;
  String? get serialNumber => _$this._serialNumber;
  set serialNumber(String? serialNumber) => _$this._serialNumber = serialNumber;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListMfaDeviceTagsRequestBuilder() {
    ListMfaDeviceTagsRequest._init(this);
  }

  ListMfaDeviceTagsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serialNumber = $v.serialNumber;
      _marker = $v.marker;
      _maxItems = $v.maxItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListMfaDeviceTagsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListMfaDeviceTagsRequest;
  }

  @override
  void update(void Function(ListMfaDeviceTagsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListMfaDeviceTagsRequest build() => _build();

  _$ListMfaDeviceTagsRequest _build() {
    final _$result = _$v ??
        new _$ListMfaDeviceTagsRequest._(
            serialNumber: BuiltValueNullFieldError.checkNotNull(
                serialNumber, r'ListMfaDeviceTagsRequest', 'serialNumber'),
            marker: marker,
            maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
