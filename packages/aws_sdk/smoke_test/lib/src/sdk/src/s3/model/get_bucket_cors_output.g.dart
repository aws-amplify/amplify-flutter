// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_cors_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketCorsOutput extends GetBucketCorsOutput {
  @override
  final _i3.BuiltList<_i2.CorsRule>? corsRules;

  factory _$GetBucketCorsOutput(
          [void Function(GetBucketCorsOutputBuilder)? updates]) =>
      (new GetBucketCorsOutputBuilder()..update(updates))._build();

  _$GetBucketCorsOutput._({this.corsRules}) : super._();

  @override
  GetBucketCorsOutput rebuild(
          void Function(GetBucketCorsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketCorsOutputBuilder toBuilder() =>
      new GetBucketCorsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketCorsOutput && corsRules == other.corsRules;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, corsRules.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetBucketCorsOutputBuilder
    implements Builder<GetBucketCorsOutput, GetBucketCorsOutputBuilder> {
  _$GetBucketCorsOutput? _$v;

  _i3.ListBuilder<_i2.CorsRule>? _corsRules;
  _i3.ListBuilder<_i2.CorsRule> get corsRules =>
      _$this._corsRules ??= new _i3.ListBuilder<_i2.CorsRule>();
  set corsRules(_i3.ListBuilder<_i2.CorsRule>? corsRules) =>
      _$this._corsRules = corsRules;

  GetBucketCorsOutputBuilder() {
    GetBucketCorsOutput._init(this);
  }

  GetBucketCorsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _corsRules = $v.corsRules?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketCorsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketCorsOutput;
  }

  @override
  void update(void Function(GetBucketCorsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketCorsOutput build() => _build();

  _$GetBucketCorsOutput _build() {
    _$GetBucketCorsOutput _$result;
    try {
      _$result =
          _$v ?? new _$GetBucketCorsOutput._(corsRules: _corsRules?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'corsRules';
        _corsRules?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetBucketCorsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
