// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1_v1.json_protocol.model.operation_config;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperationConfig extends OperationConfig {
  @override
  final _i2.S3Config? s3;

  factory _$OperationConfig([void Function(OperationConfigBuilder)? updates]) =>
      (new OperationConfigBuilder()..update(updates))._build();

  _$OperationConfig._({this.s3}) : super._();

  @override
  OperationConfig rebuild(void Function(OperationConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperationConfigBuilder toBuilder() =>
      new OperationConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperationConfig && s3 == other.s3;
  }

  @override
  int get hashCode {
    return $jf($jc(0, s3.hashCode));
  }
}

class OperationConfigBuilder
    implements Builder<OperationConfig, OperationConfigBuilder> {
  _$OperationConfig? _$v;

  _i2.S3ConfigBuilder? _s3;
  _i2.S3ConfigBuilder get s3 => _$this._s3 ??= new _i2.S3ConfigBuilder();
  set s3(_i2.S3ConfigBuilder? s3) => _$this._s3 = s3;

  OperationConfigBuilder() {
    OperationConfig._init(this);
  }

  OperationConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _s3 = $v.s3?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperationConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OperationConfig;
  }

  @override
  void update(void Function(OperationConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperationConfig build() => _build();

  _$OperationConfig _build() {
    _$OperationConfig _$result;
    try {
      _$result = _$v ?? new _$OperationConfig._(s3: _s3?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 's3';
        _s3?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OperationConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
