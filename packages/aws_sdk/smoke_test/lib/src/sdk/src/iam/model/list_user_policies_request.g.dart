// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_user_policies_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListUserPoliciesRequest extends ListUserPoliciesRequest {
  @override
  final String userName;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListUserPoliciesRequest(
          [void Function(ListUserPoliciesRequestBuilder)? updates]) =>
      (new ListUserPoliciesRequestBuilder()..update(updates))._build();

  _$ListUserPoliciesRequest._(
      {required this.userName, this.marker, this.maxItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'ListUserPoliciesRequest', 'userName');
  }

  @override
  ListUserPoliciesRequest rebuild(
          void Function(ListUserPoliciesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListUserPoliciesRequestBuilder toBuilder() =>
      new ListUserPoliciesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListUserPoliciesRequest &&
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

class ListUserPoliciesRequestBuilder
    implements
        Builder<ListUserPoliciesRequest, ListUserPoliciesRequestBuilder> {
  _$ListUserPoliciesRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListUserPoliciesRequestBuilder() {
    ListUserPoliciesRequest._init(this);
  }

  ListUserPoliciesRequestBuilder get _$this {
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
  void replace(ListUserPoliciesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListUserPoliciesRequest;
  }

  @override
  void update(void Function(ListUserPoliciesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListUserPoliciesRequest build() => _build();

  _$ListUserPoliciesRequest _build() {
    final _$result = _$v ??
        new _$ListUserPoliciesRequest._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'ListUserPoliciesRequest', 'userName'),
            marker: marker,
            maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
