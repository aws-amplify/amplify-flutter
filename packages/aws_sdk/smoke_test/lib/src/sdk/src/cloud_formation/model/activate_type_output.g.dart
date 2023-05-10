// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.activate_type_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ActivateTypeOutput extends ActivateTypeOutput {
  @override
  final String? arn;

  factory _$ActivateTypeOutput(
          [void Function(ActivateTypeOutputBuilder)? updates]) =>
      (new ActivateTypeOutputBuilder()..update(updates))._build();

  _$ActivateTypeOutput._({this.arn}) : super._();

  @override
  ActivateTypeOutput rebuild(
          void Function(ActivateTypeOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivateTypeOutputBuilder toBuilder() =>
      new ActivateTypeOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivateTypeOutput && arn == other.arn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ActivateTypeOutputBuilder
    implements Builder<ActivateTypeOutput, ActivateTypeOutputBuilder> {
  _$ActivateTypeOutput? _$v;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  ActivateTypeOutputBuilder() {
    ActivateTypeOutput._init(this);
  }

  ActivateTypeOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _arn = $v.arn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActivateTypeOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActivateTypeOutput;
  }

  @override
  void update(void Function(ActivateTypeOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActivateTypeOutput build() => _build();

  _$ActivateTypeOutput _build() {
    final _$result = _$v ?? new _$ActivateTypeOutput._(arn: arn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
