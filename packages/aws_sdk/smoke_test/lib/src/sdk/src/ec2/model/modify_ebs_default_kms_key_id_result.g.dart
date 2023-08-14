// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_ebs_default_kms_key_id_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyEbsDefaultKmsKeyIdResult extends ModifyEbsDefaultKmsKeyIdResult {
  @override
  final String? kmsKeyId;

  factory _$ModifyEbsDefaultKmsKeyIdResult(
          [void Function(ModifyEbsDefaultKmsKeyIdResultBuilder)? updates]) =>
      (new ModifyEbsDefaultKmsKeyIdResultBuilder()..update(updates))._build();

  _$ModifyEbsDefaultKmsKeyIdResult._({this.kmsKeyId}) : super._();

  @override
  ModifyEbsDefaultKmsKeyIdResult rebuild(
          void Function(ModifyEbsDefaultKmsKeyIdResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyEbsDefaultKmsKeyIdResultBuilder toBuilder() =>
      new ModifyEbsDefaultKmsKeyIdResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyEbsDefaultKmsKeyIdResult &&
        kmsKeyId == other.kmsKeyId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kmsKeyId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyEbsDefaultKmsKeyIdResultBuilder
    implements
        Builder<ModifyEbsDefaultKmsKeyIdResult,
            ModifyEbsDefaultKmsKeyIdResultBuilder> {
  _$ModifyEbsDefaultKmsKeyIdResult? _$v;

  String? _kmsKeyId;
  String? get kmsKeyId => _$this._kmsKeyId;
  set kmsKeyId(String? kmsKeyId) => _$this._kmsKeyId = kmsKeyId;

  ModifyEbsDefaultKmsKeyIdResultBuilder();

  ModifyEbsDefaultKmsKeyIdResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kmsKeyId = $v.kmsKeyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyEbsDefaultKmsKeyIdResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyEbsDefaultKmsKeyIdResult;
  }

  @override
  void update(void Function(ModifyEbsDefaultKmsKeyIdResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyEbsDefaultKmsKeyIdResult build() => _build();

  _$ModifyEbsDefaultKmsKeyIdResult _build() {
    final _$result =
        _$v ?? new _$ModifyEbsDefaultKmsKeyIdResult._(kmsKeyId: kmsKeyId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
