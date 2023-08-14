// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_reserved_instances_exchange_quote_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AcceptReservedInstancesExchangeQuoteRequest
    extends AcceptReservedInstancesExchangeQuoteRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? reservedInstanceIds;
  @override
  final _i3.BuiltList<TargetConfigurationRequest>? targetConfigurations;

  factory _$AcceptReservedInstancesExchangeQuoteRequest(
          [void Function(AcceptReservedInstancesExchangeQuoteRequestBuilder)?
              updates]) =>
      (new AcceptReservedInstancesExchangeQuoteRequestBuilder()
            ..update(updates))
          ._build();

  _$AcceptReservedInstancesExchangeQuoteRequest._(
      {required this.dryRun,
      this.reservedInstanceIds,
      this.targetConfigurations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AcceptReservedInstancesExchangeQuoteRequest', 'dryRun');
  }

  @override
  AcceptReservedInstancesExchangeQuoteRequest rebuild(
          void Function(AcceptReservedInstancesExchangeQuoteRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcceptReservedInstancesExchangeQuoteRequestBuilder toBuilder() =>
      new AcceptReservedInstancesExchangeQuoteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcceptReservedInstancesExchangeQuoteRequest &&
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

class AcceptReservedInstancesExchangeQuoteRequestBuilder
    implements
        Builder<AcceptReservedInstancesExchangeQuoteRequest,
            AcceptReservedInstancesExchangeQuoteRequestBuilder> {
  _$AcceptReservedInstancesExchangeQuoteRequest? _$v;

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

  AcceptReservedInstancesExchangeQuoteRequestBuilder() {
    AcceptReservedInstancesExchangeQuoteRequest._init(this);
  }

  AcceptReservedInstancesExchangeQuoteRequestBuilder get _$this {
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
  void replace(AcceptReservedInstancesExchangeQuoteRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AcceptReservedInstancesExchangeQuoteRequest;
  }

  @override
  void update(
      void Function(AcceptReservedInstancesExchangeQuoteRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  AcceptReservedInstancesExchangeQuoteRequest build() => _build();

  _$AcceptReservedInstancesExchangeQuoteRequest _build() {
    _$AcceptReservedInstancesExchangeQuoteRequest _$result;
    try {
      _$result = _$v ??
          new _$AcceptReservedInstancesExchangeQuoteRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'AcceptReservedInstancesExchangeQuoteRequest', 'dryRun'),
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
            r'AcceptReservedInstancesExchangeQuoteRequest',
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
