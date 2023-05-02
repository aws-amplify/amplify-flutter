// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.set_type_default_version_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetTypeDefaultVersionOutput extends SetTypeDefaultVersionOutput {
  factory _$SetTypeDefaultVersionOutput(
          [void Function(SetTypeDefaultVersionOutputBuilder)? updates]) =>
      (new SetTypeDefaultVersionOutputBuilder()..update(updates))._build();

  _$SetTypeDefaultVersionOutput._() : super._();

  @override
  SetTypeDefaultVersionOutput rebuild(
          void Function(SetTypeDefaultVersionOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetTypeDefaultVersionOutputBuilder toBuilder() =>
      new SetTypeDefaultVersionOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetTypeDefaultVersionOutput;
  }

  @override
  int get hashCode {
    return 870014089;
  }
}

class SetTypeDefaultVersionOutputBuilder
    implements
        Builder<SetTypeDefaultVersionOutput,
            SetTypeDefaultVersionOutputBuilder> {
  _$SetTypeDefaultVersionOutput? _$v;

  SetTypeDefaultVersionOutputBuilder() {
    SetTypeDefaultVersionOutput._init(this);
  }

  @override
  void replace(SetTypeDefaultVersionOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetTypeDefaultVersionOutput;
  }

  @override
  void update(void Function(SetTypeDefaultVersionOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetTypeDefaultVersionOutput build() => _build();

  _$SetTypeDefaultVersionOutput _build() {
    final _$result = _$v ?? new _$SetTypeDefaultVersionOutput._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
