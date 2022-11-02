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
    return $jf($jc(0, publicAccessBlockConfiguration.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
