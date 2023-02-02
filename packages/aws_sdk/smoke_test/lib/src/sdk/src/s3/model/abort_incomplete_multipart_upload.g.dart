// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.abort_incomplete_multipart_upload;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AbortIncompleteMultipartUpload extends AbortIncompleteMultipartUpload {
  @override
  final int? daysAfterInitiation;

  factory _$AbortIncompleteMultipartUpload(
          [void Function(AbortIncompleteMultipartUploadBuilder)? updates]) =>
      (new AbortIncompleteMultipartUploadBuilder()..update(updates))._build();

  _$AbortIncompleteMultipartUpload._({this.daysAfterInitiation}) : super._();

  @override
  AbortIncompleteMultipartUpload rebuild(
          void Function(AbortIncompleteMultipartUploadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AbortIncompleteMultipartUploadBuilder toBuilder() =>
      new AbortIncompleteMultipartUploadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AbortIncompleteMultipartUpload &&
        daysAfterInitiation == other.daysAfterInitiation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, daysAfterInitiation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AbortIncompleteMultipartUploadBuilder
    implements
        Builder<AbortIncompleteMultipartUpload,
            AbortIncompleteMultipartUploadBuilder> {
  _$AbortIncompleteMultipartUpload? _$v;

  int? _daysAfterInitiation;
  int? get daysAfterInitiation => _$this._daysAfterInitiation;
  set daysAfterInitiation(int? daysAfterInitiation) =>
      _$this._daysAfterInitiation = daysAfterInitiation;

  AbortIncompleteMultipartUploadBuilder() {
    AbortIncompleteMultipartUpload._init(this);
  }

  AbortIncompleteMultipartUploadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _daysAfterInitiation = $v.daysAfterInitiation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AbortIncompleteMultipartUpload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AbortIncompleteMultipartUpload;
  }

  @override
  void update(void Function(AbortIncompleteMultipartUploadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AbortIncompleteMultipartUpload build() => _build();

  _$AbortIncompleteMultipartUpload _build() {
    final _$result = _$v ??
        new _$AbortIncompleteMultipartUpload._(
            daysAfterInitiation: daysAfterInitiation);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
