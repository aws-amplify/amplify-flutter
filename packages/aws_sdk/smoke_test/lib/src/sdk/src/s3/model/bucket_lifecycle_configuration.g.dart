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
    var _$hash = 0;
    _$hash = $jc(_$hash, rules.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
