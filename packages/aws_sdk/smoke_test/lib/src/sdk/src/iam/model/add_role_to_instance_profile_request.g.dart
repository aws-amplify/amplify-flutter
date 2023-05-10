// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.add_role_to_instance_profile_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddRoleToInstanceProfileRequest
    extends AddRoleToInstanceProfileRequest {
  @override
  final String instanceProfileName;
  @override
  final String roleName;

  factory _$AddRoleToInstanceProfileRequest(
          [void Function(AddRoleToInstanceProfileRequestBuilder)? updates]) =>
      (new AddRoleToInstanceProfileRequestBuilder()..update(updates))._build();

  _$AddRoleToInstanceProfileRequest._(
      {required this.instanceProfileName, required this.roleName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(instanceProfileName,
        r'AddRoleToInstanceProfileRequest', 'instanceProfileName');
    BuiltValueNullFieldError.checkNotNull(
        roleName, r'AddRoleToInstanceProfileRequest', 'roleName');
  }

  @override
  AddRoleToInstanceProfileRequest rebuild(
          void Function(AddRoleToInstanceProfileRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddRoleToInstanceProfileRequestBuilder toBuilder() =>
      new AddRoleToInstanceProfileRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddRoleToInstanceProfileRequest &&
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

class AddRoleToInstanceProfileRequestBuilder
    implements
        Builder<AddRoleToInstanceProfileRequest,
            AddRoleToInstanceProfileRequestBuilder> {
  _$AddRoleToInstanceProfileRequest? _$v;

  String? _instanceProfileName;
  String? get instanceProfileName => _$this._instanceProfileName;
  set instanceProfileName(String? instanceProfileName) =>
      _$this._instanceProfileName = instanceProfileName;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  AddRoleToInstanceProfileRequestBuilder() {
    AddRoleToInstanceProfileRequest._init(this);
  }

  AddRoleToInstanceProfileRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceProfileName = $v.instanceProfileName;
      _roleName = $v.roleName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddRoleToInstanceProfileRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddRoleToInstanceProfileRequest;
  }

  @override
  void update(void Function(AddRoleToInstanceProfileRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddRoleToInstanceProfileRequest build() => _build();

  _$AddRoleToInstanceProfileRequest _build() {
    final _$result = _$v ??
        new _$AddRoleToInstanceProfileRequest._(
            instanceProfileName: BuiltValueNullFieldError.checkNotNull(
                instanceProfileName,
                r'AddRoleToInstanceProfileRequest',
                'instanceProfileName'),
            roleName: BuiltValueNullFieldError.checkNotNull(
                roleName, r'AddRoleToInstanceProfileRequest', 'roleName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
