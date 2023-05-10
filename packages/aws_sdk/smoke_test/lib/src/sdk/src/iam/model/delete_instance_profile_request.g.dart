// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.delete_instance_profile_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteInstanceProfileRequest extends DeleteInstanceProfileRequest {
  @override
  final String instanceProfileName;

  factory _$DeleteInstanceProfileRequest(
          [void Function(DeleteInstanceProfileRequestBuilder)? updates]) =>
      (new DeleteInstanceProfileRequestBuilder()..update(updates))._build();

  _$DeleteInstanceProfileRequest._({required this.instanceProfileName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(instanceProfileName,
        r'DeleteInstanceProfileRequest', 'instanceProfileName');
  }

  @override
  DeleteInstanceProfileRequest rebuild(
          void Function(DeleteInstanceProfileRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteInstanceProfileRequestBuilder toBuilder() =>
      new DeleteInstanceProfileRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteInstanceProfileRequest &&
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

class DeleteInstanceProfileRequestBuilder
    implements
        Builder<DeleteInstanceProfileRequest,
            DeleteInstanceProfileRequestBuilder> {
  _$DeleteInstanceProfileRequest? _$v;

  String? _instanceProfileName;
  String? get instanceProfileName => _$this._instanceProfileName;
  set instanceProfileName(String? instanceProfileName) =>
      _$this._instanceProfileName = instanceProfileName;

  DeleteInstanceProfileRequestBuilder() {
    DeleteInstanceProfileRequest._init(this);
  }

  DeleteInstanceProfileRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceProfileName = $v.instanceProfileName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteInstanceProfileRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteInstanceProfileRequest;
  }

  @override
  void update(void Function(DeleteInstanceProfileRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteInstanceProfileRequest build() => _build();

  _$DeleteInstanceProfileRequest _build() {
    final _$result = _$v ??
        new _$DeleteInstanceProfileRequest._(
            instanceProfileName: BuiltValueNullFieldError.checkNotNull(
                instanceProfileName,
                r'DeleteInstanceProfileRequest',
                'instanceProfileName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
