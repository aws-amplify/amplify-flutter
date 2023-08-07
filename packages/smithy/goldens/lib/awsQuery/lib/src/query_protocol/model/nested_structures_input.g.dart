// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nested_structures_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NestedStructuresInput extends NestedStructuresInput {
  @override
  final StructArg? nested;

  factory _$NestedStructuresInput(
          [void Function(NestedStructuresInputBuilder)? updates]) =>
      (new NestedStructuresInputBuilder()..update(updates))._build();

  _$NestedStructuresInput._({this.nested}) : super._();

  @override
  NestedStructuresInput rebuild(
          void Function(NestedStructuresInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NestedStructuresInputBuilder toBuilder() =>
      new NestedStructuresInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NestedStructuresInput && nested == other.nested;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nested.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NestedStructuresInputBuilder
    implements Builder<NestedStructuresInput, NestedStructuresInputBuilder> {
  _$NestedStructuresInput? _$v;

  StructArgBuilder? _nested;
  StructArgBuilder get nested => _$this._nested ??= new StructArgBuilder();
  set nested(StructArgBuilder? nested) => _$this._nested = nested;

  NestedStructuresInputBuilder();

  NestedStructuresInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nested = $v.nested?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NestedStructuresInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NestedStructuresInput;
  }

  @override
  void update(void Function(NestedStructuresInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NestedStructuresInput build() => _build();

  _$NestedStructuresInput _build() {
    _$NestedStructuresInput _$result;
    try {
      _$result = _$v ?? new _$NestedStructuresInput._(nested: _nested?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nested';
        _nested?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NestedStructuresInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
