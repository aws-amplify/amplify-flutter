// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_instance_profile_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetInstanceProfileRequest extends GetInstanceProfileRequest {
  @override
  final String instanceProfileName;

  factory _$GetInstanceProfileRequest(
          [void Function(GetInstanceProfileRequestBuilder)? updates]) =>
      (new GetInstanceProfileRequestBuilder()..update(updates))._build();

  _$GetInstanceProfileRequest._({required this.instanceProfileName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(instanceProfileName,
        r'GetInstanceProfileRequest', 'instanceProfileName');
  }

  @override
  GetInstanceProfileRequest rebuild(
          void Function(GetInstanceProfileRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetInstanceProfileRequestBuilder toBuilder() =>
      new GetInstanceProfileRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetInstanceProfileRequest &&
        instanceProfileName == other.instanceProfileName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceProfileName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetInstanceProfileRequestBuilder
    implements
        Builder<GetInstanceProfileRequest, GetInstanceProfileRequestBuilder> {
  _$GetInstanceProfileRequest? _$v;

  String? _instanceProfileName;
  String? get instanceProfileName => _$this._instanceProfileName;
  set instanceProfileName(String? instanceProfileName) =>
      _$this._instanceProfileName = instanceProfileName;

  GetInstanceProfileRequestBuilder() {
    GetInstanceProfileRequest._init(this);
  }

  GetInstanceProfileRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceProfileName = $v.instanceProfileName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetInstanceProfileRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetInstanceProfileRequest;
  }

  @override
  void update(void Function(GetInstanceProfileRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetInstanceProfileRequest build() => _build();

  _$GetInstanceProfileRequest _build() {
    final _$result = _$v ??
        new _$GetInstanceProfileRequest._(
            instanceProfileName: BuiltValueNullFieldError.checkNotNull(
                instanceProfileName,
                r'GetInstanceProfileRequest',
                'instanceProfileName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
