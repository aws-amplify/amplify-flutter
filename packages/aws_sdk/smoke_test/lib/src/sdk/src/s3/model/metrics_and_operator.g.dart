// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.metrics_and_operator;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetricsAndOperator extends MetricsAndOperator {
  @override
  final String? accessPointArn;
  @override
  final String? prefix;
  @override
  final _i3.BuiltList<_i2.Tag>? tags;

  factory _$MetricsAndOperator(
          [void Function(MetricsAndOperatorBuilder)? updates]) =>
      (new MetricsAndOperatorBuilder()..update(updates))._build();

  _$MetricsAndOperator._({this.accessPointArn, this.prefix, this.tags})
      : super._();

  @override
  MetricsAndOperator rebuild(
          void Function(MetricsAndOperatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetricsAndOperatorBuilder toBuilder() =>
      new MetricsAndOperatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetricsAndOperator &&
        accessPointArn == other.accessPointArn &&
        prefix == other.prefix &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, accessPointArn.hashCode), prefix.hashCode), tags.hashCode));
  }
}

class MetricsAndOperatorBuilder
    implements Builder<MetricsAndOperator, MetricsAndOperatorBuilder> {
  _$MetricsAndOperator? _$v;

  String? _accessPointArn;
  String? get accessPointArn => _$this._accessPointArn;
  set accessPointArn(String? accessPointArn) =>
      _$this._accessPointArn = accessPointArn;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  _i3.ListBuilder<_i2.Tag>? _tags;
  _i3.ListBuilder<_i2.Tag> get tags =>
      _$this._tags ??= new _i3.ListBuilder<_i2.Tag>();
  set tags(_i3.ListBuilder<_i2.Tag>? tags) => _$this._tags = tags;

  MetricsAndOperatorBuilder() {
    MetricsAndOperator._init(this);
  }

  MetricsAndOperatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessPointArn = $v.accessPointArn;
      _prefix = $v.prefix;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetricsAndOperator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MetricsAndOperator;
  }

  @override
  void update(void Function(MetricsAndOperatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetricsAndOperator build() => _build();

  _$MetricsAndOperator _build() {
    _$MetricsAndOperator _$result;
    try {
      _$result = _$v ??
          new _$MetricsAndOperator._(
              accessPointArn: accessPointArn,
              prefix: prefix,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MetricsAndOperator', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
