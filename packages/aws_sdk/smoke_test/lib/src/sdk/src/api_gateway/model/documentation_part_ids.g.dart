// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.documentation_part_ids;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DocumentationPartIds extends DocumentationPartIds {
  @override
  final _i2.BuiltList<String>? ids;
  @override
  final _i2.BuiltList<String>? warnings;

  factory _$DocumentationPartIds(
          [void Function(DocumentationPartIdsBuilder)? updates]) =>
      (new DocumentationPartIdsBuilder()..update(updates))._build();

  _$DocumentationPartIds._({this.ids, this.warnings}) : super._();

  @override
  DocumentationPartIds rebuild(
          void Function(DocumentationPartIdsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentationPartIdsBuilder toBuilder() =>
      new DocumentationPartIdsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentationPartIds &&
        ids == other.ids &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ids.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DocumentationPartIdsBuilder
    implements Builder<DocumentationPartIds, DocumentationPartIdsBuilder> {
  _$DocumentationPartIds? _$v;

  _i2.ListBuilder<String>? _ids;
  _i2.ListBuilder<String> get ids =>
      _$this._ids ??= new _i2.ListBuilder<String>();
  set ids(_i2.ListBuilder<String>? ids) => _$this._ids = ids;

  _i2.ListBuilder<String>? _warnings;
  _i2.ListBuilder<String> get warnings =>
      _$this._warnings ??= new _i2.ListBuilder<String>();
  set warnings(_i2.ListBuilder<String>? warnings) =>
      _$this._warnings = warnings;

  DocumentationPartIdsBuilder() {
    DocumentationPartIds._init(this);
  }

  DocumentationPartIdsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ids = $v.ids?.toBuilder();
      _warnings = $v.warnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentationPartIds other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentationPartIds;
  }

  @override
  void update(void Function(DocumentationPartIdsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DocumentationPartIds build() => _build();

  _$DocumentationPartIds _build() {
    _$DocumentationPartIds _$result;
    try {
      _$result = _$v ??
          new _$DocumentationPartIds._(
              ids: _ids?.build(), warnings: _warnings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ids';
        _ids?.build();
        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DocumentationPartIds', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
