// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Model extends Model {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? schema;
  @override
  final String? contentType;

  factory _$Model([void Function(ModelBuilder)? updates]) =>
      (new ModelBuilder()..update(updates))._build();

  _$Model._(
      {this.id, this.name, this.description, this.schema, this.contentType})
      : super._();

  @override
  Model rebuild(void Function(ModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModelBuilder toBuilder() => new ModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Model &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        schema == other.schema &&
        contentType == other.contentType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, schema.hashCode);
    _$hash = $jc(_$hash, contentType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModelBuilder implements Builder<Model, ModelBuilder> {
  _$Model? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _schema;
  String? get schema => _$this._schema;
  set schema(String? schema) => _$this._schema = schema;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

  ModelBuilder() {
    Model._init(this);
  }

  ModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _schema = $v.schema;
      _contentType = $v.contentType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Model other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Model;
  }

  @override
  void update(void Function(ModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Model build() => _build();

  _$Model _build() {
    final _$result = _$v ??
        new _$Model._(
            id: id,
            name: name,
            description: description,
            schema: schema,
            contentType: contentType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
