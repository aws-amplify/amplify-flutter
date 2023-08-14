// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fpga_image_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FpgaImageState extends FpgaImageState {
  @override
  final FpgaImageStateCode? code;
  @override
  final String? message;

  factory _$FpgaImageState([void Function(FpgaImageStateBuilder)? updates]) =>
      (new FpgaImageStateBuilder()..update(updates))._build();

  _$FpgaImageState._({this.code, this.message}) : super._();

  @override
  FpgaImageState rebuild(void Function(FpgaImageStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FpgaImageStateBuilder toBuilder() =>
      new FpgaImageStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FpgaImageState &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FpgaImageStateBuilder
    implements Builder<FpgaImageState, FpgaImageStateBuilder> {
  _$FpgaImageState? _$v;

  FpgaImageStateCode? _code;
  FpgaImageStateCode? get code => _$this._code;
  set code(FpgaImageStateCode? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  FpgaImageStateBuilder();

  FpgaImageStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FpgaImageState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FpgaImageState;
  }

  @override
  void update(void Function(FpgaImageStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FpgaImageState build() => _build();

  _$FpgaImageState _build() {
    final _$result =
        _$v ?? new _$FpgaImageState._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
