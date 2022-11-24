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
    return $jf($jc($jc(0, items.hashCode), position.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
