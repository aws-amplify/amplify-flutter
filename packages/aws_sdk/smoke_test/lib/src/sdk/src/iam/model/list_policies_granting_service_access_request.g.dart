// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_policies_granting_service_access_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListPoliciesGrantingServiceAccessRequest
    extends ListPoliciesGrantingServiceAccessRequest {
  @override
  final String? marker;
  @override
  final String arn;
  @override
  final _i3.BuiltList<String> serviceNamespaces;

  factory _$ListPoliciesGrantingServiceAccessRequest(
          [void Function(ListPoliciesGrantingServiceAccessRequestBuilder)?
              updates]) =>
      (new ListPoliciesGrantingServiceAccessRequestBuilder()..update(updates))
          ._build();

  _$ListPoliciesGrantingServiceAccessRequest._(
      {this.marker, required this.arn, required this.serviceNamespaces})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        arn, r'ListPoliciesGrantingServiceAccessRequest', 'arn');
    BuiltValueNullFieldError.checkNotNull(serviceNamespaces,
        r'ListPoliciesGrantingServiceAccessRequest', 'serviceNamespaces');
  }

  @override
  ListPoliciesGrantingServiceAccessRequest rebuild(
          void Function(ListPoliciesGrantingServiceAccessRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListPoliciesGrantingServiceAccessRequestBuilder toBuilder() =>
      new ListPoliciesGrantingServiceAccessRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListPoliciesGrantingServiceAccessRequest &&
        marker == other.marker &&
        arn == other.arn &&
        serviceNamespaces == other.serviceNamespaces;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, serviceNamespaces.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListPoliciesGrantingServiceAccessRequestBuilder
    implements
        Builder<ListPoliciesGrantingServiceAccessRequest,
            ListPoliciesGrantingServiceAccessRequestBuilder> {
  _$ListPoliciesGrantingServiceAccessRequest? _$v;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  _i3.ListBuilder<String>? _serviceNamespaces;
  _i3.ListBuilder<String> get serviceNamespaces =>
      _$this._serviceNamespaces ??= new _i3.ListBuilder<String>();
  set serviceNamespaces(_i3.ListBuilder<String>? serviceNamespaces) =>
      _$this._serviceNamespaces = serviceNamespaces;

  ListPoliciesGrantingServiceAccessRequestBuilder() {
    ListPoliciesGrantingServiceAccessRequest._init(this);
  }

  ListPoliciesGrantingServiceAccessRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _marker = $v.marker;
      _arn = $v.arn;
      _serviceNamespaces = $v.serviceNamespaces.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListPoliciesGrantingServiceAccessRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListPoliciesGrantingServiceAccessRequest;
  }

  @override
  void update(
      void Function(ListPoliciesGrantingServiceAccessRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListPoliciesGrantingServiceAccessRequest build() => _build();

  _$ListPoliciesGrantingServiceAccessRequest _build() {
    _$ListPoliciesGrantingServiceAccessRequest _$result;
    try {
      _$result = _$v ??
          new _$ListPoliciesGrantingServiceAccessRequest._(
              marker: marker,
              arn: BuiltValueNullFieldError.checkNotNull(
                  arn, r'ListPoliciesGrantingServiceAccessRequest', 'arn'),
              serviceNamespaces: serviceNamespaces.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'serviceNamespaces';
        serviceNamespaces.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListPoliciesGrantingServiceAccessRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
