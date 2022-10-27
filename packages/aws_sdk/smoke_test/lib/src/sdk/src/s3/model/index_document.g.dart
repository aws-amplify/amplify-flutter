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
    return $jf($jc(0, suffix.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
