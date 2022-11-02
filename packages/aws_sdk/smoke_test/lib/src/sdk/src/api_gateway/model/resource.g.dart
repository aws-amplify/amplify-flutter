// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.resource;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Resource extends Resource {
  @override
  final String? id;
  @override
  final String? parentId;
  @override
  final String? path;
  @override
  final String? pathPart;
  @override
  final _i3.BuiltMap<String, _i2.Method>? resourceMethods;

  factory _$Resource([void Function(ResourceBuilder)? updates]) =>
      (new ResourceBuilder()..update(updates))._build();

  _$Resource._(
      {this.id, this.parentId, this.path, this.pathPart, this.resourceMethods})
      : super._();

  @override
  Resource rebuild(void Function(ResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceBuilder toBuilder() => new ResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Resource &&
        id == other.id &&
        parentId == other.parentId &&
        path == other.path &&
        pathPart == other.pathPart &&
        resourceMethods == other.resourceMethods;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), parentId.hashCode), path.hashCode),
            pathPart.hashCode),
        resourceMethods.hashCode));
  }
}

class ResourceBuilder implements Builder<Resource, ResourceBuilder> {
  _$Resource? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _parentId;
  String? get parentId => _$this._parentId;
  set parentId(String? parentId) => _$this._parentId = parentId;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _pathPart;
  String? get pathPart => _$this._pathPart;
  set pathPart(String? pathPart) => _$this._pathPart = pathPart;

  _i3.MapBuilder<String, _i2.Method>? _resourceMethods;
  _i3.MapBuilder<String, _i2.Method> get resourceMethods =>
      _$this._resourceMethods ??= new _i3.MapBuilder<String, _i2.Method>();
  set resourceMethods(_i3.MapBuilder<String, _i2.Method>? resourceMethods) =>
      _$this._resourceMethods = resourceMethods;

  ResourceBuilder() {
    Resource._init(this);
  }

  ResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _parentId = $v.parentId;
      _path = $v.path;
      _pathPart = $v.pathPart;
      _resourceMethods = $v.resourceMethods?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Resource other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Resource;
  }

  @override
  void update(void Function(ResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Resource build() => _build();

  _$Resource _build() {
    _$Resource _$result;
    try {
      _$result = _$v ??
          new _$Resource._(
              id: id,
              parentId: parentId,
              path: path,
              pathPart: pathPart,
              resourceMethods: _resourceMethods?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceMethods';
        _resourceMethods?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Resource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
