// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_reserved_instances_exchange_quote_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetReservedInstancesExchangeQuoteRequest
    extends GetReservedInstancesExchangeQuoteRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? reservedInstanceIds;
  @override
  final _i3.BuiltList<TargetConfigurationRequest>? targetConfigurations;

  factory _$GetReservedInstancesExchangeQuoteRequest(
          [void Function(GetReservedInstancesExchangeQuoteRequestBuilder)?
              updates]) =>
      (new GetReservedInstancesExchangeQuoteRequestBuilder()..update(updates))
          ._build();

  _$GetReservedInstancesExchangeQuoteRequest._(
      {required this.dryRun,
      this.reservedInstanceIds,
      this.targetConfigurations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetReservedInstancesExchangeQuoteRequest', 'dryRun');
  }

  @override
  GetReservedInstancesExchangeQuoteRequest rebuild(
          void Function(GetReservedInstancesExchangeQuoteRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetReservedInstancesExchangeQuoteRequestBuilder toBuilder() =>
      new GetReservedInstancesExchangeQuoteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetReservedInstancesExchangeQuoteRequest &&
        dryRun == other.dryRun &&
        reservedInstanceIds == other.reservedInstanceIds &&
        targetConfigurations == other.targetConfigurations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, reservedInstanceIds.hashCode);
    _$hash = $jc(_$hash, targetConfigurations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetReservedInstancesExchangeQuoteRequestBuilder
    implements
        Builder<GetReservedInstancesExchangeQuoteRequest,
            GetReservedInstancesExchangeQuoteRequestBuilder> {
  _$GetReservedInstancesExchangeQuoteRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _reservedInstanceIds;
  _i3.ListBuilder<String> get reservedInstanceIds =>
      _$this._reservedInstanceIds ??= new _i3.ListBuilder<String>();
  set reservedInstanceIds(_i3.ListBuilder<String>? reservedInstanceIds) =>
      _$this._reservedInstanceIds = reservedInstanceIds;

  _i3.ListBuilder<TargetConfigurationRequest>? _targetConfigurations;
  _i3.ListBuilder<TargetConfigurationRequest> get targetConfigurations =>
      _$this._targetConfigurations ??=
          new _i3.ListBuilder<TargetConfigurationRequest>();
  set targetConfigurations(
          _i3.ListBuilder<TargetConfigurationRequest>? targetConfigurations) =>
      _$this._targetConfigurations = targetConfigurations;

  GetReservedInstancesExchangeQuoteRequestBuilder() {
    GetReservedInstancesExchangeQuoteRequest._init(this);
  }

  GetReservedInstancesExchangeQuoteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _reservedInstanceIds = $v.reservedInstanceIds?.toBuilder();
      _targetConfigurations = $v.targetConfigurations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetReservedInstancesExchangeQuoteRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetReservedInstancesExchangeQuoteRequest;
  }

  @override
  void update(
      void Function(GetReservedInstancesExchangeQuoteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetReservedInstancesExchangeQuoteRequest build() => _build();

  _$GetReservedInstancesExchangeQuoteRequest _build() {
    _$GetReservedInstancesExchangeQuoteRequest _$result;
    try {
      _$result = _$v ??
          new _$GetReservedInstancesExchangeQuoteRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'GetReservedInstancesExchangeQuoteRequest', 'dryRun'),
              reservedInstanceIds: _reservedInstanceIds?.build(),
              targetConfigurations: _targetConfigurations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reservedInstanceIds';
        _reservedInstanceIds?.build();
        _$failedField = 'targetConfigurations';
        _targetConfigurations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetReservedInstancesExchangeQuoteRequest',
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
