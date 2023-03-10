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
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, parentId.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, pathPart.hashCode);
    _$hash = $jc(_$hash, resourceMethods.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
