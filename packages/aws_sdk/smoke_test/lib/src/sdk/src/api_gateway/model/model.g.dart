// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Model extends Model {
  @override
  final String? contentType;
  @override
  final String? description;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? schema;

  factory _$Model([void Function(ModelBuilder)? updates]) =>
      (new ModelBuilder()..update(updates))._build();

  _$Model._(
      {this.contentType, this.description, this.id, this.name, this.schema})
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
        contentType == other.contentType &&
        description == other.description &&
        id == other.id &&
        name == other.name &&
        schema == other.schema;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, contentType.hashCode), description.hashCode),
                id.hashCode),
            name.hashCode),
        schema.hashCode));
  }
}

class ModelBuilder implements Builder<Model, ModelBuilder> {
  _$Model? _$v;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _schema;
  String? get schema => _$this._schema;
  set schema(String? schema) => _$this._schema = schema;

  ModelBuilder() {
    Model._init(this);
  }

  ModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contentType = $v.contentType;
      _description = $v.description;
      _id = $v.id;
      _name = $v.name;
      _schema = $v.schema;
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
            contentType: contentType,
            description: description,
            id: id,
            name: name,
            schema: schema);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
