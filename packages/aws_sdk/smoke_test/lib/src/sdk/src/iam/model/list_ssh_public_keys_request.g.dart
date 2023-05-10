// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_ssh_public_keys_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListSshPublicKeysRequest extends ListSshPublicKeysRequest {
  @override
  final String? userName;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListSshPublicKeysRequest(
          [void Function(ListSshPublicKeysRequestBuilder)? updates]) =>
      (new ListSshPublicKeysRequestBuilder()..update(updates))._build();

  _$ListSshPublicKeysRequest._({this.userName, this.marker, this.maxItems})
      : super._();

  @override
  ListSshPublicKeysRequest rebuild(
          void Function(ListSshPublicKeysRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListSshPublicKeysRequestBuilder toBuilder() =>
      new ListSshPublicKeysRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListSshPublicKeysRequest &&
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

class ListSshPublicKeysRequestBuilder
    implements
        Builder<ListSshPublicKeysRequest, ListSshPublicKeysRequestBuilder> {
  _$ListSshPublicKeysRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListSshPublicKeysRequestBuilder() {
    ListSshPublicKeysRequest._init(this);
  }

  ListSshPublicKeysRequestBuilder get _$this {
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
  void replace(ListSshPublicKeysRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListSshPublicKeysRequest;
  }

  @override
  void update(void Function(ListSshPublicKeysRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListSshPublicKeysRequest build() => _build();

  _$ListSshPublicKeysRequest _build() {
    final _$result = _$v ??
        new _$ListSshPublicKeysRequest._(
            userName: userName, marker: marker, maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
