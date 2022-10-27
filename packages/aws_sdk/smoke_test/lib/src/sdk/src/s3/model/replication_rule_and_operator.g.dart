// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.replication_rule_and_operator;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicationRuleAndOperator extends ReplicationRuleAndOperator {
  @override
  final String? prefix;
  @override
  final _i3.BuiltList<_i2.Tag>? tags;

  factory _$ReplicationRuleAndOperator(
          [void Function(ReplicationRuleAndOperatorBuilder)? updates]) =>
      (new ReplicationRuleAndOperatorBuilder()..update(updates))._build();

  _$ReplicationRuleAndOperator._({this.prefix, this.tags}) : super._();

  @override
  ReplicationRuleAndOperator rebuild(
          void Function(ReplicationRuleAndOperatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplicationRuleAndOperatorBuilder toBuilder() =>
      new ReplicationRuleAndOperatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplicationRuleAndOperator &&
        prefix == other.prefix &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, prefix.hashCode), tags.hashCode));
  }
}

class ReplicationRuleAndOperatorBuilder
    implements
        Builder<ReplicationRuleAndOperator, ReplicationRuleAndOperatorBuilder> {
  _$ReplicationRuleAndOperator? _$v;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  _i3.ListBuilder<_i2.Tag>? _tags;
  _i3.ListBuilder<_i2.Tag> get tags =>
      _$this._tags ??= new _i3.ListBuilder<_i2.Tag>();
  set tags(_i3.ListBuilder<_i2.Tag>? tags) => _$this._tags = tags;

  ReplicationRuleAndOperatorBuilder() {
    ReplicationRuleAndOperator._init(this);
  }

  ReplicationRuleAndOperatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prefix = $v.prefix;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplicationRuleAndOperator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplicationRuleAndOperator;
  }

  @override
  void update(void Function(ReplicationRuleAndOperatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplicationRuleAndOperator build() => _build();

  _$ReplicationRuleAndOperator _build() {
    _$ReplicationRuleAndOperator _$result;
    try {
      _$result = _$v ??
          new _$ReplicationRuleAndOperator._(
              prefix: prefix, tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReplicationRuleAndOperator', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
