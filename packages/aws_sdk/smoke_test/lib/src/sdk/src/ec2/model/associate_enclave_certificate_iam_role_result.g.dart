// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_enclave_certificate_iam_role_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateEnclaveCertificateIamRoleResult
    extends AssociateEnclaveCertificateIamRoleResult {
  @override
  final String? certificateS3BucketName;
  @override
  final String? certificateS3ObjectKey;
  @override
  final String? encryptionKmsKeyId;

  factory _$AssociateEnclaveCertificateIamRoleResult(
          [void Function(AssociateEnclaveCertificateIamRoleResultBuilder)?
              updates]) =>
      (new AssociateEnclaveCertificateIamRoleResultBuilder()..update(updates))
          ._build();

  _$AssociateEnclaveCertificateIamRoleResult._(
      {this.certificateS3BucketName,
      this.certificateS3ObjectKey,
      this.encryptionKmsKeyId})
      : super._();

  @override
  AssociateEnclaveCertificateIamRoleResult rebuild(
          void Function(AssociateEnclaveCertificateIamRoleResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateEnclaveCertificateIamRoleResultBuilder toBuilder() =>
      new AssociateEnclaveCertificateIamRoleResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateEnclaveCertificateIamRoleResult &&
        certificateS3BucketName == other.certificateS3BucketName &&
        certificateS3ObjectKey == other.certificateS3ObjectKey &&
        encryptionKmsKeyId == other.encryptionKmsKeyId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, certificateS3BucketName.hashCode);
    _$hash = $jc(_$hash, certificateS3ObjectKey.hashCode);
    _$hash = $jc(_$hash, encryptionKmsKeyId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssociateEnclaveCertificateIamRoleResultBuilder
    implements
        Builder<AssociateEnclaveCertificateIamRoleResult,
            AssociateEnclaveCertificateIamRoleResultBuilder> {
  _$AssociateEnclaveCertificateIamRoleResult? _$v;

  String? _certificateS3BucketName;
  String? get certificateS3BucketName => _$this._certificateS3BucketName;
  set certificateS3BucketName(String? certificateS3BucketName) =>
      _$this._certificateS3BucketName = certificateS3BucketName;

  String? _certificateS3ObjectKey;
  String? get certificateS3ObjectKey => _$this._certificateS3ObjectKey;
  set certificateS3ObjectKey(String? certificateS3ObjectKey) =>
      _$this._certificateS3ObjectKey = certificateS3ObjectKey;

  String? _encryptionKmsKeyId;
  String? get encryptionKmsKeyId => _$this._encryptionKmsKeyId;
  set encryptionKmsKeyId(String? encryptionKmsKeyId) =>
      _$this._encryptionKmsKeyId = encryptionKmsKeyId;

  AssociateEnclaveCertificateIamRoleResultBuilder();

  AssociateEnclaveCertificateIamRoleResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _certificateS3BucketName = $v.certificateS3BucketName;
      _certificateS3ObjectKey = $v.certificateS3ObjectKey;
      _encryptionKmsKeyId = $v.encryptionKmsKeyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateEnclaveCertificateIamRoleResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateEnclaveCertificateIamRoleResult;
  }

  @override
  void update(
      void Function(AssociateEnclaveCertificateIamRoleResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateEnclaveCertificateIamRoleResult build() => _build();

  _$AssociateEnclaveCertificateIamRoleResult _build() {
    final _$result = _$v ??
        new _$AssociateEnclaveCertificateIamRoleResult._(
            certificateS3BucketName: certificateS3BucketName,
            certificateS3ObjectKey: certificateS3ObjectKey,
            encryptionKmsKeyId: encryptionKmsKeyId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
