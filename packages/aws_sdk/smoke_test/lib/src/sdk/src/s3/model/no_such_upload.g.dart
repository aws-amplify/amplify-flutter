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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
