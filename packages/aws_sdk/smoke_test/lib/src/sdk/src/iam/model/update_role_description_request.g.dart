// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.update_role_description_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateRoleDescriptionRequest extends UpdateRoleDescriptionRequest {
  @override
  final String roleName;
  @override
  final String description;

  factory _$UpdateRoleDescriptionRequest(
          [void Function(UpdateRoleDescriptionRequestBuilder)? updates]) =>
      (new UpdateRoleDescriptionRequestBuilder()..update(updates))._build();

  _$UpdateRoleDescriptionRequest._(
      {required this.roleName, required this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleName, r'UpdateRoleDescriptionRequest', 'roleName');
    BuiltValueNullFieldError.checkNotNull(
        description, r'UpdateRoleDescriptionRequest', 'description');
  }

  @override
  UpdateRoleDescriptionRequest rebuild(
          void Function(UpdateRoleDescriptionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateRoleDescriptionRequestBuilder toBuilder() =>
      new UpdateRoleDescriptionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateRoleDescriptionRequest &&
        roleName == other.roleName &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roleName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateRoleDescriptionRequestBuilder
    implements
        Builder<UpdateRoleDescriptionRequest,
            UpdateRoleDescriptionRequestBuilder> {
  _$UpdateRoleDescriptionRequest? _$v;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  UpdateRoleDescriptionRequestBuilder() {
    UpdateRoleDescriptionRequest._init(this);
  }

  UpdateRoleDescriptionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleName = $v.roleName;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateRoleDescriptionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateRoleDescriptionRequest;
  }

  @override
  void update(void Function(UpdateRoleDescriptionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateRoleDescriptionRequest build() => _build();

  _$UpdateRoleDescriptionRequest _build() {
    final _$result = _$v ??
        new _$UpdateRoleDescriptionRequest._(
            roleName: BuiltValueNullFieldError.checkNotNull(
                roleName, r'UpdateRoleDescriptionRequest', 'roleName'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'UpdateRoleDescriptionRequest', 'description'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
