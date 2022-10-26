// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.lifecycle_rule_and_operator;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LifecycleRuleAndOperator extends LifecycleRuleAndOperator {
  @override
  final _i2.Int64? objectSizeGreaterThan;
  @override
  final _i2.Int64? objectSizeLessThan;
  @override
  final String? prefix;
  @override
  final _i4.BuiltList<_i3.Tag>? tags;

  factory _$LifecycleRuleAndOperator(
          [void Function(LifecycleRuleAndOperatorBuilder)? updates]) =>
      (new LifecycleRuleAndOperatorBuilder()..update(updates))._build();

  _$LifecycleRuleAndOperator._(
      {this.objectSizeGreaterThan,
      this.objectSizeLessThan,
      this.prefix,
      this.tags})
      : super._();

  @override
  LifecycleRuleAndOperator rebuild(
          void Function(LifecycleRuleAndOperatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LifecycleRuleAndOperatorBuilder toBuilder() =>
      new LifecycleRuleAndOperatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LifecycleRuleAndOperator &&
        objectSizeGreaterThan == other.objectSizeGreaterThan &&
        objectSizeLessThan == other.objectSizeLessThan &&
        prefix == other.prefix &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc(0, objectSizeGreaterThan.hashCode),
                objectSizeLessThan.hashCode),
            prefix.hashCode),
        tags.hashCode));
  }
}

class LifecycleRuleAndOperatorBuilder
    implements
        Builder<LifecycleRuleAndOperator, LifecycleRuleAndOperatorBuilder> {
  _$LifecycleRuleAndOperator? _$v;

  _i2.Int64? _objectSizeGreaterThan;
  _i2.Int64? get objectSizeGreaterThan => _$this._objectSizeGreaterThan;
  set objectSizeGreaterThan(_i2.Int64? objectSizeGreaterThan) =>
      _$this._objectSizeGreaterThan = objectSizeGreaterThan;

  _i2.Int64? _objectSizeLessThan;
  _i2.Int64? get objectSizeLessThan => _$this._objectSizeLessThan;
  set objectSizeLessThan(_i2.Int64? objectSizeLessThan) =>
      _$this._objectSizeLessThan = objectSizeLessThan;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  LifecycleRuleAndOperatorBuilder() {
    LifecycleRuleAndOperator._init(this);
  }

  LifecycleRuleAndOperatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _objectSizeGreaterThan = $v.objectSizeGreaterThan;
      _objectSizeLessThan = $v.objectSizeLessThan;
      _prefix = $v.prefix;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LifecycleRuleAndOperator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LifecycleRuleAndOperator;
  }

  @override
  void update(void Function(LifecycleRuleAndOperatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LifecycleRuleAndOperator build() => _build();

  _$LifecycleRuleAndOperator _build() {
    _$LifecycleRuleAndOperator _$result;
    try {
      _$result = _$v ??
          new _$LifecycleRuleAndOperator._(
              objectSizeGreaterThan: objectSizeGreaterThan,
              objectSizeLessThan: objectSizeLessThan,
              prefix: prefix,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LifecycleRuleAndOperator', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
