// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_user_tags_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListUserTagsRequest extends ListUserTagsRequest {
  @override
  final String userName;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListUserTagsRequest(
          [void Function(ListUserTagsRequestBuilder)? updates]) =>
      (new ListUserTagsRequestBuilder()..update(updates))._build();

  _$ListUserTagsRequest._({required this.userName, this.marker, this.maxItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'ListUserTagsRequest', 'userName');
  }

  @override
  ListUserTagsRequest rebuild(
          void Function(ListUserTagsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListUserTagsRequestBuilder toBuilder() =>
      new ListUserTagsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListUserTagsRequest &&
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

class ListUserTagsRequestBuilder
    implements Builder<ListUserTagsRequest, ListUserTagsRequestBuilder> {
  _$ListUserTagsRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListUserTagsRequestBuilder() {
    ListUserTagsRequest._init(this);
  }

  ListUserTagsRequestBuilder get _$this {
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
  void replace(ListUserTagsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListUserTagsRequest;
  }

  @override
  void update(void Function(ListUserTagsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListUserTagsRequest build() => _build();

  _$ListUserTagsRequest _build() {
    final _$result = _$v ??
        new _$ListUserTagsRequest._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'ListUserTagsRequest', 'userName'),
            marker: marker,
            maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
