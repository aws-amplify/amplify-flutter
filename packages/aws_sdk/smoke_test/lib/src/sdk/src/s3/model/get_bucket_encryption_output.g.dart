// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_encryption_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketEncryptionOutput extends GetBucketEncryptionOutput {
  @override
  final _i3.ServerSideEncryptionConfiguration?
      serverSideEncryptionConfiguration;

  factory _$GetBucketEncryptionOutput(
          [void Function(GetBucketEncryptionOutputBuilder)? updates]) =>
      (new GetBucketEncryptionOutputBuilder()..update(updates))._build();

  _$GetBucketEncryptionOutput._({this.serverSideEncryptionConfiguration})
      : super._();

  @override
  GetBucketEncryptionOutput rebuild(
          void Function(GetBucketEncryptionOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketEncryptionOutputBuilder toBuilder() =>
      new GetBucketEncryptionOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketEncryptionOutput &&
        serverSideEncryptionConfiguration ==
            other.serverSideEncryptionConfiguration;
  }

  @override
  int get hashCode {
    return $jf($jc(0, serverSideEncryptionConfiguration.hashCode));
  }
}

class GetBucketEncryptionOutputBuilder
    implements
        Builder<GetBucketEncryptionOutput, GetBucketEncryptionOutputBuilder> {
  _$GetBucketEncryptionOutput? _$v;

  _i3.ServerSideEncryptionConfigurationBuilder?
      _serverSideEncryptionConfiguration;
  _i3.ServerSideEncryptionConfigurationBuilder
      get serverSideEncryptionConfiguration =>
          _$this._serverSideEncryptionConfiguration ??=
              new _i3.ServerSideEncryptionConfigurationBuilder();
  set serverSideEncryptionConfiguration(
          _i3.ServerSideEncryptionConfigurationBuilder?
              serverSideEncryptionConfiguration) =>
      _$this._serverSideEncryptionConfiguration =
          serverSideEncryptionConfiguration;

  GetBucketEncryptionOutputBuilder() {
    GetBucketEncryptionOutput._init(this);
  }

  GetBucketEncryptionOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serverSideEncryptionConfiguration =
          $v.serverSideEncryptionConfiguration?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketEncryptionOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketEncryptionOutput;
  }

  @override
  void update(void Function(GetBucketEncryptionOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketEncryptionOutput build() => _build();

  _$GetBucketEncryptionOutput _build() {
    _$GetBucketEncryptionOutput _$result;
    try {
      _$result = _$v ??
          new _$GetBucketEncryptionOutput._(
              serverSideEncryptionConfiguration:
                  _serverSideEncryptionConfiguration?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'serverSideEncryptionConfiguration';
        _serverSideEncryptionConfiguration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetBucketEncryptionOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
