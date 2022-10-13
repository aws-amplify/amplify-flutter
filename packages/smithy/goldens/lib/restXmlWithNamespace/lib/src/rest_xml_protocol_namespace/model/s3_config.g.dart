// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_with_namespace_v1.rest_xml_protocol_namespace.model.s3_config;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$S3Config extends S3Config {
  @override
  final _i2.S3AddressingStyle? addressingStyle;
  @override
  final bool? useAccelerateEndpoint;
  @override
  final bool? useDualstackEndpoint;

  factory _$S3Config([void Function(S3ConfigBuilder)? updates]) =>
      (new S3ConfigBuilder()..update(updates))._build();

  _$S3Config._(
      {this.addressingStyle,
      this.useAccelerateEndpoint,
      this.useDualstackEndpoint})
      : super._();

  @override
  S3Config rebuild(void Function(S3ConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  S3ConfigBuilder toBuilder() => new S3ConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is S3Config &&
        addressingStyle == other.addressingStyle &&
        useAccelerateEndpoint == other.useAccelerateEndpoint &&
        useDualstackEndpoint == other.useDualstackEndpoint;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, addressingStyle.hashCode), useAccelerateEndpoint.hashCode),
        useDualstackEndpoint.hashCode));
  }
}

class S3ConfigBuilder implements Builder<S3Config, S3ConfigBuilder> {
  _$S3Config? _$v;

  _i2.S3AddressingStyle? _addressingStyle;
  _i2.S3AddressingStyle? get addressingStyle => _$this._addressingStyle;
  set addressingStyle(_i2.S3AddressingStyle? addressingStyle) =>
      _$this._addressingStyle = addressingStyle;

  bool? _useAccelerateEndpoint;
  bool? get useAccelerateEndpoint => _$this._useAccelerateEndpoint;
  set useAccelerateEndpoint(bool? useAccelerateEndpoint) =>
      _$this._useAccelerateEndpoint = useAccelerateEndpoint;

  bool? _useDualstackEndpoint;
  bool? get useDualstackEndpoint => _$this._useDualstackEndpoint;
  set useDualstackEndpoint(bool? useDualstackEndpoint) =>
      _$this._useDualstackEndpoint = useDualstackEndpoint;

  S3ConfigBuilder() {
    S3Config._init(this);
  }

  S3ConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _addressingStyle = $v.addressingStyle;
      _useAccelerateEndpoint = $v.useAccelerateEndpoint;
      _useDualstackEndpoint = $v.useDualstackEndpoint;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(S3Config other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$S3Config;
  }

  @override
  void update(void Function(S3ConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  S3Config build() => _build();

  _$S3Config _build() {
    final _$result = _$v ??
        new _$S3Config._(
            addressingStyle: addressingStyle,
            useAccelerateEndpoint: useAccelerateEndpoint,
            useDualstackEndpoint: useDualstackEndpoint);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
