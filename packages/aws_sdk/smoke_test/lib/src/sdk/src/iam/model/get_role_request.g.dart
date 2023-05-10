// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_role_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetRoleRequest extends GetRoleRequest {
  @override
  final String roleName;

  factory _$GetRoleRequest([void Function(GetRoleRequestBuilder)? updates]) =>
      (new GetRoleRequestBuilder()..update(updates))._build();

  _$GetRoleRequest._({required this.roleName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleName, r'GetRoleRequest', 'roleName');
  }

  @override
  GetRoleRequest rebuild(void Function(GetRoleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRoleRequestBuilder toBuilder() =>
      new GetRoleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRoleRequest && roleName == other.roleName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roleName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetRoleRequestBuilder
    implements Builder<GetRoleRequest, GetRoleRequestBuilder> {
  _$GetRoleRequest? _$v;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  GetRoleRequestBuilder() {
    GetRoleRequest._init(this);
  }

  GetRoleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleName = $v.roleName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetRoleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRoleRequest;
  }

  @override
  void update(void Function(GetRoleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRoleRequest build() => _build();

  _$GetRoleRequest _build() {
    final _$result = _$v ??
        new _$GetRoleRequest._(
            roleName: BuiltValueNullFieldError.checkNotNull(
                roleName, r'GetRoleRequest', 'roleName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
