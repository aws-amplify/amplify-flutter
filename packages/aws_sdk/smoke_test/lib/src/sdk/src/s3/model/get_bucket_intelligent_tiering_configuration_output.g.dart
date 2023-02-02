// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_intelligent_tiering_configuration_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketIntelligentTieringConfigurationOutput
    extends GetBucketIntelligentTieringConfigurationOutput {
  @override
  final _i3.IntelligentTieringConfiguration? intelligentTieringConfiguration;

  factory _$GetBucketIntelligentTieringConfigurationOutput(
          [void Function(GetBucketIntelligentTieringConfigurationOutputBuilder)?
              updates]) =>
      (new GetBucketIntelligentTieringConfigurationOutputBuilder()
            ..update(updates))
          ._build();

  _$GetBucketIntelligentTieringConfigurationOutput._(
      {this.intelligentTieringConfiguration})
      : super._();

  @override
  GetBucketIntelligentTieringConfigurationOutput rebuild(
          void Function(GetBucketIntelligentTieringConfigurationOutputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketIntelligentTieringConfigurationOutputBuilder toBuilder() =>
      new GetBucketIntelligentTieringConfigurationOutputBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketIntelligentTieringConfigurationOutput &&
        intelligentTieringConfiguration ==
            other.intelligentTieringConfiguration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, intelligentTieringConfiguration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetBucketIntelligentTieringConfigurationOutputBuilder
    implements
        Builder<GetBucketIntelligentTieringConfigurationOutput,
            GetBucketIntelligentTieringConfigurationOutputBuilder> {
  _$GetBucketIntelligentTieringConfigurationOutput? _$v;

  _i3.IntelligentTieringConfigurationBuilder? _intelligentTieringConfiguration;
  _i3.IntelligentTieringConfigurationBuilder
      get intelligentTieringConfiguration =>
          _$this._intelligentTieringConfiguration ??=
              new _i3.IntelligentTieringConfigurationBuilder();
  set intelligentTieringConfiguration(
          _i3.IntelligentTieringConfigurationBuilder?
              intelligentTieringConfiguration) =>
      _$this._intelligentTieringConfiguration = intelligentTieringConfiguration;

  GetBucketIntelligentTieringConfigurationOutputBuilder() {
    GetBucketIntelligentTieringConfigurationOutput._init(this);
  }

  GetBucketIntelligentTieringConfigurationOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _intelligentTieringConfiguration =
          $v.intelligentTieringConfiguration?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketIntelligentTieringConfigurationOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketIntelligentTieringConfigurationOutput;
  }

  @override
  void update(
      void Function(GetBucketIntelligentTieringConfigurationOutputBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketIntelligentTieringConfigurationOutput build() => _build();

  _$GetBucketIntelligentTieringConfigurationOutput _build() {
    _$GetBucketIntelligentTieringConfigurationOutput _$result;
    try {
      _$result = _$v ??
          new _$GetBucketIntelligentTieringConfigurationOutput._(
              intelligentTieringConfiguration:
                  _intelligentTieringConfiguration?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'intelligentTieringConfiguration';
        _intelligentTieringConfiguration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetBucketIntelligentTieringConfigurationOutput',
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
