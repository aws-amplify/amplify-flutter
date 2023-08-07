// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statement.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Statement extends Statement {
  @override
  final String? sourcePolicyId;
  @override
  final PolicySourceType? sourcePolicyType;
  @override
  final Position? startPosition;
  @override
  final Position? endPosition;

  factory _$Statement([void Function(StatementBuilder)? updates]) =>
      (new StatementBuilder()..update(updates))._build();

  _$Statement._(
      {this.sourcePolicyId,
      this.sourcePolicyType,
      this.startPosition,
      this.endPosition})
      : super._();

  @override
  Statement rebuild(void Function(StatementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatementBuilder toBuilder() => new StatementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Statement &&
        sourcePolicyId == other.sourcePolicyId &&
        sourcePolicyType == other.sourcePolicyType &&
        startPosition == other.startPosition &&
        endPosition == other.endPosition;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourcePolicyId.hashCode);
    _$hash = $jc(_$hash, sourcePolicyType.hashCode);
    _$hash = $jc(_$hash, startPosition.hashCode);
    _$hash = $jc(_$hash, endPosition.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StatementBuilder implements Builder<Statement, StatementBuilder> {
  _$Statement? _$v;

  String? _sourcePolicyId;
  String? get sourcePolicyId => _$this._sourcePolicyId;
  set sourcePolicyId(String? sourcePolicyId) =>
      _$this._sourcePolicyId = sourcePolicyId;

  PolicySourceType? _sourcePolicyType;
  PolicySourceType? get sourcePolicyType => _$this._sourcePolicyType;
  set sourcePolicyType(PolicySourceType? sourcePolicyType) =>
      _$this._sourcePolicyType = sourcePolicyType;

  PositionBuilder? _startPosition;
  PositionBuilder get startPosition =>
      _$this._startPosition ??= new PositionBuilder();
  set startPosition(PositionBuilder? startPosition) =>
      _$this._startPosition = startPosition;

  PositionBuilder? _endPosition;
  PositionBuilder get endPosition =>
      _$this._endPosition ??= new PositionBuilder();
  set endPosition(PositionBuilder? endPosition) =>
      _$this._endPosition = endPosition;

  StatementBuilder();

  StatementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourcePolicyId = $v.sourcePolicyId;
      _sourcePolicyType = $v.sourcePolicyType;
      _startPosition = $v.startPosition?.toBuilder();
      _endPosition = $v.endPosition?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Statement other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Statement;
  }

  @override
  void update(void Function(StatementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Statement build() => _build();

  _$Statement _build() {
    _$Statement _$result;
    try {
      _$result = _$v ??
          new _$Statement._(
              sourcePolicyId: sourcePolicyId,
              sourcePolicyType: sourcePolicyType,
              startPosition: _startPosition?.build(),
              endPosition: _endPosition?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'startPosition';
        _startPosition?.build();
        _$failedField = 'endPosition';
        _endPosition?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Statement', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
