// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.statement;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Statement extends Statement {
  @override
  final String? sourcePolicyId;
  @override
  final _i2.PolicySourceType? sourcePolicyType;
  @override
  final _i3.Position? startPosition;
  @override
  final _i3.Position? endPosition;

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

  _i2.PolicySourceType? _sourcePolicyType;
  _i2.PolicySourceType? get sourcePolicyType => _$this._sourcePolicyType;
  set sourcePolicyType(_i2.PolicySourceType? sourcePolicyType) =>
      _$this._sourcePolicyType = sourcePolicyType;

  _i3.PositionBuilder? _startPosition;
  _i3.PositionBuilder get startPosition =>
      _$this._startPosition ??= new _i3.PositionBuilder();
  set startPosition(_i3.PositionBuilder? startPosition) =>
      _$this._startPosition = startPosition;

  _i3.PositionBuilder? _endPosition;
  _i3.PositionBuilder get endPosition =>
      _$this._endPosition ??= new _i3.PositionBuilder();
  set endPosition(_i3.PositionBuilder? endPosition) =>
      _$this._endPosition = endPosition;

  StatementBuilder() {
    Statement._init(this);
  }

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
