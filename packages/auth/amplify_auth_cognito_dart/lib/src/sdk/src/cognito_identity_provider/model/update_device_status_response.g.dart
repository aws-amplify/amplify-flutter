// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.update_device_status_response;

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
