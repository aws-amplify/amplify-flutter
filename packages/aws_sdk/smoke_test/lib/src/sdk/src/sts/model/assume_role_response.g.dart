// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.sts.model.assume_role_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssumeRoleResponse extends AssumeRoleResponse {
  @override
  final _i2.Credentials? credentials;
  @override
  final _i3.AssumedRoleUser? assumedRoleUser;
  @override
  final int? packedPolicySize;
  @override
  final String? sourceIdentity;

  factory _$AssumeRoleResponse(
          [void Function(AssumeRoleResponseBuilder)? updates]) =>
      (new AssumeRoleResponseBuilder()..update(updates))._build();

  _$AssumeRoleResponse._(
      {this.credentials,
      this.assumedRoleUser,
      this.packedPolicySize,
      this.sourceIdentity})
      : super._();

  @override
  AssumeRoleResponse rebuild(
          void Function(AssumeRoleResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssumeRoleResponseBuilder toBuilder() =>
      new AssumeRoleResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssumeRoleResponse &&
        credentials == other.credentials &&
        assumedRoleUser == other.assumedRoleUser &&
        packedPolicySize == other.packedPolicySize &&
        sourceIdentity == other.sourceIdentity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, credentials.hashCode);
    _$hash = $jc(_$hash, assumedRoleUser.hashCode);
    _$hash = $jc(_$hash, packedPolicySize.hashCode);
    _$hash = $jc(_$hash, sourceIdentity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssumeRoleResponseBuilder
    implements Builder<AssumeRoleResponse, AssumeRoleResponseBuilder> {
  _$AssumeRoleResponse? _$v;

  _i2.CredentialsBuilder? _credentials;
  _i2.CredentialsBuilder get credentials =>
      _$this._credentials ??= new _i2.CredentialsBuilder();
  set credentials(_i2.CredentialsBuilder? credentials) =>
      _$this._credentials = credentials;

  _i3.AssumedRoleUserBuilder? _assumedRoleUser;
  _i3.AssumedRoleUserBuilder get assumedRoleUser =>
      _$this._assumedRoleUser ??= new _i3.AssumedRoleUserBuilder();
  set assumedRoleUser(_i3.AssumedRoleUserBuilder? assumedRoleUser) =>
      _$this._assumedRoleUser = assumedRoleUser;

  int? _packedPolicySize;
  int? get packedPolicySize => _$this._packedPolicySize;
  set packedPolicySize(int? packedPolicySize) =>
      _$this._packedPolicySize = packedPolicySize;

  String? _sourceIdentity;
  String? get sourceIdentity => _$this._sourceIdentity;
  set sourceIdentity(String? sourceIdentity) =>
      _$this._sourceIdentity = sourceIdentity;

  AssumeRoleResponseBuilder() {
    AssumeRoleResponse._init(this);
  }

  AssumeRoleResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credentials = $v.credentials?.toBuilder();
      _assumedRoleUser = $v.assumedRoleUser?.toBuilder();
      _packedPolicySize = $v.packedPolicySize;
      _sourceIdentity = $v.sourceIdentity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssumeRoleResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssumeRoleResponse;
  }

  @override
  void update(void Function(AssumeRoleResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssumeRoleResponse build() => _build();

  _$AssumeRoleResponse _build() {
    _$AssumeRoleResponse _$result;
    try {
      _$result = _$v ??
          new _$AssumeRoleResponse._(
              credentials: _credentials?.build(),
              assumedRoleUser: _assumedRoleUser?.build(),
              packedPolicySize: packedPolicySize,
              sourceIdentity: sourceIdentity);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'credentials';
        _credentials?.build();
        _$failedField = 'assumedRoleUser';
        _assumedRoleUser?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssumeRoleResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
