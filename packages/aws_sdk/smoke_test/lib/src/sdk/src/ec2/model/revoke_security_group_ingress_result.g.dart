// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revoke_security_group_ingress_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RevokeSecurityGroupIngressResult
    extends RevokeSecurityGroupIngressResult {
  @override
  final bool return_;
  @override
  final _i2.BuiltList<IpPermission>? unknownIpPermissions;

  factory _$RevokeSecurityGroupIngressResult(
          [void Function(RevokeSecurityGroupIngressResultBuilder)? updates]) =>
      (new RevokeSecurityGroupIngressResultBuilder()..update(updates))._build();

  _$RevokeSecurityGroupIngressResult._(
      {required this.return_, this.unknownIpPermissions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'RevokeSecurityGroupIngressResult', 'return_');
  }

  @override
  RevokeSecurityGroupIngressResult rebuild(
          void Function(RevokeSecurityGroupIngressResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RevokeSecurityGroupIngressResultBuilder toBuilder() =>
      new RevokeSecurityGroupIngressResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RevokeSecurityGroupIngressResult &&
        return_ == other.return_ &&
        unknownIpPermissions == other.unknownIpPermissions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jc(_$hash, unknownIpPermissions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RevokeSecurityGroupIngressResultBuilder
    implements
        Builder<RevokeSecurityGroupIngressResult,
            RevokeSecurityGroupIngressResultBuilder> {
  _$RevokeSecurityGroupIngressResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  _i2.ListBuilder<IpPermission>? _unknownIpPermissions;
  _i2.ListBuilder<IpPermission> get unknownIpPermissions =>
      _$this._unknownIpPermissions ??= new _i2.ListBuilder<IpPermission>();
  set unknownIpPermissions(
          _i2.ListBuilder<IpPermission>? unknownIpPermissions) =>
      _$this._unknownIpPermissions = unknownIpPermissions;

  RevokeSecurityGroupIngressResultBuilder() {
    RevokeSecurityGroupIngressResult._init(this);
  }

  RevokeSecurityGroupIngressResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _unknownIpPermissions = $v.unknownIpPermissions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RevokeSecurityGroupIngressResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RevokeSecurityGroupIngressResult;
  }

  @override
  void update(void Function(RevokeSecurityGroupIngressResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RevokeSecurityGroupIngressResult build() => _build();

  _$RevokeSecurityGroupIngressResult _build() {
    _$RevokeSecurityGroupIngressResult _$result;
    try {
      _$result = _$v ??
          new _$RevokeSecurityGroupIngressResult._(
              return_: BuiltValueNullFieldError.checkNotNull(
                  return_, r'RevokeSecurityGroupIngressResult', 'return_'),
              unknownIpPermissions: _unknownIpPermissions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'unknownIpPermissions';
        _unknownIpPermissions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RevokeSecurityGroupIngressResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
