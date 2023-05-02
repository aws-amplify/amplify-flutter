// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_role_policies_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListRolePoliciesRequest extends ListRolePoliciesRequest {
  @override
  final String roleName;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListRolePoliciesRequest(
          [void Function(ListRolePoliciesRequestBuilder)? updates]) =>
      (new ListRolePoliciesRequestBuilder()..update(updates))._build();

  _$ListRolePoliciesRequest._(
      {required this.roleName, this.marker, this.maxItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleName, r'ListRolePoliciesRequest', 'roleName');
  }

  @override
  ListRolePoliciesRequest rebuild(
          void Function(ListRolePoliciesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListRolePoliciesRequestBuilder toBuilder() =>
      new ListRolePoliciesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListRolePoliciesRequest &&
        roleName == other.roleName &&
        marker == other.marker &&
        maxItems == other.maxItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roleName.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListRolePoliciesRequestBuilder
    implements
        Builder<ListRolePoliciesRequest, ListRolePoliciesRequestBuilder> {
  _$ListRolePoliciesRequest? _$v;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListRolePoliciesRequestBuilder() {
    ListRolePoliciesRequest._init(this);
  }

  ListRolePoliciesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleName = $v.roleName;
      _marker = $v.marker;
      _maxItems = $v.maxItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListRolePoliciesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListRolePoliciesRequest;
  }

  @override
  void update(void Function(ListRolePoliciesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListRolePoliciesRequest build() => _build();

  _$ListRolePoliciesRequest _build() {
    final _$result = _$v ??
        new _$ListRolePoliciesRequest._(
            roleName: BuiltValueNullFieldError.checkNotNull(
                roleName, r'ListRolePoliciesRequest', 'roleName'),
            marker: marker,
            maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
