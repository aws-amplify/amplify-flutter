// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fractional_seconds_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FractionalSecondsOutput extends FractionalSecondsOutput {
  @override
  final DateTime? datetime;

  factory _$FractionalSecondsOutput(
          [void Function(FractionalSecondsOutputBuilder)? updates]) =>
      (new FractionalSecondsOutputBuilder()..update(updates))._build();

  _$FractionalSecondsOutput._({this.datetime}) : super._();

  @override
  FractionalSecondsOutput rebuild(
          void Function(FractionalSecondsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FractionalSecondsOutputBuilder toBuilder() =>
      new FractionalSecondsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FractionalSecondsOutput && datetime == other.datetime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, datetime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FractionalSecondsOutputBuilder
    implements
        Builder<FractionalSecondsOutput, FractionalSecondsOutputBuilder> {
  _$FractionalSecondsOutput? _$v;

  DateTime? _datetime;
  DateTime? get datetime => _$this._datetime;
  set datetime(DateTime? datetime) => _$this._datetime = datetime;

  FractionalSecondsOutputBuilder();

  FractionalSecondsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _datetime = $v.datetime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FractionalSecondsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FractionalSecondsOutput;
  }

  @override
  void update(void Function(FractionalSecondsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FractionalSecondsOutput build() => _build();

  _$FractionalSecondsOutput _build() {
    final _$result = _$v ?? new _$FractionalSecondsOutput._(datetime: datetime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
