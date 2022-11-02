// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.website_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WebsiteConfiguration extends WebsiteConfiguration {
  @override
  final _i2.ErrorDocument? errorDocument;
  @override
  final _i3.IndexDocument? indexDocument;
  @override
  final _i4.RedirectAllRequestsTo? redirectAllRequestsTo;
  @override
  final _i6.BuiltList<_i5.RoutingRule>? routingRules;

  factory _$WebsiteConfiguration(
          [void Function(WebsiteConfigurationBuilder)? updates]) =>
      (new WebsiteConfigurationBuilder()..update(updates))._build();

  _$WebsiteConfiguration._(
      {this.errorDocument,
      this.indexDocument,
      this.redirectAllRequestsTo,
      this.routingRules})
      : super._();

  @override
  WebsiteConfiguration rebuild(
          void Function(WebsiteConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebsiteConfigurationBuilder toBuilder() =>
      new WebsiteConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebsiteConfiguration &&
        errorDocument == other.errorDocument &&
        indexDocument == other.indexDocument &&
        redirectAllRequestsTo == other.redirectAllRequestsTo &&
        routingRules == other.routingRules;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, errorDocument.hashCode), indexDocument.hashCode),
            redirectAllRequestsTo.hashCode),
        routingRules.hashCode));
  }
}

class WebsiteConfigurationBuilder
    implements Builder<WebsiteConfiguration, WebsiteConfigurationBuilder> {
  _$WebsiteConfiguration? _$v;

  _i2.ErrorDocumentBuilder? _errorDocument;
  _i2.ErrorDocumentBuilder get errorDocument =>
      _$this._errorDocument ??= new _i2.ErrorDocumentBuilder();
  set errorDocument(_i2.ErrorDocumentBuilder? errorDocument) =>
      _$this._errorDocument = errorDocument;

  _i3.IndexDocumentBuilder? _indexDocument;
  _i3.IndexDocumentBuilder get indexDocument =>
      _$this._indexDocument ??= new _i3.IndexDocumentBuilder();
  set indexDocument(_i3.IndexDocumentBuilder? indexDocument) =>
      _$this._indexDocument = indexDocument;

  _i4.RedirectAllRequestsToBuilder? _redirectAllRequestsTo;
  _i4.RedirectAllRequestsToBuilder get redirectAllRequestsTo =>
      _$this._redirectAllRequestsTo ??= new _i4.RedirectAllRequestsToBuilder();
  set redirectAllRequestsTo(
          _i4.RedirectAllRequestsToBuilder? redirectAllRequestsTo) =>
      _$this._redirectAllRequestsTo = redirectAllRequestsTo;

  _i6.ListBuilder<_i5.RoutingRule>? _routingRules;
  _i6.ListBuilder<_i5.RoutingRule> get routingRules =>
      _$this._routingRules ??= new _i6.ListBuilder<_i5.RoutingRule>();
  set routingRules(_i6.ListBuilder<_i5.RoutingRule>? routingRules) =>
      _$this._routingRules = routingRules;

  WebsiteConfigurationBuilder() {
    WebsiteConfiguration._init(this);
  }

  WebsiteConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorDocument = $v.errorDocument?.toBuilder();
      _indexDocument = $v.indexDocument?.toBuilder();
      _redirectAllRequestsTo = $v.redirectAllRequestsTo?.toBuilder();
      _routingRules = $v.routingRules?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebsiteConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WebsiteConfiguration;
  }

  @override
  void update(void Function(WebsiteConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebsiteConfiguration build() => _build();

  _$WebsiteConfiguration _build() {
    _$WebsiteConfiguration _$result;
    try {
      _$result = _$v ??
          new _$WebsiteConfiguration._(
              errorDocument: _errorDocument?.build(),
              indexDocument: _indexDocument?.build(),
              redirectAllRequestsTo: _redirectAllRequestsTo?.build(),
              routingRules: _routingRules?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errorDocument';
        _errorDocument?.build();
        _$failedField = 'indexDocument';
        _indexDocument?.build();
        _$failedField = 'redirectAllRequestsTo';
        _redirectAllRequestsTo?.build();
        _$failedField = 'routingRules';
        _routingRules?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WebsiteConfiguration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
