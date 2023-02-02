// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.no_such_upload;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoSuchUpload extends NoSuchUpload {
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$NoSuchUpload([void Function(NoSuchUploadBuilder)? updates]) =>
      (new NoSuchUploadBuilder()..update(updates))._build();

  _$NoSuchUpload._({this.statusCode, this.headers}) : super._();

  @override
  NoSuchUpload rebuild(void Function(NoSuchUploadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoSuchUploadBuilder toBuilder() => new NoSuchUploadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoSuchUpload;
  }

  @override
  int get hashCode {
    return 297751293;
  }
}

class NoSuchUploadBuilder
    implements Builder<NoSuchUpload, NoSuchUploadBuilder> {
  _$NoSuchUpload? _$v;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  NoSuchUploadBuilder() {
    NoSuchUpload._init(this);
  }

  NoSuchUploadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoSuchUpload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoSuchUpload;
  }

  @override
  void update(void Function(NoSuchUploadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoSuchUpload build() => _build();

  _$NoSuchUpload _build() {
    final _$result =
        _$v ?? new _$NoSuchUpload._(statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
