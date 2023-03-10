// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.index_document;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IndexDocument extends IndexDocument {
  @override
  final String suffix;

  factory _$IndexDocument([void Function(IndexDocumentBuilder)? updates]) =>
      (new IndexDocumentBuilder()..update(updates))._build();

  _$IndexDocument._({required this.suffix}) : super._() {
    BuiltValueNullFieldError.checkNotNull(suffix, r'IndexDocument', 'suffix');
  }

  @override
  IndexDocument rebuild(void Function(IndexDocumentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndexDocumentBuilder toBuilder() => new IndexDocumentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndexDocument && suffix == other.suffix;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, suffix.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IndexDocumentBuilder
    implements Builder<IndexDocument, IndexDocumentBuilder> {
  _$IndexDocument? _$v;

  String? _suffix;
  String? get suffix => _$this._suffix;
  set suffix(String? suffix) => _$this._suffix = suffix;

  IndexDocumentBuilder() {
    IndexDocument._init(this);
  }

  IndexDocumentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _suffix = $v.suffix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndexDocument other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IndexDocument;
  }

  @override
  void update(void Function(IndexDocumentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndexDocument build() => _build();

  _$IndexDocument _build() {
    final _$result = _$v ??
        new _$IndexDocument._(
            suffix: BuiltValueNullFieldError.checkNotNull(
                suffix, r'IndexDocument', 'suffix'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
