// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disassociate_enclave_certificate_iam_role_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateEnclaveCertificateIamRoleResult
    extends DisassociateEnclaveCertificateIamRoleResult {
  @override
  final bool return_;

  factory _$DisassociateEnclaveCertificateIamRoleResult(
          [void Function(DisassociateEnclaveCertificateIamRoleResultBuilder)?
              updates]) =>
      (new DisassociateEnclaveCertificateIamRoleResultBuilder()
            ..update(updates))
          ._build();

  _$DisassociateEnclaveCertificateIamRoleResult._({required this.return_})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'DisassociateEnclaveCertificateIamRoleResult', 'return_');
  }

  @override
  DisassociateEnclaveCertificateIamRoleResult rebuild(
          void Function(DisassociateEnclaveCertificateIamRoleResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateEnclaveCertificateIamRoleResultBuilder toBuilder() =>
      new DisassociateEnclaveCertificateIamRoleResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateEnclaveCertificateIamRoleResult &&
        return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisassociateEnclaveCertificateIamRoleResultBuilder
    implements
        Builder<DisassociateEnclaveCertificateIamRoleResult,
            DisassociateEnclaveCertificateIamRoleResultBuilder> {
  _$DisassociateEnclaveCertificateIamRoleResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  DisassociateEnclaveCertificateIamRoleResultBuilder() {
    DisassociateEnclaveCertificateIamRoleResult._init(this);
  }

  DisassociateEnclaveCertificateIamRoleResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateEnclaveCertificateIamRoleResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateEnclaveCertificateIamRoleResult;
  }

  @override
  void update(
      void Function(DisassociateEnclaveCertificateIamRoleResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateEnclaveCertificateIamRoleResult build() => _build();

  _$DisassociateEnclaveCertificateIamRoleResult _build() {
    final _$result = _$v ??
        new _$DisassociateEnclaveCertificateIamRoleResult._(
            return_: BuiltValueNullFieldError.checkNotNull(return_,
                r'DisassociateEnclaveCertificateIamRoleResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
