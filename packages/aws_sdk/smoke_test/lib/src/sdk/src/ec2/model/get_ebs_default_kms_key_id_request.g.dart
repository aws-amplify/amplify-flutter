// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ebs_default_kms_key_id_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetEbsDefaultKmsKeyIdRequest extends GetEbsDefaultKmsKeyIdRequest {
  @override
  final bool dryRun;

  factory _$GetEbsDefaultKmsKeyIdRequest(
          [void Function(GetEbsDefaultKmsKeyIdRequestBuilder)? updates]) =>
      (new GetEbsDefaultKmsKeyIdRequestBuilder()..update(updates))._build();

  _$GetEbsDefaultKmsKeyIdRequest._({required this.dryRun}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetEbsDefaultKmsKeyIdRequest', 'dryRun');
  }

  @override
  GetEbsDefaultKmsKeyIdRequest rebuild(
          void Function(GetEbsDefaultKmsKeyIdRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetEbsDefaultKmsKeyIdRequestBuilder toBuilder() =>
      new GetEbsDefaultKmsKeyIdRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetEbsDefaultKmsKeyIdRequest && dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetEbsDefaultKmsKeyIdRequestBuilder
    implements
        Builder<GetEbsDefaultKmsKeyIdRequest,
            GetEbsDefaultKmsKeyIdRequestBuilder> {
  _$GetEbsDefaultKmsKeyIdRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  GetEbsDefaultKmsKeyIdRequestBuilder() {
    GetEbsDefaultKmsKeyIdRequest._init(this);
  }

  GetEbsDefaultKmsKeyIdRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetEbsDefaultKmsKeyIdRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetEbsDefaultKmsKeyIdRequest;
  }

  @override
  void update(void Function(GetEbsDefaultKmsKeyIdRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetEbsDefaultKmsKeyIdRequest build() => _build();

  _$GetEbsDefaultKmsKeyIdRequest _build() {
    final _$result = _$v ??
        new _$GetEbsDefaultKmsKeyIdRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'GetEbsDefaultKmsKeyIdRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
