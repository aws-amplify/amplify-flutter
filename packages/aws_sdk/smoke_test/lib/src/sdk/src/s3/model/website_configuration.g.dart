// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'website_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WebsiteConfiguration extends WebsiteConfiguration {
  @override
  final ErrorDocument? errorDocument;
  @override
  final IndexDocument? indexDocument;
  @override
  final RedirectAllRequestsTo? redirectAllRequestsTo;
  @override
  final _i2.BuiltList<RoutingRule>? routingRules;

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

  ErrorDocumentBuilder? _errorDocument;
  ErrorDocumentBuilder get errorDocument =>
      _$this._errorDocument ??= new ErrorDocumentBuilder();
  set errorDocument(ErrorDocumentBuilder? errorDocument) =>
      _$this._errorDocument = errorDocument;

  IndexDocumentBuilder? _indexDocument;
  IndexDocumentBuilder get indexDocument =>
      _$this._indexDocument ??= new IndexDocumentBuilder();
  set indexDocument(IndexDocumentBuilder? indexDocument) =>
      _$this._indexDocument = indexDocument;

  RedirectAllRequestsToBuilder? _redirectAllRequestsTo;
  RedirectAllRequestsToBuilder get redirectAllRequestsTo =>
      _$this._redirectAllRequestsTo ??= new RedirectAllRequestsToBuilder();
  set redirectAllRequestsTo(
          RedirectAllRequestsToBuilder? redirectAllRequestsTo) =>
      _$this._redirectAllRequestsTo = redirectAllRequestsTo;

  _i2.ListBuilder<RoutingRule>? _routingRules;
  _i2.ListBuilder<RoutingRule> get routingRules =>
      _$this._routingRules ??= new _i2.ListBuilder<RoutingRule>();
  set routingRules(_i2.ListBuilder<RoutingRule>? routingRules) =>
      _$this._routingRules = routingRules;

  WebsiteConfigurationBuilder();

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
