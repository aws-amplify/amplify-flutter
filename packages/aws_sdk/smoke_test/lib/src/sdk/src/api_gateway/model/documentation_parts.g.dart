// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.documentation_parts;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DocumentationParts extends DocumentationParts {
  @override
  final _i3.BuiltList<_i2.DocumentationPart>? items;
  @override
  final String? position;

  factory _$DocumentationParts(
          [void Function(DocumentationPartsBuilder)? updates]) =>
      (new DocumentationPartsBuilder()..update(updates))._build();

  _$DocumentationParts._({this.items, this.position}) : super._();

  @override
  DocumentationParts rebuild(
          void Function(DocumentationPartsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentationPartsBuilder toBuilder() =>
      new DocumentationPartsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentationParts &&
        items == other.items &&
        position == other.position;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DocumentationPartsBuilder
    implements Builder<DocumentationParts, DocumentationPartsBuilder> {
  _$DocumentationParts? _$v;

  _i3.ListBuilder<_i2.DocumentationPart>? _items;
  _i3.ListBuilder<_i2.DocumentationPart> get items =>
      _$this._items ??= new _i3.ListBuilder<_i2.DocumentationPart>();
  set items(_i3.ListBuilder<_i2.DocumentationPart>? items) =>
      _$this._items = items;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  DocumentationPartsBuilder() {
    DocumentationParts._init(this);
  }

  DocumentationPartsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentationParts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentationParts;
  }

  @override
  void update(void Function(DocumentationPartsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DocumentationParts build() => _build();

  _$DocumentationParts _build() {
    _$DocumentationParts _$result;
    try {
      _$result = _$v ??
          new _$DocumentationParts._(
              items: _items?.build(), position: position);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DocumentationParts', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
