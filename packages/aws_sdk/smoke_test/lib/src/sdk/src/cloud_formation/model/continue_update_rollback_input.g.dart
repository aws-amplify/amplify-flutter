// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.continue_update_rollback_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ContinueUpdateRollbackInput extends ContinueUpdateRollbackInput {
  @override
  final String stackName;
  @override
  final String? roleArn;
  @override
  final _i3.BuiltList<String>? resourcesToSkip;
  @override
  final String? clientRequestToken;

  factory _$ContinueUpdateRollbackInput(
          [void Function(ContinueUpdateRollbackInputBuilder)? updates]) =>
      (new ContinueUpdateRollbackInputBuilder()..update(updates))._build();

  _$ContinueUpdateRollbackInput._(
      {required this.stackName,
      this.roleArn,
      this.resourcesToSkip,
      this.clientRequestToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackName, r'ContinueUpdateRollbackInput', 'stackName');
  }

  @override
  ContinueUpdateRollbackInput rebuild(
          void Function(ContinueUpdateRollbackInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContinueUpdateRollbackInputBuilder toBuilder() =>
      new ContinueUpdateRollbackInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContinueUpdateRollbackInput &&
        stackName == other.stackName &&
        roleArn == other.roleArn &&
        resourcesToSkip == other.resourcesToSkip &&
        clientRequestToken == other.clientRequestToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, roleArn.hashCode);
    _$hash = $jc(_$hash, resourcesToSkip.hashCode);
    _$hash = $jc(_$hash, clientRequestToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ContinueUpdateRollbackInputBuilder
    implements
        Builder<ContinueUpdateRollbackInput,
            ContinueUpdateRollbackInputBuilder> {
  _$ContinueUpdateRollbackInput? _$v;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  String? _roleArn;
  String? get roleArn => _$this._roleArn;
  set roleArn(String? roleArn) => _$this._roleArn = roleArn;

  _i3.ListBuilder<String>? _resourcesToSkip;
  _i3.ListBuilder<String> get resourcesToSkip =>
      _$this._resourcesToSkip ??= new _i3.ListBuilder<String>();
  set resourcesToSkip(_i3.ListBuilder<String>? resourcesToSkip) =>
      _$this._resourcesToSkip = resourcesToSkip;

  String? _clientRequestToken;
  String? get clientRequestToken => _$this._clientRequestToken;
  set clientRequestToken(String? clientRequestToken) =>
      _$this._clientRequestToken = clientRequestToken;

  ContinueUpdateRollbackInputBuilder() {
    ContinueUpdateRollbackInput._init(this);
  }

  ContinueUpdateRollbackInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackName = $v.stackName;
      _roleArn = $v.roleArn;
      _resourcesToSkip = $v.resourcesToSkip?.toBuilder();
      _clientRequestToken = $v.clientRequestToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContinueUpdateRollbackInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ContinueUpdateRollbackInput;
  }

  @override
  void update(void Function(ContinueUpdateRollbackInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContinueUpdateRollbackInput build() => _build();

  _$ContinueUpdateRollbackInput _build() {
    _$ContinueUpdateRollbackInput _$result;
    try {
      _$result = _$v ??
          new _$ContinueUpdateRollbackInput._(
              stackName: BuiltValueNullFieldError.checkNotNull(
                  stackName, r'ContinueUpdateRollbackInput', 'stackName'),
              roleArn: roleArn,
              resourcesToSkip: _resourcesToSkip?.build(),
              clientRequestToken: clientRequestToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourcesToSkip';
        _resourcesToSkip?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ContinueUpdateRollbackInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
