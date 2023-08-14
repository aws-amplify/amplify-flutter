// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorize_security_group_ingress_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthorizeSecurityGroupIngressResult
    extends AuthorizeSecurityGroupIngressResult {
  @override
  final bool return_;
  @override
  final _i2.BuiltList<SecurityGroupRule>? securityGroupRules;

  factory _$AuthorizeSecurityGroupIngressResult(
          [void Function(AuthorizeSecurityGroupIngressResultBuilder)?
              updates]) =>
      (new AuthorizeSecurityGroupIngressResultBuilder()..update(updates))
          ._build();

  _$AuthorizeSecurityGroupIngressResult._(
      {required this.return_, this.securityGroupRules})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'AuthorizeSecurityGroupIngressResult', 'return_');
  }

  @override
  AuthorizeSecurityGroupIngressResult rebuild(
          void Function(AuthorizeSecurityGroupIngressResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorizeSecurityGroupIngressResultBuilder toBuilder() =>
      new AuthorizeSecurityGroupIngressResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthorizeSecurityGroupIngressResult &&
        return_ == other.return_ &&
        securityGroupRules == other.securityGroupRules;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jc(_$hash, securityGroupRules.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AuthorizeSecurityGroupIngressResultBuilder
    implements
        Builder<AuthorizeSecurityGroupIngressResult,
            AuthorizeSecurityGroupIngressResultBuilder> {
  _$AuthorizeSecurityGroupIngressResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  _i2.ListBuilder<SecurityGroupRule>? _securityGroupRules;
  _i2.ListBuilder<SecurityGroupRule> get securityGroupRules =>
      _$this._securityGroupRules ??= new _i2.ListBuilder<SecurityGroupRule>();
  set securityGroupRules(
          _i2.ListBuilder<SecurityGroupRule>? securityGroupRules) =>
      _$this._securityGroupRules = securityGroupRules;

  AuthorizeSecurityGroupIngressResultBuilder() {
    AuthorizeSecurityGroupIngressResult._init(this);
  }

  AuthorizeSecurityGroupIngressResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _securityGroupRules = $v.securityGroupRules?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthorizeSecurityGroupIngressResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthorizeSecurityGroupIngressResult;
  }

  @override
  void update(
      void Function(AuthorizeSecurityGroupIngressResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthorizeSecurityGroupIngressResult build() => _build();

  _$AuthorizeSecurityGroupIngressResult _build() {
    _$AuthorizeSecurityGroupIngressResult _$result;
    try {
      _$result = _$v ??
          new _$AuthorizeSecurityGroupIngressResult._(
              return_: BuiltValueNullFieldError.checkNotNull(
                  return_, r'AuthorizeSecurityGroupIngressResult', 'return_'),
              securityGroupRules: _securityGroupRules?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'securityGroupRules';
        _securityGroupRules?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AuthorizeSecurityGroupIngressResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
