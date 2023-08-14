// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_ebs_encryption_by_default_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableEbsEncryptionByDefaultRequest
    extends DisableEbsEncryptionByDefaultRequest {
  @override
  final bool dryRun;

  factory _$DisableEbsEncryptionByDefaultRequest(
          [void Function(DisableEbsEncryptionByDefaultRequestBuilder)?
              updates]) =>
      (new DisableEbsEncryptionByDefaultRequestBuilder()..update(updates))
          ._build();

  _$DisableEbsEncryptionByDefaultRequest._({required this.dryRun}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DisableEbsEncryptionByDefaultRequest', 'dryRun');
  }

  @override
  DisableEbsEncryptionByDefaultRequest rebuild(
          void Function(DisableEbsEncryptionByDefaultRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableEbsEncryptionByDefaultRequestBuilder toBuilder() =>
      new DisableEbsEncryptionByDefaultRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableEbsEncryptionByDefaultRequest &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisableEbsEncryptionByDefaultRequestBuilder
    implements
        Builder<DisableEbsEncryptionByDefaultRequest,
            DisableEbsEncryptionByDefaultRequestBuilder> {
  _$DisableEbsEncryptionByDefaultRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DisableEbsEncryptionByDefaultRequestBuilder() {
    DisableEbsEncryptionByDefaultRequest._init(this);
  }

  DisableEbsEncryptionByDefaultRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableEbsEncryptionByDefaultRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableEbsEncryptionByDefaultRequest;
  }

  @override
  void update(
      void Function(DisableEbsEncryptionByDefaultRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableEbsEncryptionByDefaultRequest build() => _build();

  _$DisableEbsEncryptionByDefaultRequest _build() {
    final _$result = _$v ??
        new _$DisableEbsEncryptionByDefaultRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DisableEbsEncryptionByDefaultRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
