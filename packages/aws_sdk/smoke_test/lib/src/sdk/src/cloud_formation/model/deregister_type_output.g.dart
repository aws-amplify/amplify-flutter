// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.deregister_type_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeregisterTypeOutput extends DeregisterTypeOutput {
  factory _$DeregisterTypeOutput(
          [void Function(DeregisterTypeOutputBuilder)? updates]) =>
      (new DeregisterTypeOutputBuilder()..update(updates))._build();

  _$DeregisterTypeOutput._() : super._();

  @override
  DeregisterTypeOutput rebuild(
          void Function(DeregisterTypeOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeregisterTypeOutputBuilder toBuilder() =>
      new DeregisterTypeOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeregisterTypeOutput;
  }

  @override
  int get hashCode {
    return 794078996;
  }
}

class DeregisterTypeOutputBuilder
    implements Builder<DeregisterTypeOutput, DeregisterTypeOutputBuilder> {
  _$DeregisterTypeOutput? _$v;

  DeregisterTypeOutputBuilder() {
    DeregisterTypeOutput._init(this);
  }

  @override
  void replace(DeregisterTypeOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeregisterTypeOutput;
  }

  @override
  void update(void Function(DeregisterTypeOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeregisterTypeOutput build() => _build();

  _$DeregisterTypeOutput _build() {
    final _$result = _$v ?? new _$DeregisterTypeOutput._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
