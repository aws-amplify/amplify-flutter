// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.malformed_request_body_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedRequestBodyInput extends MalformedRequestBodyInput {
  @override
  final double? float;
  @override
  final int? int_;

  factory _$MalformedRequestBodyInput(
          [void Function(MalformedRequestBodyInputBuilder)? updates]) =>
      (new MalformedRequestBodyInputBuilder()..update(updates))._build();

  _$MalformedRequestBodyInput._({this.float, this.int_}) : super._();

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
        float == other.float &&
        int_ == other.int_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, float.hashCode);
    _$hash = $jc(_$hash, int_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedRequestBodyInputBuilder
    implements
        Builder<MalformedRequestBodyInput, MalformedRequestBodyInputBuilder> {
  _$MalformedRequestBodyInput? _$v;

  double? _float;
  double? get float => _$this._float;
  set float(double? float) => _$this._float = float;

  int? _int_;
  int? get int_ => _$this._int_;
  set int_(int? int_) => _$this._int_ = int_;

  MalformedRequestBodyInputBuilder() {
    MalformedRequestBodyInput._init(this);
  }

  MalformedRequestBodyInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _float = $v.float;
      _int_ = $v.int_;
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
        _$v ?? new _$MalformedRequestBodyInput._(float: float, int_: int_);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
