// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_ebs_default_kms_key_id_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyEbsDefaultKmsKeyIdRequest
    extends ModifyEbsDefaultKmsKeyIdRequest {
  @override
  final String? kmsKeyId;
  @override
  final bool dryRun;

  factory _$ModifyEbsDefaultKmsKeyIdRequest(
          [void Function(ModifyEbsDefaultKmsKeyIdRequestBuilder)? updates]) =>
      (new ModifyEbsDefaultKmsKeyIdRequestBuilder()..update(updates))._build();

  _$ModifyEbsDefaultKmsKeyIdRequest._({this.kmsKeyId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyEbsDefaultKmsKeyIdRequest', 'dryRun');
  }

  @override
  ModifyEbsDefaultKmsKeyIdRequest rebuild(
          void Function(ModifyEbsDefaultKmsKeyIdRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyEbsDefaultKmsKeyIdRequestBuilder toBuilder() =>
      new ModifyEbsDefaultKmsKeyIdRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyEbsDefaultKmsKeyIdRequest &&
        kmsKeyId == other.kmsKeyId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kmsKeyId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyEbsDefaultKmsKeyIdRequestBuilder
    implements
        Builder<ModifyEbsDefaultKmsKeyIdRequest,
            ModifyEbsDefaultKmsKeyIdRequestBuilder> {
  _$ModifyEbsDefaultKmsKeyIdRequest? _$v;

  String? _kmsKeyId;
  String? get kmsKeyId => _$this._kmsKeyId;
  set kmsKeyId(String? kmsKeyId) => _$this._kmsKeyId = kmsKeyId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ModifyEbsDefaultKmsKeyIdRequestBuilder() {
    ModifyEbsDefaultKmsKeyIdRequest._init(this);
  }

  ModifyEbsDefaultKmsKeyIdRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kmsKeyId = $v.kmsKeyId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyEbsDefaultKmsKeyIdRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyEbsDefaultKmsKeyIdRequest;
  }

  @override
  void update(void Function(ModifyEbsDefaultKmsKeyIdRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyEbsDefaultKmsKeyIdRequest build() => _build();

  _$ModifyEbsDefaultKmsKeyIdRequest _build() {
    final _$result = _$v ??
        new _$ModifyEbsDefaultKmsKeyIdRequest._(
            kmsKeyId: kmsKeyId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ModifyEbsDefaultKmsKeyIdRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
