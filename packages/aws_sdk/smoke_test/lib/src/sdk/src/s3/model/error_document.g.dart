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
    return $jf($jc(0, key.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
