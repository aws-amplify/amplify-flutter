// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.cors_rule;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CorsRule extends CorsRule {
  @override
  final _i2.BuiltList<String>? allowedHeaders;
  @override
  final _i2.BuiltList<String> allowedMethods;
  @override
  final _i2.BuiltList<String> allowedOrigins;
  @override
  final _i2.BuiltList<String>? exposeHeaders;
  @override
  final String? id;
  @override
  final int? maxAgeSeconds;

  factory _$CorsRule([void Function(CorsRuleBuilder)? updates]) =>
      (new CorsRuleBuilder()..update(updates))._build();

  _$CorsRule._(
      {this.allowedHeaders,
      required this.allowedMethods,
      required this.allowedOrigins,
      this.exposeHeaders,
      this.id,
      this.maxAgeSeconds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        allowedMethods, r'CorsRule', 'allowedMethods');
    BuiltValueNullFieldError.checkNotNull(
        allowedOrigins, r'CorsRule', 'allowedOrigins');
  }

  @override
  CorsRule rebuild(void Function(CorsRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CorsRuleBuilder toBuilder() => new CorsRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorsRule &&
        allowedHeaders == other.allowedHeaders &&
        allowedMethods == other.allowedMethods &&
        allowedOrigins == other.allowedOrigins &&
        exposeHeaders == other.exposeHeaders &&
        id == other.id &&
        maxAgeSeconds == other.maxAgeSeconds;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, allowedHeaders.hashCode),
                        allowedMethods.hashCode),
                    allowedOrigins.hashCode),
                exposeHeaders.hashCode),
            id.hashCode),
        maxAgeSeconds.hashCode));
  }
}

class CorsRuleBuilder implements Builder<CorsRule, CorsRuleBuilder> {
  _$CorsRule? _$v;

  _i2.ListBuilder<String>? _allowedHeaders;
  _i2.ListBuilder<String> get allowedHeaders =>
      _$this._allowedHeaders ??= new _i2.ListBuilder<String>();
  set allowedHeaders(_i2.ListBuilder<String>? allowedHeaders) =>
      _$this._allowedHeaders = allowedHeaders;

  _i2.ListBuilder<String>? _allowedMethods;
  _i2.ListBuilder<String> get allowedMethods =>
      _$this._allowedMethods ??= new _i2.ListBuilder<String>();
  set allowedMethods(_i2.ListBuilder<String>? allowedMethods) =>
      _$this._allowedMethods = allowedMethods;

  _i2.ListBuilder<String>? _allowedOrigins;
  _i2.ListBuilder<String> get allowedOrigins =>
      _$this._allowedOrigins ??= new _i2.ListBuilder<String>();
  set allowedOrigins(_i2.ListBuilder<String>? allowedOrigins) =>
      _$this._allowedOrigins = allowedOrigins;

  _i2.ListBuilder<String>? _exposeHeaders;
  _i2.ListBuilder<String> get exposeHeaders =>
      _$this._exposeHeaders ??= new _i2.ListBuilder<String>();
  set exposeHeaders(_i2.ListBuilder<String>? exposeHeaders) =>
      _$this._exposeHeaders = exposeHeaders;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _maxAgeSeconds;
  int? get maxAgeSeconds => _$this._maxAgeSeconds;
  set maxAgeSeconds(int? maxAgeSeconds) =>
      _$this._maxAgeSeconds = maxAgeSeconds;

  CorsRuleBuilder() {
    CorsRule._init(this);
  }

  CorsRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allowedHeaders = $v.allowedHeaders?.toBuilder();
      _allowedMethods = $v.allowedMethods.toBuilder();
      _allowedOrigins = $v.allowedOrigins.toBuilder();
      _exposeHeaders = $v.exposeHeaders?.toBuilder();
      _id = $v.id;
      _maxAgeSeconds = $v.maxAgeSeconds;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorsRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CorsRule;
  }

  @override
  void update(void Function(CorsRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CorsRule build() => _build();

  _$CorsRule _build() {
    _$CorsRule _$result;
    try {
      _$result = _$v ??
          new _$CorsRule._(
              allowedHeaders: _allowedHeaders?.build(),
              allowedMethods: allowedMethods.build(),
              allowedOrigins: allowedOrigins.build(),
              exposeHeaders: _exposeHeaders?.build(),
              id: id,
              maxAgeSeconds: maxAgeSeconds);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allowedHeaders';
        _allowedHeaders?.build();
        _$failedField = 'allowedMethods';
        allowedMethods.build();
        _$failedField = 'allowedOrigins';
        allowedOrigins.build();
        _$failedField = 'exposeHeaders';
        _exposeHeaders?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CorsRule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
