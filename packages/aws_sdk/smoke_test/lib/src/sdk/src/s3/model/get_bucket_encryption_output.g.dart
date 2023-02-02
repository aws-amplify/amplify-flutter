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
    var _$hash = 0;
    _$hash = $jc(_$hash, serverSideEncryptionConfiguration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
