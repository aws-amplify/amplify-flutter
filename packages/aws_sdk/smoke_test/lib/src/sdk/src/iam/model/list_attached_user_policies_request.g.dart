// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_attached_user_policies_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListAttachedUserPoliciesRequest
    extends ListAttachedUserPoliciesRequest {
  @override
  final String userName;
  @override
  final String? pathPrefix;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListAttachedUserPoliciesRequest(
          [void Function(ListAttachedUserPoliciesRequestBuilder)? updates]) =>
      (new ListAttachedUserPoliciesRequestBuilder()..update(updates))._build();

  _$ListAttachedUserPoliciesRequest._(
      {required this.userName, this.pathPrefix, this.marker, this.maxItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'ListAttachedUserPoliciesRequest', 'userName');
  }

  @override
  ListAttachedUserPoliciesRequest rebuild(
          void Function(ListAttachedUserPoliciesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListAttachedUserPoliciesRequestBuilder toBuilder() =>
      new ListAttachedUserPoliciesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListAttachedUserPoliciesRequest &&
        userName == other.userName &&
        pathPrefix == other.pathPrefix &&
        marker == other.marker &&
        maxItems == other.maxItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, pathPrefix.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListAttachedUserPoliciesRequestBuilder
    implements
        Builder<ListAttachedUserPoliciesRequest,
            ListAttachedUserPoliciesRequestBuilder> {
  _$ListAttachedUserPoliciesRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _pathPrefix;
  String? get pathPrefix => _$this._pathPrefix;
  set pathPrefix(String? pathPrefix) => _$this._pathPrefix = pathPrefix;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListAttachedUserPoliciesRequestBuilder() {
    ListAttachedUserPoliciesRequest._init(this);
  }

  ListAttachedUserPoliciesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _pathPrefix = $v.pathPrefix;
      _marker = $v.marker;
      _maxItems = $v.maxItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListAttachedUserPoliciesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListAttachedUserPoliciesRequest;
  }

  @override
  void update(void Function(ListAttachedUserPoliciesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListAttachedUserPoliciesRequest build() => _build();

  _$ListAttachedUserPoliciesRequest _build() {
    final _$result = _$v ??
        new _$ListAttachedUserPoliciesRequest._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'ListAttachedUserPoliciesRequest', 'userName'),
            pathPrefix: pathPrefix,
            marker: marker,
            maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
