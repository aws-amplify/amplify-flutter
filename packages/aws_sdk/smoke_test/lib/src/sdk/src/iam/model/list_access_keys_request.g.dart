// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_access_keys_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListAccessKeysRequest extends ListAccessKeysRequest {
  @override
  final String? userName;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListAccessKeysRequest(
          [void Function(ListAccessKeysRequestBuilder)? updates]) =>
      (new ListAccessKeysRequestBuilder()..update(updates))._build();

  _$ListAccessKeysRequest._({this.userName, this.marker, this.maxItems})
      : super._();

  @override
  ListAccessKeysRequest rebuild(
          void Function(ListAccessKeysRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListAccessKeysRequestBuilder toBuilder() =>
      new ListAccessKeysRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListAccessKeysRequest &&
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

class ListAccessKeysRequestBuilder
    implements Builder<ListAccessKeysRequest, ListAccessKeysRequestBuilder> {
  _$ListAccessKeysRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListAccessKeysRequestBuilder() {
    ListAccessKeysRequest._init(this);
  }

  ListAccessKeysRequestBuilder get _$this {
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
  void replace(ListAccessKeysRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListAccessKeysRequest;
  }

  @override
  void update(void Function(ListAccessKeysRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListAccessKeysRequest build() => _build();

  _$ListAccessKeysRequest _build() {
    final _$result = _$v ??
        new _$ListAccessKeysRequest._(
            userName: userName, marker: marker, maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
