// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_ebs_default_kms_key_id_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResetEbsDefaultKmsKeyIdResult extends ResetEbsDefaultKmsKeyIdResult {
  @override
  final String? kmsKeyId;

  factory _$ResetEbsDefaultKmsKeyIdResult(
          [void Function(ResetEbsDefaultKmsKeyIdResultBuilder)? updates]) =>
      (new ResetEbsDefaultKmsKeyIdResultBuilder()..update(updates))._build();

  _$ResetEbsDefaultKmsKeyIdResult._({this.kmsKeyId}) : super._();

  @override
  ResetEbsDefaultKmsKeyIdResult rebuild(
          void Function(ResetEbsDefaultKmsKeyIdResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResetEbsDefaultKmsKeyIdResultBuilder toBuilder() =>
      new ResetEbsDefaultKmsKeyIdResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetEbsDefaultKmsKeyIdResult && kmsKeyId == other.kmsKeyId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kmsKeyId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResetEbsDefaultKmsKeyIdResultBuilder
    implements
        Builder<ResetEbsDefaultKmsKeyIdResult,
            ResetEbsDefaultKmsKeyIdResultBuilder> {
  _$ResetEbsDefaultKmsKeyIdResult? _$v;

  String? _kmsKeyId;
  String? get kmsKeyId => _$this._kmsKeyId;
  set kmsKeyId(String? kmsKeyId) => _$this._kmsKeyId = kmsKeyId;

  ResetEbsDefaultKmsKeyIdResultBuilder();

  ResetEbsDefaultKmsKeyIdResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kmsKeyId = $v.kmsKeyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResetEbsDefaultKmsKeyIdResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResetEbsDefaultKmsKeyIdResult;
  }

  @override
  void update(void Function(ResetEbsDefaultKmsKeyIdResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResetEbsDefaultKmsKeyIdResult build() => _build();

  _$ResetEbsDefaultKmsKeyIdResult _build() {
    final _$result =
        _$v ?? new _$ResetEbsDefaultKmsKeyIdResult._(kmsKeyId: kmsKeyId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
