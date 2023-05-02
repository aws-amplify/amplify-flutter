// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.create_policy_version_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePolicyVersionResponse extends CreatePolicyVersionResponse {
  @override
  final _i2.PolicyVersion? policyVersion;

  factory _$CreatePolicyVersionResponse(
          [void Function(CreatePolicyVersionResponseBuilder)? updates]) =>
      (new CreatePolicyVersionResponseBuilder()..update(updates))._build();

  _$CreatePolicyVersionResponse._({this.policyVersion}) : super._();

  @override
  CreatePolicyVersionResponse rebuild(
          void Function(CreatePolicyVersionResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePolicyVersionResponseBuilder toBuilder() =>
      new CreatePolicyVersionResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePolicyVersionResponse &&
        policyVersion == other.policyVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreatePolicyVersionResponseBuilder
    implements
        Builder<CreatePolicyVersionResponse,
            CreatePolicyVersionResponseBuilder> {
  _$CreatePolicyVersionResponse? _$v;

  _i2.PolicyVersionBuilder? _policyVersion;
  _i2.PolicyVersionBuilder get policyVersion =>
      _$this._policyVersion ??= new _i2.PolicyVersionBuilder();
  set policyVersion(_i2.PolicyVersionBuilder? policyVersion) =>
      _$this._policyVersion = policyVersion;

  CreatePolicyVersionResponseBuilder() {
    CreatePolicyVersionResponse._init(this);
  }

  CreatePolicyVersionResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyVersion = $v.policyVersion?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePolicyVersionResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreatePolicyVersionResponse;
  }

  @override
  void update(void Function(CreatePolicyVersionResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePolicyVersionResponse build() => _build();

  _$CreatePolicyVersionResponse _build() {
    _$CreatePolicyVersionResponse _$result;
    try {
      _$result = _$v ??
          new _$CreatePolicyVersionResponse._(
              policyVersion: _policyVersion?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'policyVersion';
        _policyVersion?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreatePolicyVersionResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
