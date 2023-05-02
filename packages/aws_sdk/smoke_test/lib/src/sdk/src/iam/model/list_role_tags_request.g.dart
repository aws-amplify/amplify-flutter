// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_role_tags_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListRoleTagsRequest extends ListRoleTagsRequest {
  @override
  final String roleName;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListRoleTagsRequest(
          [void Function(ListRoleTagsRequestBuilder)? updates]) =>
      (new ListRoleTagsRequestBuilder()..update(updates))._build();

  _$ListRoleTagsRequest._({required this.roleName, this.marker, this.maxItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleName, r'ListRoleTagsRequest', 'roleName');
  }

  @override
  ListRoleTagsRequest rebuild(
          void Function(ListRoleTagsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListRoleTagsRequestBuilder toBuilder() =>
      new ListRoleTagsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListRoleTagsRequest &&
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

class ListRoleTagsRequestBuilder
    implements Builder<ListRoleTagsRequest, ListRoleTagsRequestBuilder> {
  _$ListRoleTagsRequest? _$v;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListRoleTagsRequestBuilder() {
    ListRoleTagsRequest._init(this);
  }

  ListRoleTagsRequestBuilder get _$this {
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
  void replace(ListRoleTagsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListRoleTagsRequest;
  }

  @override
  void update(void Function(ListRoleTagsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListRoleTagsRequest build() => _build();

  _$ListRoleTagsRequest _build() {
    final _$result = _$v ??
        new _$ListRoleTagsRequest._(
            roleName: BuiltValueNullFieldError.checkNotNull(
                roleName, r'ListRoleTagsRequest', 'roleName'),
            marker: marker,
            maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
