// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.remove_role_from_instance_profile_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemoveRoleFromInstanceProfileRequest
    extends RemoveRoleFromInstanceProfileRequest {
  @override
  final String instanceProfileName;
  @override
  final String roleName;

  factory _$RemoveRoleFromInstanceProfileRequest(
          [void Function(RemoveRoleFromInstanceProfileRequestBuilder)?
              updates]) =>
      (new RemoveRoleFromInstanceProfileRequestBuilder()..update(updates))
          ._build();

  _$RemoveRoleFromInstanceProfileRequest._(
      {required this.instanceProfileName, required this.roleName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(instanceProfileName,
        r'RemoveRoleFromInstanceProfileRequest', 'instanceProfileName');
    BuiltValueNullFieldError.checkNotNull(
        roleName, r'RemoveRoleFromInstanceProfileRequest', 'roleName');
  }

  @override
  RemoveRoleFromInstanceProfileRequest rebuild(
          void Function(RemoveRoleFromInstanceProfileRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveRoleFromInstanceProfileRequestBuilder toBuilder() =>
      new RemoveRoleFromInstanceProfileRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveRoleFromInstanceProfileRequest &&
        instanceProfileName == other.instanceProfileName &&
        roleName == other.roleName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceProfileName.hashCode);
    _$hash = $jc(_$hash, roleName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RemoveRoleFromInstanceProfileRequestBuilder
    implements
        Builder<RemoveRoleFromInstanceProfileRequest,
            RemoveRoleFromInstanceProfileRequestBuilder> {
  _$RemoveRoleFromInstanceProfileRequest? _$v;

  String? _instanceProfileName;
  String? get instanceProfileName => _$this._instanceProfileName;
  set instanceProfileName(String? instanceProfileName) =>
      _$this._instanceProfileName = instanceProfileName;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  RemoveRoleFromInstanceProfileRequestBuilder() {
    RemoveRoleFromInstanceProfileRequest._init(this);
  }

  RemoveRoleFromInstanceProfileRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceProfileName = $v.instanceProfileName;
      _roleName = $v.roleName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveRoleFromInstanceProfileRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemoveRoleFromInstanceProfileRequest;
  }

  @override
  void update(
      void Function(RemoveRoleFromInstanceProfileRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RemoveRoleFromInstanceProfileRequest build() => _build();

  _$RemoveRoleFromInstanceProfileRequest _build() {
    final _$result = _$v ??
        new _$RemoveRoleFromInstanceProfileRequest._(
            instanceProfileName: BuiltValueNullFieldError.checkNotNull(
                instanceProfileName,
                r'RemoveRoleFromInstanceProfileRequest',
                'instanceProfileName'),
            roleName: BuiltValueNullFieldError.checkNotNull(
                roleName, r'RemoveRoleFromInstanceProfileRequest', 'roleName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
