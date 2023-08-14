// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorize_security_group_egress_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthorizeSecurityGroupEgressResult
    extends AuthorizeSecurityGroupEgressResult {
  @override
  final bool return_;
  @override
  final _i2.BuiltList<SecurityGroupRule>? securityGroupRules;

  factory _$AuthorizeSecurityGroupEgressResult(
          [void Function(AuthorizeSecurityGroupEgressResultBuilder)?
              updates]) =>
      (new AuthorizeSecurityGroupEgressResultBuilder()..update(updates))
          ._build();

  _$AuthorizeSecurityGroupEgressResult._(
      {required this.return_, this.securityGroupRules})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'AuthorizeSecurityGroupEgressResult', 'return_');
  }

  @override
  AuthorizeSecurityGroupEgressResult rebuild(
          void Function(AuthorizeSecurityGroupEgressResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorizeSecurityGroupEgressResultBuilder toBuilder() =>
      new AuthorizeSecurityGroupEgressResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthorizeSecurityGroupEgressResult &&
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

class AuthorizeSecurityGroupEgressResultBuilder
    implements
        Builder<AuthorizeSecurityGroupEgressResult,
            AuthorizeSecurityGroupEgressResultBuilder> {
  _$AuthorizeSecurityGroupEgressResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  _i2.ListBuilder<SecurityGroupRule>? _securityGroupRules;
  _i2.ListBuilder<SecurityGroupRule> get securityGroupRules =>
      _$this._securityGroupRules ??= new _i2.ListBuilder<SecurityGroupRule>();
  set securityGroupRules(
          _i2.ListBuilder<SecurityGroupRule>? securityGroupRules) =>
      _$this._securityGroupRules = securityGroupRules;

  AuthorizeSecurityGroupEgressResultBuilder() {
    AuthorizeSecurityGroupEgressResult._init(this);
  }

  AuthorizeSecurityGroupEgressResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _securityGroupRules = $v.securityGroupRules?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthorizeSecurityGroupEgressResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthorizeSecurityGroupEgressResult;
  }

  @override
  void update(
      void Function(AuthorizeSecurityGroupEgressResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthorizeSecurityGroupEgressResult build() => _build();

  _$AuthorizeSecurityGroupEgressResult _build() {
    _$AuthorizeSecurityGroupEgressResult _$result;
    try {
      _$result = _$v ??
          new _$AuthorizeSecurityGroupEgressResult._(
              return_: BuiltValueNullFieldError.checkNotNull(
                  return_, r'AuthorizeSecurityGroupEgressResult', 'return_'),
              securityGroupRules: _securityGroupRules?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'securityGroupRules';
        _securityGroupRules?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AuthorizeSecurityGroupEgressResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
