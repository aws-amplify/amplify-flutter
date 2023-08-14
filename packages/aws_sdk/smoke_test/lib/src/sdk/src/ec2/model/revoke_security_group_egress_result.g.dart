// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revoke_security_group_egress_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RevokeSecurityGroupEgressResult
    extends RevokeSecurityGroupEgressResult {
  @override
  final bool return_;
  @override
  final _i2.BuiltList<IpPermission>? unknownIpPermissions;

  factory _$RevokeSecurityGroupEgressResult(
          [void Function(RevokeSecurityGroupEgressResultBuilder)? updates]) =>
      (new RevokeSecurityGroupEgressResultBuilder()..update(updates))._build();

  _$RevokeSecurityGroupEgressResult._(
      {required this.return_, this.unknownIpPermissions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'RevokeSecurityGroupEgressResult', 'return_');
  }

  @override
  RevokeSecurityGroupEgressResult rebuild(
          void Function(RevokeSecurityGroupEgressResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RevokeSecurityGroupEgressResultBuilder toBuilder() =>
      new RevokeSecurityGroupEgressResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RevokeSecurityGroupEgressResult &&
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

class RevokeSecurityGroupEgressResultBuilder
    implements
        Builder<RevokeSecurityGroupEgressResult,
            RevokeSecurityGroupEgressResultBuilder> {
  _$RevokeSecurityGroupEgressResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  _i2.ListBuilder<IpPermission>? _unknownIpPermissions;
  _i2.ListBuilder<IpPermission> get unknownIpPermissions =>
      _$this._unknownIpPermissions ??= new _i2.ListBuilder<IpPermission>();
  set unknownIpPermissions(
          _i2.ListBuilder<IpPermission>? unknownIpPermissions) =>
      _$this._unknownIpPermissions = unknownIpPermissions;

  RevokeSecurityGroupEgressResultBuilder() {
    RevokeSecurityGroupEgressResult._init(this);
  }

  RevokeSecurityGroupEgressResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _unknownIpPermissions = $v.unknownIpPermissions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RevokeSecurityGroupEgressResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RevokeSecurityGroupEgressResult;
  }

  @override
  void update(void Function(RevokeSecurityGroupEgressResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RevokeSecurityGroupEgressResult build() => _build();

  _$RevokeSecurityGroupEgressResult _build() {
    _$RevokeSecurityGroupEgressResult _$result;
    try {
      _$result = _$v ??
          new _$RevokeSecurityGroupEgressResult._(
              return_: BuiltValueNullFieldError.checkNotNull(
                  return_, r'RevokeSecurityGroupEgressResult', 'return_'),
              unknownIpPermissions: _unknownIpPermissions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'unknownIpPermissions';
        _unknownIpPermissions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RevokeSecurityGroupEgressResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
