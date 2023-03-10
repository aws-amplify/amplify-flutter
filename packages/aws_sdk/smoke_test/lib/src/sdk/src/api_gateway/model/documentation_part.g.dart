// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.documentation_part;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DocumentationPart extends DocumentationPart {
  @override
  final String? id;
  @override
  final _i2.DocumentationPartLocation? location;
  @override
  final String? properties;

  factory _$DocumentationPart(
          [void Function(DocumentationPartBuilder)? updates]) =>
      (new DocumentationPartBuilder()..update(updates))._build();

  _$DocumentationPart._({this.id, this.location, this.properties}) : super._();

  @override
  DocumentationPart rebuild(void Function(DocumentationPartBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentationPartBuilder toBuilder() =>
      new DocumentationPartBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentationPart &&
        id == other.id &&
        location == other.location &&
        properties == other.properties;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, properties.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DocumentationPartBuilder
    implements Builder<DocumentationPart, DocumentationPartBuilder> {
  _$DocumentationPart? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i2.DocumentationPartLocationBuilder? _location;
  _i2.DocumentationPartLocationBuilder get location =>
      _$this._location ??= new _i2.DocumentationPartLocationBuilder();
  set location(_i2.DocumentationPartLocationBuilder? location) =>
      _$this._location = location;

  String? _properties;
  String? get properties => _$this._properties;
  set properties(String? properties) => _$this._properties = properties;

  DocumentationPartBuilder() {
    DocumentationPart._init(this);
  }

  DocumentationPartBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _location = $v.location?.toBuilder();
      _properties = $v.properties;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentationPart other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentationPart;
  }

  @override
  void update(void Function(DocumentationPartBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DocumentationPart build() => _build();

  _$DocumentationPart _build() {
    _$DocumentationPart _$result;
    try {
      _$result = _$v ??
          new _$DocumentationPart._(
              id: id, location: _location?.build(), properties: properties);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DocumentationPart', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
