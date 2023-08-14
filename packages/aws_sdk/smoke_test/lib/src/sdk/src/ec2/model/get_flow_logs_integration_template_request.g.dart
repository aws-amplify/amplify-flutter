// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_flow_logs_integration_template_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFlowLogsIntegrationTemplateRequest
    extends GetFlowLogsIntegrationTemplateRequest {
  @override
  final bool dryRun;
  @override
  final String? flowLogId;
  @override
  final String? configDeliveryS3DestinationArn;
  @override
  final IntegrateServices? integrateServices;

  factory _$GetFlowLogsIntegrationTemplateRequest(
          [void Function(GetFlowLogsIntegrationTemplateRequestBuilder)?
              updates]) =>
      (new GetFlowLogsIntegrationTemplateRequestBuilder()..update(updates))
          ._build();

  _$GetFlowLogsIntegrationTemplateRequest._(
      {required this.dryRun,
      this.flowLogId,
      this.configDeliveryS3DestinationArn,
      this.integrateServices})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetFlowLogsIntegrationTemplateRequest', 'dryRun');
  }

  @override
  GetFlowLogsIntegrationTemplateRequest rebuild(
          void Function(GetFlowLogsIntegrationTemplateRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFlowLogsIntegrationTemplateRequestBuilder toBuilder() =>
      new GetFlowLogsIntegrationTemplateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFlowLogsIntegrationTemplateRequest &&
        dryRun == other.dryRun &&
        flowLogId == other.flowLogId &&
        configDeliveryS3DestinationArn ==
            other.configDeliveryS3DestinationArn &&
        integrateServices == other.integrateServices;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, flowLogId.hashCode);
    _$hash = $jc(_$hash, configDeliveryS3DestinationArn.hashCode);
    _$hash = $jc(_$hash, integrateServices.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetFlowLogsIntegrationTemplateRequestBuilder
    implements
        Builder<GetFlowLogsIntegrationTemplateRequest,
            GetFlowLogsIntegrationTemplateRequestBuilder> {
  _$GetFlowLogsIntegrationTemplateRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _flowLogId;
  String? get flowLogId => _$this._flowLogId;
  set flowLogId(String? flowLogId) => _$this._flowLogId = flowLogId;

  String? _configDeliveryS3DestinationArn;
  String? get configDeliveryS3DestinationArn =>
      _$this._configDeliveryS3DestinationArn;
  set configDeliveryS3DestinationArn(String? configDeliveryS3DestinationArn) =>
      _$this._configDeliveryS3DestinationArn = configDeliveryS3DestinationArn;

  IntegrateServicesBuilder? _integrateServices;
  IntegrateServicesBuilder get integrateServices =>
      _$this._integrateServices ??= new IntegrateServicesBuilder();
  set integrateServices(IntegrateServicesBuilder? integrateServices) =>
      _$this._integrateServices = integrateServices;

  GetFlowLogsIntegrationTemplateRequestBuilder() {
    GetFlowLogsIntegrationTemplateRequest._init(this);
  }

  GetFlowLogsIntegrationTemplateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _flowLogId = $v.flowLogId;
      _configDeliveryS3DestinationArn = $v.configDeliveryS3DestinationArn;
      _integrateServices = $v.integrateServices?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFlowLogsIntegrationTemplateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetFlowLogsIntegrationTemplateRequest;
  }

  @override
  void update(
      void Function(GetFlowLogsIntegrationTemplateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetFlowLogsIntegrationTemplateRequest build() => _build();

  _$GetFlowLogsIntegrationTemplateRequest _build() {
    _$GetFlowLogsIntegrationTemplateRequest _$result;
    try {
      _$result = _$v ??
          new _$GetFlowLogsIntegrationTemplateRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'GetFlowLogsIntegrationTemplateRequest', 'dryRun'),
              flowLogId: flowLogId,
              configDeliveryS3DestinationArn: configDeliveryS3DestinationArn,
              integrateServices: _integrateServices?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'integrateServices';
        _integrateServices?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetFlowLogsIntegrationTemplateRequest',
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
