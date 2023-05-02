// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.update_role_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateRoleRequest extends UpdateRoleRequest {
  @override
  final String roleName;
  @override
  final String? description;
  @override
  final int? maxSessionDuration;

  factory _$UpdateRoleRequest(
          [void Function(UpdateRoleRequestBuilder)? updates]) =>
      (new UpdateRoleRequestBuilder()..update(updates))._build();

  _$UpdateRoleRequest._(
      {required this.roleName, this.description, this.maxSessionDuration})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleName, r'UpdateRoleRequest', 'roleName');
  }

  @override
  UpdateRoleRequest rebuild(void Function(UpdateRoleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateRoleRequestBuilder toBuilder() =>
      new UpdateRoleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateRoleRequest &&
        roleName == other.roleName &&
        description == other.description &&
        maxSessionDuration == other.maxSessionDuration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roleName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, maxSessionDuration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateRoleRequestBuilder
    implements Builder<UpdateRoleRequest, UpdateRoleRequestBuilder> {
  _$UpdateRoleRequest? _$v;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _maxSessionDuration;
  int? get maxSessionDuration => _$this._maxSessionDuration;
  set maxSessionDuration(int? maxSessionDuration) =>
      _$this._maxSessionDuration = maxSessionDuration;

  UpdateRoleRequestBuilder() {
    UpdateRoleRequest._init(this);
  }

  UpdateRoleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleName = $v.roleName;
      _description = $v.description;
      _maxSessionDuration = $v.maxSessionDuration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateRoleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateRoleRequest;
  }

  @override
  void update(void Function(UpdateRoleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateRoleRequest build() => _build();

  _$UpdateRoleRequest _build() {
    final _$result = _$v ??
        new _$UpdateRoleRequest._(
            roleName: BuiltValueNullFieldError.checkNotNull(
                roleName, r'UpdateRoleRequest', 'roleName'),
            description: description,
            maxSessionDuration: maxSessionDuration);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
