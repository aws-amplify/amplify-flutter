// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.create_instance_profile_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateInstanceProfileResponse extends CreateInstanceProfileResponse {
  @override
  final _i2.InstanceProfile instanceProfile;

  factory _$CreateInstanceProfileResponse(
          [void Function(CreateInstanceProfileResponseBuilder)? updates]) =>
      (new CreateInstanceProfileResponseBuilder()..update(updates))._build();

  _$CreateInstanceProfileResponse._({required this.instanceProfile})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        instanceProfile, r'CreateInstanceProfileResponse', 'instanceProfile');
  }

  @override
  CreateInstanceProfileResponse rebuild(
          void Function(CreateInstanceProfileResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateInstanceProfileResponseBuilder toBuilder() =>
      new CreateInstanceProfileResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateInstanceProfileResponse &&
        instanceProfile == other.instanceProfile;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceProfile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateInstanceProfileResponseBuilder
    implements
        Builder<CreateInstanceProfileResponse,
            CreateInstanceProfileResponseBuilder> {
  _$CreateInstanceProfileResponse? _$v;

  _i2.InstanceProfileBuilder? _instanceProfile;
  _i2.InstanceProfileBuilder get instanceProfile =>
      _$this._instanceProfile ??= new _i2.InstanceProfileBuilder();
  set instanceProfile(_i2.InstanceProfileBuilder? instanceProfile) =>
      _$this._instanceProfile = instanceProfile;

  CreateInstanceProfileResponseBuilder() {
    CreateInstanceProfileResponse._init(this);
  }

  CreateInstanceProfileResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceProfile = $v.instanceProfile.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateInstanceProfileResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateInstanceProfileResponse;
  }

  @override
  void update(void Function(CreateInstanceProfileResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateInstanceProfileResponse build() => _build();

  _$CreateInstanceProfileResponse _build() {
    _$CreateInstanceProfileResponse _$result;
    try {
      _$result = _$v ??
          new _$CreateInstanceProfileResponse._(
              instanceProfile: instanceProfile.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceProfile';
        instanceProfile.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateInstanceProfileResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
