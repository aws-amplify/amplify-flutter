// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ebs_default_kms_key_id_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetEbsDefaultKmsKeyIdResult extends GetEbsDefaultKmsKeyIdResult {
  @override
  final String? kmsKeyId;

  factory _$GetEbsDefaultKmsKeyIdResult(
          [void Function(GetEbsDefaultKmsKeyIdResultBuilder)? updates]) =>
      (new GetEbsDefaultKmsKeyIdResultBuilder()..update(updates))._build();

  _$GetEbsDefaultKmsKeyIdResult._({this.kmsKeyId}) : super._();

  @override
  GetEbsDefaultKmsKeyIdResult rebuild(
          void Function(GetEbsDefaultKmsKeyIdResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetEbsDefaultKmsKeyIdResultBuilder toBuilder() =>
      new GetEbsDefaultKmsKeyIdResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetEbsDefaultKmsKeyIdResult && kmsKeyId == other.kmsKeyId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kmsKeyId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetEbsDefaultKmsKeyIdResultBuilder
    implements
        Builder<GetEbsDefaultKmsKeyIdResult,
            GetEbsDefaultKmsKeyIdResultBuilder> {
  _$GetEbsDefaultKmsKeyIdResult? _$v;

  String? _kmsKeyId;
  String? get kmsKeyId => _$this._kmsKeyId;
  set kmsKeyId(String? kmsKeyId) => _$this._kmsKeyId = kmsKeyId;

  GetEbsDefaultKmsKeyIdResultBuilder();

  GetEbsDefaultKmsKeyIdResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kmsKeyId = $v.kmsKeyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetEbsDefaultKmsKeyIdResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetEbsDefaultKmsKeyIdResult;
  }

  @override
  void update(void Function(GetEbsDefaultKmsKeyIdResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetEbsDefaultKmsKeyIdResult build() => _build();

  _$GetEbsDefaultKmsKeyIdResult _build() {
    final _$result =
        _$v ?? new _$GetEbsDefaultKmsKeyIdResult._(kmsKeyId: kmsKeyId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
