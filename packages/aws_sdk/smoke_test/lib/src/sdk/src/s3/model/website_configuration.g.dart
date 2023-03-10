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
    var _$hash = 0;
    _$hash = $jc(_$hash, errorDocument.hashCode);
    _$hash = $jc(_$hash, indexDocument.hashCode);
    _$hash = $jc(_$hash, redirectAllRequestsTo.hashCode);
    _$hash = $jc(_$hash, routingRules.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
