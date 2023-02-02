// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.analytics_and_operator;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalyticsAndOperator extends AnalyticsAndOperator {
  @override
  final String? prefix;
  @override
  final _i3.BuiltList<_i2.Tag>? tags;

  factory _$AnalyticsAndOperator(
          [void Function(AnalyticsAndOperatorBuilder)? updates]) =>
      (new AnalyticsAndOperatorBuilder()..update(updates))._build();

  _$AnalyticsAndOperator._({this.prefix, this.tags}) : super._();

  @override
  AnalyticsAndOperator rebuild(
          void Function(AnalyticsAndOperatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalyticsAndOperatorBuilder toBuilder() =>
      new AnalyticsAndOperatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalyticsAndOperator &&
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

class AnalyticsAndOperatorBuilder
    implements Builder<AnalyticsAndOperator, AnalyticsAndOperatorBuilder> {
  _$AnalyticsAndOperator? _$v;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  _i3.ListBuilder<_i2.Tag>? _tags;
  _i3.ListBuilder<_i2.Tag> get tags =>
      _$this._tags ??= new _i3.ListBuilder<_i2.Tag>();
  set tags(_i3.ListBuilder<_i2.Tag>? tags) => _$this._tags = tags;

  AnalyticsAndOperatorBuilder() {
    AnalyticsAndOperator._init(this);
  }

  AnalyticsAndOperatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prefix = $v.prefix;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalyticsAndOperator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnalyticsAndOperator;
  }

  @override
  void update(void Function(AnalyticsAndOperatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalyticsAndOperator build() => _build();

  _$AnalyticsAndOperator _build() {
    _$AnalyticsAndOperator _$result;
    try {
      _$result = _$v ??
          new _$AnalyticsAndOperator._(prefix: prefix, tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AnalyticsAndOperator', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
