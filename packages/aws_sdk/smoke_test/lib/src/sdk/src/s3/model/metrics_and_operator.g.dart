// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.metrics_and_operator;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetricsAndOperator extends MetricsAndOperator {
  @override
  final String? prefix;
  @override
  final _i3.BuiltList<_i2.Tag>? tags;
  @override
  final String? accessPointArn;

  factory _$MetricsAndOperator(
          [void Function(MetricsAndOperatorBuilder)? updates]) =>
      (new MetricsAndOperatorBuilder()..update(updates))._build();

  _$MetricsAndOperator._({this.prefix, this.tags, this.accessPointArn})
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
        prefix == other.prefix &&
        tags == other.tags &&
        accessPointArn == other.accessPointArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, accessPointArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MetricsAndOperatorBuilder
    implements Builder<MetricsAndOperator, MetricsAndOperatorBuilder> {
  _$MetricsAndOperator? _$v;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  _i3.ListBuilder<_i2.Tag>? _tags;
  _i3.ListBuilder<_i2.Tag> get tags =>
      _$this._tags ??= new _i3.ListBuilder<_i2.Tag>();
  set tags(_i3.ListBuilder<_i2.Tag>? tags) => _$this._tags = tags;

  String? _accessPointArn;
  String? get accessPointArn => _$this._accessPointArn;
  set accessPointArn(String? accessPointArn) =>
      _$this._accessPointArn = accessPointArn;

  MetricsAndOperatorBuilder() {
    MetricsAndOperator._init(this);
  }

  MetricsAndOperatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prefix = $v.prefix;
      _tags = $v.tags?.toBuilder();
      _accessPointArn = $v.accessPointArn;
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
              prefix: prefix,
              tags: _tags?.build(),
              accessPointArn: accessPointArn);
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
