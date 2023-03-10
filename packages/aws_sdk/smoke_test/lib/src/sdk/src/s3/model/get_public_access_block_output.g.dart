// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_public_access_block_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetPublicAccessBlockOutput extends GetPublicAccessBlockOutput {
  @override
  final _i3.PublicAccessBlockConfiguration? publicAccessBlockConfiguration;

  factory _$GetPublicAccessBlockOutput(
          [void Function(GetPublicAccessBlockOutputBuilder)? updates]) =>
      (new GetPublicAccessBlockOutputBuilder()..update(updates))._build();

  _$GetPublicAccessBlockOutput._({this.publicAccessBlockConfiguration})
      : super._();

  @override
  GetPublicAccessBlockOutput rebuild(
          void Function(GetPublicAccessBlockOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetPublicAccessBlockOutputBuilder toBuilder() =>
      new GetPublicAccessBlockOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetPublicAccessBlockOutput &&
        publicAccessBlockConfiguration == other.publicAccessBlockConfiguration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, publicAccessBlockConfiguration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetPublicAccessBlockOutputBuilder
    implements
        Builder<GetPublicAccessBlockOutput, GetPublicAccessBlockOutputBuilder> {
  _$GetPublicAccessBlockOutput? _$v;

  _i3.PublicAccessBlockConfigurationBuilder? _publicAccessBlockConfiguration;
  _i3.PublicAccessBlockConfigurationBuilder
      get publicAccessBlockConfiguration =>
          _$this._publicAccessBlockConfiguration ??=
              new _i3.PublicAccessBlockConfigurationBuilder();
  set publicAccessBlockConfiguration(
          _i3.PublicAccessBlockConfigurationBuilder?
              publicAccessBlockConfiguration) =>
      _$this._publicAccessBlockConfiguration = publicAccessBlockConfiguration;

  GetPublicAccessBlockOutputBuilder() {
    GetPublicAccessBlockOutput._init(this);
  }

  GetPublicAccessBlockOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _publicAccessBlockConfiguration =
          $v.publicAccessBlockConfiguration?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetPublicAccessBlockOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetPublicAccessBlockOutput;
  }

  @override
  void update(void Function(GetPublicAccessBlockOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetPublicAccessBlockOutput build() => _build();

  _$GetPublicAccessBlockOutput _build() {
    _$GetPublicAccessBlockOutput _$result;
    try {
      _$result = _$v ??
          new _$GetPublicAccessBlockOutput._(
              publicAccessBlockConfiguration:
                  _publicAccessBlockConfiguration?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'publicAccessBlockConfiguration';
        _publicAccessBlockConfiguration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetPublicAccessBlockOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
