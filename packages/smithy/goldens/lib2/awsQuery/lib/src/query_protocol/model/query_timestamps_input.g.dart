// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_timestamps_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueryTimestampsInput extends QueryTimestampsInput {
  @override
  final DateTime? normalFormat;
  @override
  final DateTime? epochMember;
  @override
  final DateTime? epochTarget;

  factory _$QueryTimestampsInput(
          [void Function(QueryTimestampsInputBuilder)? updates]) =>
      (new QueryTimestampsInputBuilder()..update(updates))._build();

  _$QueryTimestampsInput._(
      {this.normalFormat, this.epochMember, this.epochTarget})
      : super._();

  @override
  QueryTimestampsInput rebuild(
          void Function(QueryTimestampsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueryTimestampsInputBuilder toBuilder() =>
      new QueryTimestampsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueryTimestampsInput &&
        normalFormat == other.normalFormat &&
        epochMember == other.epochMember &&
        epochTarget == other.epochTarget;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, normalFormat.hashCode);
    _$hash = $jc(_$hash, epochMember.hashCode);
    _$hash = $jc(_$hash, epochTarget.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class QueryTimestampsInputBuilder
    implements Builder<QueryTimestampsInput, QueryTimestampsInputBuilder> {
  _$QueryTimestampsInput? _$v;

  DateTime? _normalFormat;
  DateTime? get normalFormat => _$this._normalFormat;
  set normalFormat(DateTime? normalFormat) =>
      _$this._normalFormat = normalFormat;

  DateTime? _epochMember;
  DateTime? get epochMember => _$this._epochMember;
  set epochMember(DateTime? epochMember) => _$this._epochMember = epochMember;

  DateTime? _epochTarget;
  DateTime? get epochTarget => _$this._epochTarget;
  set epochTarget(DateTime? epochTarget) => _$this._epochTarget = epochTarget;

  QueryTimestampsInputBuilder();

  QueryTimestampsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _normalFormat = $v.normalFormat;
      _epochMember = $v.epochMember;
      _epochTarget = $v.epochTarget;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QueryTimestampsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QueryTimestampsInput;
  }

  @override
  void update(void Function(QueryTimestampsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueryTimestampsInput build() => _build();

  _$QueryTimestampsInput _build() {
    final _$result = _$v ??
        new _$QueryTimestampsInput._(
            normalFormat: normalFormat,
            epochMember: epochMember,
            epochTarget: epochTarget);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
