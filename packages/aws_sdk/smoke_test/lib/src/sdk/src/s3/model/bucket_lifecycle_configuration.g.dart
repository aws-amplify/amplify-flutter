// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.bucket_lifecycle_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BucketLifecycleConfiguration extends BucketLifecycleConfiguration {
  @override
  final _i3.BuiltList<_i2.LifecycleRule> rules;

  factory _$BucketLifecycleConfiguration(
          [void Function(BucketLifecycleConfigurationBuilder)? updates]) =>
      (new BucketLifecycleConfigurationBuilder()..update(updates))._build();

  _$BucketLifecycleConfiguration._({required this.rules}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        rules, r'BucketLifecycleConfiguration', 'rules');
  }

  @override
  BucketLifecycleConfiguration rebuild(
          void Function(BucketLifecycleConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BucketLifecycleConfigurationBuilder toBuilder() =>
      new BucketLifecycleConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BucketLifecycleConfiguration && rules == other.rules;
  }

  @override
  int get hashCode {
    return $jf($jc(0, rules.hashCode));
  }
}

class BucketLifecycleConfigurationBuilder
    implements
        Builder<BucketLifecycleConfiguration,
            BucketLifecycleConfigurationBuilder> {
  _$BucketLifecycleConfiguration? _$v;

  _i3.ListBuilder<_i2.LifecycleRule>? _rules;
  _i3.ListBuilder<_i2.LifecycleRule> get rules =>
      _$this._rules ??= new _i3.ListBuilder<_i2.LifecycleRule>();
  set rules(_i3.ListBuilder<_i2.LifecycleRule>? rules) => _$this._rules = rules;

  BucketLifecycleConfigurationBuilder() {
    BucketLifecycleConfiguration._init(this);
  }

  BucketLifecycleConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rules = $v.rules.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BucketLifecycleConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BucketLifecycleConfiguration;
  }

  @override
  void update(void Function(BucketLifecycleConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BucketLifecycleConfiguration build() => _build();

  _$BucketLifecycleConfiguration _build() {
    _$BucketLifecycleConfiguration _$result;
    try {
      _$result =
          _$v ?? new _$BucketLifecycleConfiguration._(rules: rules.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rules';
        rules.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BucketLifecycleConfiguration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
