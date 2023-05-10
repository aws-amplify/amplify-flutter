// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_instance_profiles_for_role_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListInstanceProfilesForRoleRequest
    extends ListInstanceProfilesForRoleRequest {
  @override
  final String roleName;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListInstanceProfilesForRoleRequest(
          [void Function(ListInstanceProfilesForRoleRequestBuilder)?
              updates]) =>
      (new ListInstanceProfilesForRoleRequestBuilder()..update(updates))
          ._build();

  _$ListInstanceProfilesForRoleRequest._(
      {required this.roleName, this.marker, this.maxItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleName, r'ListInstanceProfilesForRoleRequest', 'roleName');
  }

  @override
  ListInstanceProfilesForRoleRequest rebuild(
          void Function(ListInstanceProfilesForRoleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListInstanceProfilesForRoleRequestBuilder toBuilder() =>
      new ListInstanceProfilesForRoleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListInstanceProfilesForRoleRequest &&
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

class ListInstanceProfilesForRoleRequestBuilder
    implements
        Builder<ListInstanceProfilesForRoleRequest,
            ListInstanceProfilesForRoleRequestBuilder> {
  _$ListInstanceProfilesForRoleRequest? _$v;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListInstanceProfilesForRoleRequestBuilder() {
    ListInstanceProfilesForRoleRequest._init(this);
  }

  ListInstanceProfilesForRoleRequestBuilder get _$this {
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
  void replace(ListInstanceProfilesForRoleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListInstanceProfilesForRoleRequest;
  }

  @override
  void update(
      void Function(ListInstanceProfilesForRoleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListInstanceProfilesForRoleRequest build() => _build();

  _$ListInstanceProfilesForRoleRequest _build() {
    final _$result = _$v ??
        new _$ListInstanceProfilesForRoleRequest._(
            roleName: BuiltValueNullFieldError.checkNotNull(
                roleName, r'ListInstanceProfilesForRoleRequest', 'roleName'),
            marker: marker,
            maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
