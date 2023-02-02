// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_lifecycle_configuration_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketLifecycleConfigurationOutput
    extends GetBucketLifecycleConfigurationOutput {
  @override
  final _i3.BuiltList<_i2.LifecycleRule>? rules;

  factory _$GetBucketLifecycleConfigurationOutput(
          [void Function(GetBucketLifecycleConfigurationOutputBuilder)?
              updates]) =>
      (new GetBucketLifecycleConfigurationOutputBuilder()..update(updates))
          ._build();

  _$GetBucketLifecycleConfigurationOutput._({this.rules}) : super._();

  @override
  GetBucketLifecycleConfigurationOutput rebuild(
          void Function(GetBucketLifecycleConfigurationOutputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketLifecycleConfigurationOutputBuilder toBuilder() =>
      new GetBucketLifecycleConfigurationOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketLifecycleConfigurationOutput &&
        rules == other.rules;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rules.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetBucketLifecycleConfigurationOutputBuilder
    implements
        Builder<GetBucketLifecycleConfigurationOutput,
            GetBucketLifecycleConfigurationOutputBuilder> {
  _$GetBucketLifecycleConfigurationOutput? _$v;

  _i3.ListBuilder<_i2.LifecycleRule>? _rules;
  _i3.ListBuilder<_i2.LifecycleRule> get rules =>
      _$this._rules ??= new _i3.ListBuilder<_i2.LifecycleRule>();
  set rules(_i3.ListBuilder<_i2.LifecycleRule>? rules) => _$this._rules = rules;

  GetBucketLifecycleConfigurationOutputBuilder() {
    GetBucketLifecycleConfigurationOutput._init(this);
  }

  GetBucketLifecycleConfigurationOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rules = $v.rules?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketLifecycleConfigurationOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketLifecycleConfigurationOutput;
  }

  @override
  void update(
      void Function(GetBucketLifecycleConfigurationOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketLifecycleConfigurationOutput build() => _build();

  _$GetBucketLifecycleConfigurationOutput _build() {
    _$GetBucketLifecycleConfigurationOutput _$result;
    try {
      _$result = _$v ??
          new _$GetBucketLifecycleConfigurationOutput._(rules: _rules?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rules';
        _rules?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetBucketLifecycleConfigurationOutput',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
