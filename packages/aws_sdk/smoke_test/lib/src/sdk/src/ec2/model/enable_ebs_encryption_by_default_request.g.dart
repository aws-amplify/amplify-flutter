// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_ebs_encryption_by_default_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableEbsEncryptionByDefaultRequest
    extends EnableEbsEncryptionByDefaultRequest {
  @override
  final bool dryRun;

  factory _$EnableEbsEncryptionByDefaultRequest(
          [void Function(EnableEbsEncryptionByDefaultRequestBuilder)?
              updates]) =>
      (new EnableEbsEncryptionByDefaultRequestBuilder()..update(updates))
          ._build();

  _$EnableEbsEncryptionByDefaultRequest._({required this.dryRun}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'EnableEbsEncryptionByDefaultRequest', 'dryRun');
  }

  @override
  EnableEbsEncryptionByDefaultRequest rebuild(
          void Function(EnableEbsEncryptionByDefaultRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableEbsEncryptionByDefaultRequestBuilder toBuilder() =>
      new EnableEbsEncryptionByDefaultRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableEbsEncryptionByDefaultRequest &&
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

class EnableEbsEncryptionByDefaultRequestBuilder
    implements
        Builder<EnableEbsEncryptionByDefaultRequest,
            EnableEbsEncryptionByDefaultRequestBuilder> {
  _$EnableEbsEncryptionByDefaultRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  EnableEbsEncryptionByDefaultRequestBuilder() {
    EnableEbsEncryptionByDefaultRequest._init(this);
  }

  EnableEbsEncryptionByDefaultRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableEbsEncryptionByDefaultRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableEbsEncryptionByDefaultRequest;
  }

  @override
  void update(
      void Function(EnableEbsEncryptionByDefaultRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableEbsEncryptionByDefaultRequest build() => _build();

  _$EnableEbsEncryptionByDefaultRequest _build() {
    final _$result = _$v ??
        new _$EnableEbsEncryptionByDefaultRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'EnableEbsEncryptionByDefaultRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
