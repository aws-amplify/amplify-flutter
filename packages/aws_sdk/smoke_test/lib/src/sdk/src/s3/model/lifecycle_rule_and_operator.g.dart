// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lifecycle_rule_and_operator.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LifecycleRuleAndOperator extends LifecycleRuleAndOperator {
  @override
  final String? prefix;
  @override
  final _i3.BuiltList<Tag>? tags;
  @override
  final _i2.Int64? objectSizeGreaterThan;
  @override
  final _i2.Int64? objectSizeLessThan;

  factory _$LifecycleRuleAndOperator(
          [void Function(LifecycleRuleAndOperatorBuilder)? updates]) =>
      (new LifecycleRuleAndOperatorBuilder()..update(updates))._build();

  _$LifecycleRuleAndOperator._(
      {this.prefix,
      this.tags,
      this.objectSizeGreaterThan,
      this.objectSizeLessThan})
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
        prefix == other.prefix &&
        tags == other.tags &&
        objectSizeGreaterThan == other.objectSizeGreaterThan &&
        objectSizeLessThan == other.objectSizeLessThan;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, objectSizeGreaterThan.hashCode);
    _$hash = $jc(_$hash, objectSizeLessThan.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LifecycleRuleAndOperatorBuilder
    implements
        Builder<LifecycleRuleAndOperator, LifecycleRuleAndOperatorBuilder> {
  _$LifecycleRuleAndOperator? _$v;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  _i3.ListBuilder<Tag>? _tags;
  _i3.ListBuilder<Tag> get tags => _$this._tags ??= new _i3.ListBuilder<Tag>();
  set tags(_i3.ListBuilder<Tag>? tags) => _$this._tags = tags;

  _i2.Int64? _objectSizeGreaterThan;
  _i2.Int64? get objectSizeGreaterThan => _$this._objectSizeGreaterThan;
  set objectSizeGreaterThan(_i2.Int64? objectSizeGreaterThan) =>
      _$this._objectSizeGreaterThan = objectSizeGreaterThan;

  _i2.Int64? _objectSizeLessThan;
  _i2.Int64? get objectSizeLessThan => _$this._objectSizeLessThan;
  set objectSizeLessThan(_i2.Int64? objectSizeLessThan) =>
      _$this._objectSizeLessThan = objectSizeLessThan;

  LifecycleRuleAndOperatorBuilder();

  LifecycleRuleAndOperatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prefix = $v.prefix;
      _tags = $v.tags?.toBuilder();
      _objectSizeGreaterThan = $v.objectSizeGreaterThan;
      _objectSizeLessThan = $v.objectSizeLessThan;
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
              prefix: prefix,
              tags: _tags?.build(),
              objectSizeGreaterThan: objectSizeGreaterThan,
              objectSizeLessThan: objectSizeLessThan);
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
