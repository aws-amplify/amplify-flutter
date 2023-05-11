// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.update_role_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateRoleResponse extends UpdateRoleResponse {
  factory _$UpdateRoleResponse(
          [void Function(UpdateRoleResponseBuilder)? updates]) =>
      (new UpdateRoleResponseBuilder()..update(updates))._build();

  _$UpdateRoleResponse._() : super._();

  @override
  UpdateRoleResponse rebuild(
          void Function(UpdateRoleResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateRoleResponseBuilder toBuilder() =>
      new UpdateRoleResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateRoleResponse;
  }

  @override
  int get hashCode {
    return 690961510;
  }
}

class UpdateRoleResponseBuilder
    implements Builder<UpdateRoleResponse, UpdateRoleResponseBuilder> {
  _$UpdateRoleResponse? _$v;

  UpdateRoleResponseBuilder() {
    UpdateRoleResponse._init(this);
  }

  @override
  void replace(UpdateRoleResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateRoleResponse;
  }

  @override
  void update(void Function(UpdateRoleResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateRoleResponse build() => _build();

  _$UpdateRoleResponse _build() {
    final _$result = _$v ?? new _$UpdateRoleResponse._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
