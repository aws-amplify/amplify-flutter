// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smithy_ast.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SmithyVersion _$v1 = const SmithyVersion._('v1');
const SmithyVersion _$v2 = const SmithyVersion._('v2');

SmithyVersion _$SmithyVersionValueOf(String name) {
  switch (name) {
    case 'v1':
      return _$v1;
    case 'v2':
      return _$v2;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SmithyVersion> _$SmithyVersionValues =
    new BuiltSet<SmithyVersion>(const <SmithyVersion>[
  _$v1,
  _$v2,
]);

Serializer<SmithyAst> _$smithyAstSerializer = new _$SmithyAstSerializer();

class _$SmithyAstSerializer implements StructuredSerializer<SmithyAst> {
  @override
  final Iterable<Type> types = const [SmithyAst, _$SmithyAst];
  @override
  final String wireName = 'SmithyAst';

  @override
  Iterable<Object?> serialize(Serializers serializers, SmithyAst object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'smithy',
      serializers.serialize(object.version,
          specifiedType: const FullType(SmithyVersion)),
      'metadata',
      serializers.serialize(object.metadata,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(JsonObject)])),
      'shapes',
      serializers.serialize(object.shapes,
          specifiedType: const FullType(ShapeMap)),
    ];

    return result;
  }

  @override
  SmithyAst deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SmithyAstBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'smithy':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(SmithyVersion))! as SmithyVersion;
          break;
        case 'metadata':
          result.metadata.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(JsonObject)
              ]))!);
          break;
        case 'shapes':
          result.shapes = serializers.deserialize(value,
              specifiedType: const FullType(ShapeMap))! as ShapeMap;
          break;
      }
    }

    return result.build();
  }
}

class _$SmithyAst extends SmithyAst {
  @override
  final SmithyVersion version;
  @override
  final BuiltMap<String, JsonObject> metadata;
  @override
  final ShapeMap shapes;

  factory _$SmithyAst([void Function(SmithyAstBuilder)? updates]) =>
      (new SmithyAstBuilder()..update(updates))._build();

  _$SmithyAst._(
      {required this.version, required this.metadata, required this.shapes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(version, r'SmithyAst', 'version');
    BuiltValueNullFieldError.checkNotNull(metadata, r'SmithyAst', 'metadata');
    BuiltValueNullFieldError.checkNotNull(shapes, r'SmithyAst', 'shapes');
  }

  @override
  SmithyAst rebuild(void Function(SmithyAstBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SmithyAstBuilder toBuilder() => new SmithyAstBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SmithyAst &&
        version == other.version &&
        metadata == other.metadata &&
        shapes == other.shapes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, shapes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SmithyAst')
          ..add('version', version)
          ..add('metadata', metadata)
          ..add('shapes', shapes))
        .toString();
  }
}

class SmithyAstBuilder implements Builder<SmithyAst, SmithyAstBuilder> {
  _$SmithyAst? _$v;

  SmithyVersion? _version;
  SmithyVersion? get version => _$this._version;
  set version(SmithyVersion? version) => _$this._version = version;

  MapBuilder<String, JsonObject>? _metadata;
  MapBuilder<String, JsonObject> get metadata =>
      _$this._metadata ??= new MapBuilder<String, JsonObject>();
  set metadata(MapBuilder<String, JsonObject>? metadata) =>
      _$this._metadata = metadata;

  ShapeMap? _shapes;
  ShapeMap? get shapes => _$this._shapes;
  set shapes(ShapeMap? shapes) => _$this._shapes = shapes;

  SmithyAstBuilder();

  SmithyAstBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _metadata = $v.metadata.toBuilder();
      _shapes = $v.shapes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SmithyAst other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SmithyAst;
  }

  @override
  void update(void Function(SmithyAstBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SmithyAst build() => _build();

  _$SmithyAst _build() {
    SmithyAst._init(this);
    _$SmithyAst _$result;
    try {
      _$result = _$v ??
          new _$SmithyAst._(
              version: BuiltValueNullFieldError.checkNotNull(
                  version, r'SmithyAst', 'version'),
              metadata: metadata.build(),
              shapes: BuiltValueNullFieldError.checkNotNull(
                  shapes, r'SmithyAst', 'shapes'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        metadata.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SmithyAst', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
