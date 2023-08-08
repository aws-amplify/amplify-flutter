// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'malformed_request_body_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedRequestBodyInput extends MalformedRequestBodyInput {
  @override
  final int? int_;
  @override
  final double? float;

  factory _$MalformedRequestBodyInput(
          [void Function(MalformedRequestBodyInputBuilder)? updates]) =>
      (new MalformedRequestBodyInputBuilder()..update(updates))._build();

  _$MalformedRequestBodyInput._({this.int_, this.float}) : super._();

  @override
  MalformedRequestBodyInput rebuild(
          void Function(MalformedRequestBodyInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedRequestBodyInputBuilder toBuilder() =>
      new MalformedRequestBodyInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedRequestBodyInput &&
        int_ == other.int_ &&
        float == other.float;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, int_.hashCode);
    _$hash = $jc(_$hash, float.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedRequestBodyInputBuilder
    implements
        Builder<MalformedRequestBodyInput, MalformedRequestBodyInputBuilder> {
  _$MalformedRequestBodyInput? _$v;

  int? _int_;
  int? get int_ => _$this._int_;
  set int_(int? int_) => _$this._int_ = int_;

  double? _float;
  double? get float => _$this._float;
  set float(double? float) => _$this._float = float;

  MalformedRequestBodyInputBuilder();

  MalformedRequestBodyInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _int_ = $v.int_;
      _float = $v.float;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedRequestBodyInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedRequestBodyInput;
  }

  @override
  void update(void Function(MalformedRequestBodyInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedRequestBodyInput build() => _build();

  _$MalformedRequestBodyInput _build() {
    final _$result =
        _$v ?? new _$MalformedRequestBodyInput._(int_: int_, float: float);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
