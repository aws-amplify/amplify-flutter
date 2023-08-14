// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'through_resources_statement.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ThroughResourcesStatement extends ThroughResourcesStatement {
  @override
  final ResourceStatement? resourceStatement;

  factory _$ThroughResourcesStatement(
          [void Function(ThroughResourcesStatementBuilder)? updates]) =>
      (new ThroughResourcesStatementBuilder()..update(updates))._build();

  _$ThroughResourcesStatement._({this.resourceStatement}) : super._();

  @override
  ThroughResourcesStatement rebuild(
          void Function(ThroughResourcesStatementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThroughResourcesStatementBuilder toBuilder() =>
      new ThroughResourcesStatementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ThroughResourcesStatement &&
        resourceStatement == other.resourceStatement;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceStatement.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ThroughResourcesStatementBuilder
    implements
        Builder<ThroughResourcesStatement, ThroughResourcesStatementBuilder> {
  _$ThroughResourcesStatement? _$v;

  ResourceStatementBuilder? _resourceStatement;
  ResourceStatementBuilder get resourceStatement =>
      _$this._resourceStatement ??= new ResourceStatementBuilder();
  set resourceStatement(ResourceStatementBuilder? resourceStatement) =>
      _$this._resourceStatement = resourceStatement;

  ThroughResourcesStatementBuilder();

  ThroughResourcesStatementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceStatement = $v.resourceStatement?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ThroughResourcesStatement other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ThroughResourcesStatement;
  }

  @override
  void update(void Function(ThroughResourcesStatementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ThroughResourcesStatement build() => _build();

  _$ThroughResourcesStatement _build() {
    _$ThroughResourcesStatement _$result;
    try {
      _$result = _$v ??
          new _$ThroughResourcesStatement._(
              resourceStatement: _resourceStatement?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceStatement';
        _resourceStatement?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ThroughResourcesStatement', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
