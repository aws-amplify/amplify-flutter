// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.deactivate_type_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeactivateTypeOutput extends DeactivateTypeOutput {
  factory _$DeactivateTypeOutput(
          [void Function(DeactivateTypeOutputBuilder)? updates]) =>
      (new DeactivateTypeOutputBuilder()..update(updates))._build();

  _$DeactivateTypeOutput._() : super._();

  @override
  DeactivateTypeOutput rebuild(
          void Function(DeactivateTypeOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeactivateTypeOutputBuilder toBuilder() =>
      new DeactivateTypeOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeactivateTypeOutput;
  }

  @override
  int get hashCode {
    return 493855857;
  }
}

class DeactivateTypeOutputBuilder
    implements Builder<DeactivateTypeOutput, DeactivateTypeOutputBuilder> {
  _$DeactivateTypeOutput? _$v;

  DeactivateTypeOutputBuilder() {
    DeactivateTypeOutput._init(this);
  }

  @override
  void replace(DeactivateTypeOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeactivateTypeOutput;
  }

  @override
  void update(void Function(DeactivateTypeOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeactivateTypeOutput build() => _build();

  _$DeactivateTypeOutput _build() {
    final _$result = _$v ?? new _$DeactivateTypeOutput._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
