// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OperationShape> _$operationShapeSerializer =
    new _$OperationShapeSerializer();

class _$OperationShapeSerializer
    implements StructuredSerializer<OperationShape> {
  @override
  final Iterable<Type> types = const [OperationShape, _$OperationShape];
  @override
  final String wireName = 'OperationShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, OperationShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'errors',
      serializers.serialize(object.errors,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ShapeRef)])),
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];
    Object? value;
    value = object.input;
    if (value != null) {
      result
        ..add('input')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ShapeRef)));
    }
    value = object.output;
    if (value != null) {
      result
        ..add('output')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ShapeRef)));
    }
    return result;
  }

  @override
  OperationShape deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OperationShapeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
              specifiedType: const FullType(ShapeRef))! as ShapeRef);
          break;
        case 'output':
          result.output.replace(serializers.deserialize(value,
              specifiedType: const FullType(ShapeRef))! as ShapeRef);
          break;
        case 'errors':
          result.errors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ShapeRef)]))!
              as BuiltList<Object?>);
          break;
        case 'traits':
          result.traits = serializers.deserialize(value,
              specifiedType: const FullType(TraitMap))! as TraitMap;
          break;
      }
    }

    return result.build();
  }
}

class _$OperationShape extends OperationShape {
  @override
  final ShapeRef? input;
  @override
  final ShapeRef? output;
  @override
  final BuiltList<ShapeRef> errors;
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$OperationShape([void Function(OperationShapeBuilder)? updates]) =>
      (new OperationShapeBuilder()..update(updates))._build();

  _$OperationShape._(
      {this.input,
      this.output,
      required this.errors,
      required this.shapeId,
      required this.traits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(errors, 'OperationShape', 'errors');
    BuiltValueNullFieldError.checkNotNull(shapeId, 'OperationShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, 'OperationShape', 'traits');
  }

  @override
  OperationShape rebuild(void Function(OperationShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperationShapeBuilder toBuilder() =>
      new OperationShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperationShape &&
        input == other.input &&
        output == other.output &&
        errors == other.errors &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, input.hashCode), output.hashCode), errors.hashCode),
            shapeId.hashCode),
        traits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OperationShape')
          ..add('input', input)
          ..add('output', output)
          ..add('errors', errors)
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class OperationShapeBuilder
    implements Builder<OperationShape, OperationShapeBuilder>, ShapeBuilder {
  _$OperationShape? _$v;

  ShapeRefBuilder? _input;
  ShapeRefBuilder get input => _$this._input ??= new ShapeRefBuilder();
  set input(covariant ShapeRefBuilder? input) => _$this._input = input;

  ShapeRefBuilder? _output;
  ShapeRefBuilder get output => _$this._output ??= new ShapeRefBuilder();
  set output(covariant ShapeRefBuilder? output) => _$this._output = output;

  ListBuilder<ShapeRef>? _errors;
  ListBuilder<ShapeRef> get errors =>
      _$this._errors ??= new ListBuilder<ShapeRef>();
  set errors(covariant ListBuilder<ShapeRef>? errors) =>
      _$this._errors = errors;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  OperationShapeBuilder() {
    OperationShape._init(this);
  }

  OperationShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input?.toBuilder();
      _output = $v.output?.toBuilder();
      _errors = $v.errors.toBuilder();
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant OperationShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OperationShape;
  }

  @override
  void update(void Function(OperationShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperationShape build() => _build();

  _$OperationShape _build() {
    _$OperationShape _$result;
    try {
      _$result = _$v ??
          new _$OperationShape._(
              input: _input?.build(),
              output: _output?.build(),
              errors: errors.build(),
              shapeId: BuiltValueNullFieldError.checkNotNull(
                  shapeId, 'OperationShape', 'shapeId'),
              traits: BuiltValueNullFieldError.checkNotNull(
                  traits, 'OperationShape', 'traits'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        _input?.build();
        _$failedField = 'output';
        _output?.build();
        _$failedField = 'errors';
        errors.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OperationShape', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
