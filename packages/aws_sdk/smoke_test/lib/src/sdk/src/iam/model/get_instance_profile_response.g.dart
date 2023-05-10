// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_instance_profile_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetInstanceProfileResponse extends GetInstanceProfileResponse {
  @override
  final _i2.InstanceProfile instanceProfile;

  factory _$GetInstanceProfileResponse(
          [void Function(GetInstanceProfileResponseBuilder)? updates]) =>
      (new GetInstanceProfileResponseBuilder()..update(updates))._build();

  _$GetInstanceProfileResponse._({required this.instanceProfile}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        instanceProfile, r'GetInstanceProfileResponse', 'instanceProfile');
  }

  @override
  GetInstanceProfileResponse rebuild(
          void Function(GetInstanceProfileResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetInstanceProfileResponseBuilder toBuilder() =>
      new GetInstanceProfileResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetInstanceProfileResponse &&
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

class GetInstanceProfileResponseBuilder
    implements
        Builder<GetInstanceProfileResponse, GetInstanceProfileResponseBuilder> {
  _$GetInstanceProfileResponse? _$v;

  _i2.InstanceProfileBuilder? _instanceProfile;
  _i2.InstanceProfileBuilder get instanceProfile =>
      _$this._instanceProfile ??= new _i2.InstanceProfileBuilder();
  set instanceProfile(_i2.InstanceProfileBuilder? instanceProfile) =>
      _$this._instanceProfile = instanceProfile;

  GetInstanceProfileResponseBuilder() {
    GetInstanceProfileResponse._init(this);
  }

  GetInstanceProfileResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceProfile = $v.instanceProfile.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetInstanceProfileResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetInstanceProfileResponse;
  }

  @override
  void update(void Function(GetInstanceProfileResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetInstanceProfileResponse build() => _build();

  _$GetInstanceProfileResponse _build() {
    _$GetInstanceProfileResponse _$result;
    try {
      _$result = _$v ??
          new _$GetInstanceProfileResponse._(
              instanceProfile: instanceProfile.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceProfile';
        instanceProfile.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetInstanceProfileResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
