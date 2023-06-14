// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_bucket_website_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketWebsiteOutput extends GetBucketWebsiteOutput {
  @override
  final _i2.RedirectAllRequestsTo? redirectAllRequestsTo;
  @override
  final _i3.IndexDocument? indexDocument;
  @override
  final _i4.ErrorDocument? errorDocument;
  @override
  final _i6.BuiltList<_i5.RoutingRule>? routingRules;

  factory _$GetBucketWebsiteOutput(
          [void Function(GetBucketWebsiteOutputBuilder)? updates]) =>
      (new GetBucketWebsiteOutputBuilder()..update(updates))._build();

  _$GetBucketWebsiteOutput._(
      {this.redirectAllRequestsTo,
      this.indexDocument,
      this.errorDocument,
      this.routingRules})
      : super._();

  @override
  GetBucketWebsiteOutput rebuild(
          void Function(GetBucketWebsiteOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketWebsiteOutputBuilder toBuilder() =>
      new GetBucketWebsiteOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketWebsiteOutput &&
        redirectAllRequestsTo == other.redirectAllRequestsTo &&
        indexDocument == other.indexDocument &&
        errorDocument == other.errorDocument &&
        routingRules == other.routingRules;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, redirectAllRequestsTo.hashCode);
    _$hash = $jc(_$hash, indexDocument.hashCode);
    _$hash = $jc(_$hash, errorDocument.hashCode);
    _$hash = $jc(_$hash, routingRules.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetBucketWebsiteOutputBuilder
    implements Builder<GetBucketWebsiteOutput, GetBucketWebsiteOutputBuilder> {
  _$GetBucketWebsiteOutput? _$v;

  _i2.RedirectAllRequestsToBuilder? _redirectAllRequestsTo;
  _i2.RedirectAllRequestsToBuilder get redirectAllRequestsTo =>
      _$this._redirectAllRequestsTo ??= new _i2.RedirectAllRequestsToBuilder();
  set redirectAllRequestsTo(
          _i2.RedirectAllRequestsToBuilder? redirectAllRequestsTo) =>
      _$this._redirectAllRequestsTo = redirectAllRequestsTo;

  _i3.IndexDocumentBuilder? _indexDocument;
  _i3.IndexDocumentBuilder get indexDocument =>
      _$this._indexDocument ??= new _i3.IndexDocumentBuilder();
  set indexDocument(_i3.IndexDocumentBuilder? indexDocument) =>
      _$this._indexDocument = indexDocument;

  _i4.ErrorDocumentBuilder? _errorDocument;
  _i4.ErrorDocumentBuilder get errorDocument =>
      _$this._errorDocument ??= new _i4.ErrorDocumentBuilder();
  set errorDocument(_i4.ErrorDocumentBuilder? errorDocument) =>
      _$this._errorDocument = errorDocument;

  _i6.ListBuilder<_i5.RoutingRule>? _routingRules;
  _i6.ListBuilder<_i5.RoutingRule> get routingRules =>
      _$this._routingRules ??= new _i6.ListBuilder<_i5.RoutingRule>();
  set routingRules(_i6.ListBuilder<_i5.RoutingRule>? routingRules) =>
      _$this._routingRules = routingRules;

  GetBucketWebsiteOutputBuilder() {
    GetBucketWebsiteOutput._init(this);
  }

  GetBucketWebsiteOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _redirectAllRequestsTo = $v.redirectAllRequestsTo?.toBuilder();
      _indexDocument = $v.indexDocument?.toBuilder();
      _errorDocument = $v.errorDocument?.toBuilder();
      _routingRules = $v.routingRules?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketWebsiteOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketWebsiteOutput;
  }

  @override
  void update(void Function(GetBucketWebsiteOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketWebsiteOutput build() => _build();

  _$GetBucketWebsiteOutput _build() {
    _$GetBucketWebsiteOutput _$result;
    try {
      _$result = _$v ??
          new _$GetBucketWebsiteOutput._(
              redirectAllRequestsTo: _redirectAllRequestsTo?.build(),
              indexDocument: _indexDocument?.build(),
              errorDocument: _errorDocument?.build(),
              routingRules: _routingRules?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'redirectAllRequestsTo';
        _redirectAllRequestsTo?.build();
        _$failedField = 'indexDocument';
        _indexDocument?.build();
        _$failedField = 'errorDocument';
        _errorDocument?.build();
        _$failedField = 'routingRules';
        _routingRules?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetBucketWebsiteOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
