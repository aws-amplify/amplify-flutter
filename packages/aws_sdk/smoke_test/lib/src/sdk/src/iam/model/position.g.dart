// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Position extends Position {
  @override
  final int line;
  @override
  final int column;

  factory _$Position([void Function(PositionBuilder)? updates]) =>
      (new PositionBuilder()..update(updates))._build();

  _$Position._({required this.line, required this.column}) : super._() {
    BuiltValueNullFieldError.checkNotNull(line, r'Position', 'line');
    BuiltValueNullFieldError.checkNotNull(column, r'Position', 'column');
  }

  @override
  Position rebuild(void Function(PositionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PositionBuilder toBuilder() => new PositionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Position && line == other.line && column == other.column;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, line.hashCode);
    _$hash = $jc(_$hash, column.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PositionBuilder implements Builder<Position, PositionBuilder> {
  _$Position? _$v;

  int? _line;
  int? get line => _$this._line;
  set line(int? line) => _$this._line = line;

  int? _column;
  int? get column => _$this._column;
  set column(int? column) => _$this._column = column;

  PositionBuilder() {
    Position._init(this);
  }

  PositionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _line = $v.line;
      _column = $v.column;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Position other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Position;
  }

  @override
  void update(void Function(PositionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Position build() => _build();

  _$Position _build() {
    final _$result = _$v ??
        new _$Position._(
            line: BuiltValueNullFieldError.checkNotNull(
                line, r'Position', 'line'),
            column: BuiltValueNullFieldError.checkNotNull(
                column, r'Position', 'column'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
