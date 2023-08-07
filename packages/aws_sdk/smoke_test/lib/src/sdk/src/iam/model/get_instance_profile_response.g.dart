// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_instance_profile_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetInstanceProfileResponse extends GetInstanceProfileResponse {
  @override
  final InstanceProfile instanceProfile;

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

  InstanceProfileBuilder? _instanceProfile;
  InstanceProfileBuilder get instanceProfile =>
      _$this._instanceProfile ??= new InstanceProfileBuilder();
  set instanceProfile(InstanceProfileBuilder? instanceProfile) =>
      _$this._instanceProfile = instanceProfile;

  GetInstanceProfileResponseBuilder();

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
