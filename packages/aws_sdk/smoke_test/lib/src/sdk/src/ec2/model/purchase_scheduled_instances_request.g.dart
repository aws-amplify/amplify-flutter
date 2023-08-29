// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_scheduled_instances_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PurchaseScheduledInstancesRequest
    extends PurchaseScheduledInstancesRequest {
  @override
  final String? clientToken;
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<PurchaseRequest>? purchaseRequests;

  factory _$PurchaseScheduledInstancesRequest(
          [void Function(PurchaseScheduledInstancesRequestBuilder)? updates]) =>
      (new PurchaseScheduledInstancesRequestBuilder()..update(updates))
          ._build();

  _$PurchaseScheduledInstancesRequest._(
      {this.clientToken, required this.dryRun, this.purchaseRequests})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'PurchaseScheduledInstancesRequest', 'dryRun');
  }

  @override
  PurchaseScheduledInstancesRequest rebuild(
          void Function(PurchaseScheduledInstancesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PurchaseScheduledInstancesRequestBuilder toBuilder() =>
      new PurchaseScheduledInstancesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PurchaseScheduledInstancesRequest &&
        clientToken == other.clientToken &&
        dryRun == other.dryRun &&
        purchaseRequests == other.purchaseRequests;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, purchaseRequests.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PurchaseScheduledInstancesRequestBuilder
    implements
        Builder<PurchaseScheduledInstancesRequest,
            PurchaseScheduledInstancesRequestBuilder> {
  _$PurchaseScheduledInstancesRequest? _$v;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<PurchaseRequest>? _purchaseRequests;
  _i3.ListBuilder<PurchaseRequest> get purchaseRequests =>
      _$this._purchaseRequests ??= new _i3.ListBuilder<PurchaseRequest>();
  set purchaseRequests(_i3.ListBuilder<PurchaseRequest>? purchaseRequests) =>
      _$this._purchaseRequests = purchaseRequests;

  PurchaseScheduledInstancesRequestBuilder() {
    PurchaseScheduledInstancesRequest._init(this);
  }

  PurchaseScheduledInstancesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientToken = $v.clientToken;
      _dryRun = $v.dryRun;
      _purchaseRequests = $v.purchaseRequests?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PurchaseScheduledInstancesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PurchaseScheduledInstancesRequest;
  }

  @override
  void update(
      void Function(PurchaseScheduledInstancesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PurchaseScheduledInstancesRequest build() => _build();

  _$PurchaseScheduledInstancesRequest _build() {
    _$PurchaseScheduledInstancesRequest _$result;
    try {
      _$result = _$v ??
          new _$PurchaseScheduledInstancesRequest._(
              clientToken: clientToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'PurchaseScheduledInstancesRequest', 'dryRun'),
              purchaseRequests: _purchaseRequests?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'purchaseRequests';
        _purchaseRequests?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PurchaseScheduledInstancesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
