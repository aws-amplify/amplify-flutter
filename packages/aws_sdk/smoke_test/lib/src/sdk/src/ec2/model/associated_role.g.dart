// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associated_role.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociatedRole extends AssociatedRole {
  @override
  final String? associatedRoleArn;
  @override
  final String? certificateS3BucketName;
  @override
  final String? certificateS3ObjectKey;
  @override
  final String? encryptionKmsKeyId;

  factory _$AssociatedRole([void Function(AssociatedRoleBuilder)? updates]) =>
      (new AssociatedRoleBuilder()..update(updates))._build();

  _$AssociatedRole._(
      {this.associatedRoleArn,
      this.certificateS3BucketName,
      this.certificateS3ObjectKey,
      this.encryptionKmsKeyId})
      : super._();

  @override
  AssociatedRole rebuild(void Function(AssociatedRoleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociatedRoleBuilder toBuilder() =>
      new AssociatedRoleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociatedRole &&
        associatedRoleArn == other.associatedRoleArn &&
        certificateS3BucketName == other.certificateS3BucketName &&
        certificateS3ObjectKey == other.certificateS3ObjectKey &&
        encryptionKmsKeyId == other.encryptionKmsKeyId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associatedRoleArn.hashCode);
    _$hash = $jc(_$hash, certificateS3BucketName.hashCode);
    _$hash = $jc(_$hash, certificateS3ObjectKey.hashCode);
    _$hash = $jc(_$hash, encryptionKmsKeyId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssociatedRoleBuilder
    implements Builder<AssociatedRole, AssociatedRoleBuilder> {
  _$AssociatedRole? _$v;

  String? _associatedRoleArn;
  String? get associatedRoleArn => _$this._associatedRoleArn;
  set associatedRoleArn(String? associatedRoleArn) =>
      _$this._associatedRoleArn = associatedRoleArn;

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

  AssociatedRoleBuilder();

  AssociatedRoleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associatedRoleArn = $v.associatedRoleArn;
      _certificateS3BucketName = $v.certificateS3BucketName;
      _certificateS3ObjectKey = $v.certificateS3ObjectKey;
      _encryptionKmsKeyId = $v.encryptionKmsKeyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociatedRole other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociatedRole;
  }

  @override
  void update(void Function(AssociatedRoleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociatedRole build() => _build();

  _$AssociatedRole _build() {
    final _$result = _$v ??
        new _$AssociatedRole._(
            associatedRoleArn: associatedRoleArn,
            certificateS3BucketName: certificateS3BucketName,
            certificateS3ObjectKey: certificateS3ObjectKey,
            encryptionKmsKeyId: encryptionKmsKeyId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
