// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.update_device_status_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateDeviceStatusResponse extends UpdateDeviceStatusResponse {
  factory _$UpdateDeviceStatusResponse(
          [void Function(UpdateDeviceStatusResponseBuilder)? updates]) =>
      (new UpdateDeviceStatusResponseBuilder()..update(updates))._build();

  _$UpdateDeviceStatusResponse._() : super._();

  @override
  UpdateDeviceStatusResponse rebuild(
          void Function(UpdateDeviceStatusResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateDeviceStatusResponseBuilder toBuilder() =>
      new UpdateDeviceStatusResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateDeviceStatusResponse;
  }

  @override
  int get hashCode {
    return 449657550;
  }
}

class UpdateDeviceStatusResponseBuilder
    implements
        Builder<UpdateDeviceStatusResponse, UpdateDeviceStatusResponseBuilder> {
  _$UpdateDeviceStatusResponse? _$v;

  UpdateDeviceStatusResponseBuilder() {
    UpdateDeviceStatusResponse._init(this);
  }

  @override
  void replace(UpdateDeviceStatusResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateDeviceStatusResponse;
  }

  @override
  void update(void Function(UpdateDeviceStatusResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateDeviceStatusResponse build() => _build();

  _$UpdateDeviceStatusResponse _build() {
    final _$result = _$v ?? new _$UpdateDeviceStatusResponse._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
