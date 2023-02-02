// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.error_document;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorDocument extends ErrorDocument {
  @override
  final String key;

  factory _$ErrorDocument([void Function(ErrorDocumentBuilder)? updates]) =>
      (new ErrorDocumentBuilder()..update(updates))._build();

  _$ErrorDocument._({required this.key}) : super._() {
    BuiltValueNullFieldError.checkNotNull(key, r'ErrorDocument', 'key');
  }

  @override
  ErrorDocument rebuild(void Function(ErrorDocumentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorDocumentBuilder toBuilder() => new ErrorDocumentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorDocument && key == other.key;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ErrorDocumentBuilder
    implements Builder<ErrorDocument, ErrorDocumentBuilder> {
  _$ErrorDocument? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  ErrorDocumentBuilder() {
    ErrorDocument._init(this);
  }

  ErrorDocumentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorDocument other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorDocument;
  }

  @override
  void update(void Function(ErrorDocumentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ErrorDocument build() => _build();

  _$ErrorDocument _build() {
    final _$result = _$v ??
        new _$ErrorDocument._(
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'ErrorDocument', 'key'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
