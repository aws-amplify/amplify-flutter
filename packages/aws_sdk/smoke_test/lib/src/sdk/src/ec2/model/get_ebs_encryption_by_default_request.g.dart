// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ebs_encryption_by_default_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetEbsEncryptionByDefaultRequest
    extends GetEbsEncryptionByDefaultRequest {
  @override
  final bool dryRun;

  factory _$GetEbsEncryptionByDefaultRequest(
          [void Function(GetEbsEncryptionByDefaultRequestBuilder)? updates]) =>
      (new GetEbsEncryptionByDefaultRequestBuilder()..update(updates))._build();

  _$GetEbsEncryptionByDefaultRequest._({required this.dryRun}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetEbsEncryptionByDefaultRequest', 'dryRun');
  }

  @override
  GetEbsEncryptionByDefaultRequest rebuild(
          void Function(GetEbsEncryptionByDefaultRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetEbsEncryptionByDefaultRequestBuilder toBuilder() =>
      new GetEbsEncryptionByDefaultRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetEbsEncryptionByDefaultRequest && dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetEbsEncryptionByDefaultRequestBuilder
    implements
        Builder<GetEbsEncryptionByDefaultRequest,
            GetEbsEncryptionByDefaultRequestBuilder> {
  _$GetEbsEncryptionByDefaultRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  GetEbsEncryptionByDefaultRequestBuilder() {
    GetEbsEncryptionByDefaultRequest._init(this);
  }

  GetEbsEncryptionByDefaultRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetEbsEncryptionByDefaultRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetEbsEncryptionByDefaultRequest;
  }

  @override
  void update(void Function(GetEbsEncryptionByDefaultRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetEbsEncryptionByDefaultRequest build() => _build();

  _$GetEbsEncryptionByDefaultRequest _build() {
    final _$result = _$v ??
        new _$GetEbsEncryptionByDefaultRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'GetEbsEncryptionByDefaultRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
