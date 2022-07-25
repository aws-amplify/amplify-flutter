// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ResourceShape> _$resourceShapeSerializer =
    new _$ResourceShapeSerializer();

class _$ResourceShapeSerializer implements StructuredSerializer<ResourceShape> {
  @override
  final Iterable<Type> types = const [ResourceShape, _$ResourceShape];
  @override
  final String wireName = 'ResourceShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, ResourceShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'identifiers',
      serializers.serialize(object.identifiers,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(ShapeRef)])),
      'collectionOperations',
      serializers.serialize(object.collectionOperations,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(ShapeRef)])),
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
      'resources',
      serializers.serialize(object.resources,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(ShapeRef)])),
      'operations',
      serializers.serialize(object.operations,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(ShapeRef)])),
    ];
    Object? value;
    value = object.put;
    if (value != null) {
      result
        ..add('put')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ShapeRef)));
    }
    value = object.create;
    if (value != null) {
      result
        ..add('create')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ShapeRef)));
    }
    value = object.read;
    if (value != null) {
      result
        ..add('read')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ShapeRef)));
    }
    value = object.update_;
    if (value != null) {
      result
        ..add('update')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ShapeRef)));
    }
    value = object.delete;
    if (value != null) {
      result
        ..add('delete')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ShapeRef)));
    }
    value = object.list;
    if (value != null) {
      result
        ..add('list')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ShapeRef)));
    }
    return result;
  }

  @override
  ResourceShape deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ResourceShapeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'identifiers':
          result.identifiers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(ShapeRef)]))!);
          break;
        case 'put':
          result.put.replace(serializers.deserialize(value,
              specifiedType: const FullType(ShapeRef))! as ShapeRef);
          break;
        case 'create':
          result.create.replace(serializers.deserialize(value,
              specifiedType: const FullType(ShapeRef))! as ShapeRef);
          break;
        case 'read':
          result.read.replace(serializers.deserialize(value,
              specifiedType: const FullType(ShapeRef))! as ShapeRef);
          break;
        case 'update':
          result.update_.replace(serializers.deserialize(value,
              specifiedType: const FullType(ShapeRef))! as ShapeRef);
          break;
        case 'delete':
          result.delete.replace(serializers.deserialize(value,
              specifiedType: const FullType(ShapeRef))! as ShapeRef);
          break;
        case 'list':
          result.list.replace(serializers.deserialize(value,
              specifiedType: const FullType(ShapeRef))! as ShapeRef);
          break;
        case 'collectionOperations':
          result.collectionOperations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltSet, const [const FullType(ShapeRef)]))!
              as BuiltSet<Object?>);
          break;
        case 'traits':
          result.traits = serializers.deserialize(value,
              specifiedType: const FullType(TraitMap))! as TraitMap;
          break;
        case 'resources':
          result.resources.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltSet, const [const FullType(ShapeRef)]))!
              as BuiltSet<Object?>);
          break;
        case 'operations':
          result.operations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltSet, const [const FullType(ShapeRef)]))!
              as BuiltSet<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ResourceShape extends ResourceShape {
  @override
  final BuiltMap<String, ShapeRef> identifiers;
  @override
  final ShapeRef? put;
  @override
  final ShapeRef? create;
  @override
  final ShapeRef? read;
  @override
  final ShapeRef? update_;
  @override
  final ShapeRef? delete;
  @override
  final ShapeRef? list;
  @override
  final BuiltSet<ShapeRef> collectionOperations;
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;
  @override
  final BuiltSet<ShapeRef> resources;
  @override
  final BuiltSet<ShapeRef> operations;

  factory _$ResourceShape([void Function(ResourceShapeBuilder)? updates]) =>
      (new ResourceShapeBuilder()..update(updates))._build();

  _$ResourceShape._(
      {required this.identifiers,
      this.put,
      this.create,
      this.read,
      this.update_,
      this.delete,
      this.list,
      required this.collectionOperations,
      required this.shapeId,
      required this.traits,
      required this.resources,
      required this.operations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        identifiers, r'ResourceShape', 'identifiers');
    BuiltValueNullFieldError.checkNotNull(
        collectionOperations, r'ResourceShape', 'collectionOperations');
    BuiltValueNullFieldError.checkNotNull(shapeId, r'ResourceShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, r'ResourceShape', 'traits');
    BuiltValueNullFieldError.checkNotNull(
        resources, r'ResourceShape', 'resources');
    BuiltValueNullFieldError.checkNotNull(
        operations, r'ResourceShape', 'operations');
  }

  @override
  ResourceShape rebuild(void Function(ResourceShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceShapeBuilder toBuilder() => new ResourceShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceShape &&
        identifiers == other.identifiers &&
        put == other.put &&
        create == other.create &&
        read == other.read &&
        update_ == other.update_ &&
        delete == other.delete &&
        list == other.list &&
        collectionOperations == other.collectionOperations &&
        shapeId == other.shapeId &&
        traits == other.traits &&
        resources == other.resources &&
        operations == other.operations;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, identifiers.hashCode),
                                                put.hashCode),
                                            create.hashCode),
                                        read.hashCode),
                                    update_.hashCode),
                                delete.hashCode),
                            list.hashCode),
                        collectionOperations.hashCode),
                    shapeId.hashCode),
                traits.hashCode),
            resources.hashCode),
        operations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResourceShape')
          ..add('identifiers', identifiers)
          ..add('put', put)
          ..add('create', create)
          ..add('read', read)
          ..add('update_', update_)
          ..add('delete', delete)
          ..add('list', list)
          ..add('collectionOperations', collectionOperations)
          ..add('shapeId', shapeId)
          ..add('traits', traits)
          ..add('resources', resources)
          ..add('operations', operations))
        .toString();
  }
}

class ResourceShapeBuilder
    implements Builder<ResourceShape, ResourceShapeBuilder>, ShapeBuilder {
  _$ResourceShape? _$v;

  MapBuilder<String, ShapeRef>? _identifiers;
  MapBuilder<String, ShapeRef> get identifiers =>
      _$this._identifiers ??= new MapBuilder<String, ShapeRef>();
  set identifiers(covariant MapBuilder<String, ShapeRef>? identifiers) =>
      _$this._identifiers = identifiers;

  ShapeRefBuilder? _put;
  ShapeRefBuilder get put => _$this._put ??= new ShapeRefBuilder();
  set put(covariant ShapeRefBuilder? put) => _$this._put = put;

  ShapeRefBuilder? _create;
  ShapeRefBuilder get create => _$this._create ??= new ShapeRefBuilder();
  set create(covariant ShapeRefBuilder? create) => _$this._create = create;

  ShapeRefBuilder? _read;
  ShapeRefBuilder get read => _$this._read ??= new ShapeRefBuilder();
  set read(covariant ShapeRefBuilder? read) => _$this._read = read;

  ShapeRefBuilder? _update_;
  ShapeRefBuilder get update_ => _$this._update_ ??= new ShapeRefBuilder();
  set update_(covariant ShapeRefBuilder? update_) => _$this._update_ = update_;

  ShapeRefBuilder? _delete;
  ShapeRefBuilder get delete => _$this._delete ??= new ShapeRefBuilder();
  set delete(covariant ShapeRefBuilder? delete) => _$this._delete = delete;

  ShapeRefBuilder? _list;
  ShapeRefBuilder get list => _$this._list ??= new ShapeRefBuilder();
  set list(covariant ShapeRefBuilder? list) => _$this._list = list;

  SetBuilder<ShapeRef>? _collectionOperations;
  SetBuilder<ShapeRef> get collectionOperations =>
      _$this._collectionOperations ??= new SetBuilder<ShapeRef>();
  set collectionOperations(
          covariant SetBuilder<ShapeRef>? collectionOperations) =>
      _$this._collectionOperations = collectionOperations;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  SetBuilder<ShapeRef>? _resources;
  SetBuilder<ShapeRef> get resources =>
      _$this._resources ??= new SetBuilder<ShapeRef>();
  set resources(covariant SetBuilder<ShapeRef>? resources) =>
      _$this._resources = resources;

  SetBuilder<ShapeRef>? _operations;
  SetBuilder<ShapeRef> get operations =>
      _$this._operations ??= new SetBuilder<ShapeRef>();
  set operations(covariant SetBuilder<ShapeRef>? operations) =>
      _$this._operations = operations;

  ResourceShapeBuilder() {
    ResourceShape._init(this);
  }

  ResourceShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _identifiers = $v.identifiers.toBuilder();
      _put = $v.put?.toBuilder();
      _create = $v.create?.toBuilder();
      _read = $v.read?.toBuilder();
      _update_ = $v.update_?.toBuilder();
      _delete = $v.delete?.toBuilder();
      _list = $v.list?.toBuilder();
      _collectionOperations = $v.collectionOperations.toBuilder();
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _resources = $v.resources.toBuilder();
      _operations = $v.operations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ResourceShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceShape;
  }

  @override
  void update(void Function(ResourceShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceShape build() => _build();

  _$ResourceShape _build() {
    _$ResourceShape _$result;
    try {
      _$result = _$v ??
          new _$ResourceShape._(
              identifiers: identifiers.build(),
              put: _put?.build(),
              create: _create?.build(),
              read: _read?.build(),
              update_: _update_?.build(),
              delete: _delete?.build(),
              list: _list?.build(),
              collectionOperations: collectionOperations.build(),
              shapeId: BuiltValueNullFieldError.checkNotNull(
                  shapeId, r'ResourceShape', 'shapeId'),
              traits: BuiltValueNullFieldError.checkNotNull(
                  traits, r'ResourceShape', 'traits'),
              resources: resources.build(),
              operations: operations.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'identifiers';
        identifiers.build();
        _$failedField = 'put';
        _put?.build();
        _$failedField = 'create';
        _create?.build();
        _$failedField = 'read';
        _read?.build();
        _$failedField = 'update_';
        _update_?.build();
        _$failedField = 'delete';
        _delete?.build();
        _$failedField = 'list';
        _list?.build();
        _$failedField = 'collectionOperations';
        collectionOperations.build();

        _$failedField = 'resources';
        resources.build();
        _$failedField = 'operations';
        operations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ResourceShape', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
