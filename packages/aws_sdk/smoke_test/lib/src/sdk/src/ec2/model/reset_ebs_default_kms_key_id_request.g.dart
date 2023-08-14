// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_ebs_default_kms_key_id_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResetEbsDefaultKmsKeyIdRequest extends ResetEbsDefaultKmsKeyIdRequest {
  @override
  final bool dryRun;

  factory _$ResetEbsDefaultKmsKeyIdRequest(
          [void Function(ResetEbsDefaultKmsKeyIdRequestBuilder)? updates]) =>
      (new ResetEbsDefaultKmsKeyIdRequestBuilder()..update(updates))._build();

  _$ResetEbsDefaultKmsKeyIdRequest._({required this.dryRun}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ResetEbsDefaultKmsKeyIdRequest', 'dryRun');
  }

  @override
  ResetEbsDefaultKmsKeyIdRequest rebuild(
          void Function(ResetEbsDefaultKmsKeyIdRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResetEbsDefaultKmsKeyIdRequestBuilder toBuilder() =>
      new ResetEbsDefaultKmsKeyIdRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetEbsDefaultKmsKeyIdRequest && dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResetEbsDefaultKmsKeyIdRequestBuilder
    implements
        Builder<ResetEbsDefaultKmsKeyIdRequest,
            ResetEbsDefaultKmsKeyIdRequestBuilder> {
  _$ResetEbsDefaultKmsKeyIdRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ResetEbsDefaultKmsKeyIdRequestBuilder() {
    ResetEbsDefaultKmsKeyIdRequest._init(this);
  }

  ResetEbsDefaultKmsKeyIdRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResetEbsDefaultKmsKeyIdRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResetEbsDefaultKmsKeyIdRequest;
  }

  @override
  void update(void Function(ResetEbsDefaultKmsKeyIdRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResetEbsDefaultKmsKeyIdRequest build() => _build();

  _$ResetEbsDefaultKmsKeyIdRequest _build() {
    final _$result = _$v ??
        new _$ResetEbsDefaultKmsKeyIdRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ResetEbsDefaultKmsKeyIdRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
