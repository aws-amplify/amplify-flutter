// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_attached_role_policies_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListAttachedRolePoliciesRequest
    extends ListAttachedRolePoliciesRequest {
  @override
  final String roleName;
  @override
  final String? pathPrefix;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListAttachedRolePoliciesRequest(
          [void Function(ListAttachedRolePoliciesRequestBuilder)? updates]) =>
      (new ListAttachedRolePoliciesRequestBuilder()..update(updates))._build();

  _$ListAttachedRolePoliciesRequest._(
      {required this.roleName, this.pathPrefix, this.marker, this.maxItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleName, r'ListAttachedRolePoliciesRequest', 'roleName');
  }

  @override
  ListAttachedRolePoliciesRequest rebuild(
          void Function(ListAttachedRolePoliciesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListAttachedRolePoliciesRequestBuilder toBuilder() =>
      new ListAttachedRolePoliciesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListAttachedRolePoliciesRequest &&
        roleName == other.roleName &&
        pathPrefix == other.pathPrefix &&
        marker == other.marker &&
        maxItems == other.maxItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roleName.hashCode);
    _$hash = $jc(_$hash, pathPrefix.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListAttachedRolePoliciesRequestBuilder
    implements
        Builder<ListAttachedRolePoliciesRequest,
            ListAttachedRolePoliciesRequestBuilder> {
  _$ListAttachedRolePoliciesRequest? _$v;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  String? _pathPrefix;
  String? get pathPrefix => _$this._pathPrefix;
  set pathPrefix(String? pathPrefix) => _$this._pathPrefix = pathPrefix;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListAttachedRolePoliciesRequestBuilder() {
    ListAttachedRolePoliciesRequest._init(this);
  }

  ListAttachedRolePoliciesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleName = $v.roleName;
      _pathPrefix = $v.pathPrefix;
      _marker = $v.marker;
      _maxItems = $v.maxItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListAttachedRolePoliciesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListAttachedRolePoliciesRequest;
  }

  @override
  void update(void Function(ListAttachedRolePoliciesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListAttachedRolePoliciesRequest build() => _build();

  _$ListAttachedRolePoliciesRequest _build() {
    final _$result = _$v ??
        new _$ListAttachedRolePoliciesRequest._(
            roleName: BuiltValueNullFieldError.checkNotNull(
                roleName, r'ListAttachedRolePoliciesRequest', 'roleName'),
            pathPrefix: pathPrefix,
            marker: marker,
            maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
