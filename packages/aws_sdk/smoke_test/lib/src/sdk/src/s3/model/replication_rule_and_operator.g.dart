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
    var _$hash = 0;
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
