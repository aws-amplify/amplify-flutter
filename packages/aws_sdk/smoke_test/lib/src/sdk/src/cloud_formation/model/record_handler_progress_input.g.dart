// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.record_handler_progress_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecordHandlerProgressInput extends RecordHandlerProgressInput {
  @override
  final String bearerToken;
  @override
  final _i3.OperationStatus operationStatus;
  @override
  final _i3.OperationStatus? currentOperationStatus;
  @override
  final String? statusMessage;
  @override
  final _i4.HandlerErrorCode? errorCode;
  @override
  final String? resourceModel;
  @override
  final String? clientRequestToken;

  factory _$RecordHandlerProgressInput(
          [void Function(RecordHandlerProgressInputBuilder)? updates]) =>
      (new RecordHandlerProgressInputBuilder()..update(updates))._build();

  _$RecordHandlerProgressInput._(
      {required this.bearerToken,
      required this.operationStatus,
      this.currentOperationStatus,
      this.statusMessage,
      this.errorCode,
      this.resourceModel,
      this.clientRequestToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bearerToken, r'RecordHandlerProgressInput', 'bearerToken');
    BuiltValueNullFieldError.checkNotNull(
        operationStatus, r'RecordHandlerProgressInput', 'operationStatus');
  }

  @override
  RecordHandlerProgressInput rebuild(
          void Function(RecordHandlerProgressInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecordHandlerProgressInputBuilder toBuilder() =>
      new RecordHandlerProgressInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecordHandlerProgressInput &&
        bearerToken == other.bearerToken &&
        operationStatus == other.operationStatus &&
        currentOperationStatus == other.currentOperationStatus &&
        statusMessage == other.statusMessage &&
        errorCode == other.errorCode &&
        resourceModel == other.resourceModel &&
        clientRequestToken == other.clientRequestToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bearerToken.hashCode);
    _$hash = $jc(_$hash, operationStatus.hashCode);
    _$hash = $jc(_$hash, currentOperationStatus.hashCode);
    _$hash = $jc(_$hash, statusMessage.hashCode);
    _$hash = $jc(_$hash, errorCode.hashCode);
    _$hash = $jc(_$hash, resourceModel.hashCode);
    _$hash = $jc(_$hash, clientRequestToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RecordHandlerProgressInputBuilder
    implements
        Builder<RecordHandlerProgressInput, RecordHandlerProgressInputBuilder> {
  _$RecordHandlerProgressInput? _$v;

  String? _bearerToken;
  String? get bearerToken => _$this._bearerToken;
  set bearerToken(String? bearerToken) => _$this._bearerToken = bearerToken;

  _i3.OperationStatus? _operationStatus;
  _i3.OperationStatus? get operationStatus => _$this._operationStatus;
  set operationStatus(_i3.OperationStatus? operationStatus) =>
      _$this._operationStatus = operationStatus;

  _i3.OperationStatus? _currentOperationStatus;
  _i3.OperationStatus? get currentOperationStatus =>
      _$this._currentOperationStatus;
  set currentOperationStatus(_i3.OperationStatus? currentOperationStatus) =>
      _$this._currentOperationStatus = currentOperationStatus;

  String? _statusMessage;
  String? get statusMessage => _$this._statusMessage;
  set statusMessage(String? statusMessage) =>
      _$this._statusMessage = statusMessage;

  _i4.HandlerErrorCode? _errorCode;
  _i4.HandlerErrorCode? get errorCode => _$this._errorCode;
  set errorCode(_i4.HandlerErrorCode? errorCode) =>
      _$this._errorCode = errorCode;

  String? _resourceModel;
  String? get resourceModel => _$this._resourceModel;
  set resourceModel(String? resourceModel) =>
      _$this._resourceModel = resourceModel;

  String? _clientRequestToken;
  String? get clientRequestToken => _$this._clientRequestToken;
  set clientRequestToken(String? clientRequestToken) =>
      _$this._clientRequestToken = clientRequestToken;

  RecordHandlerProgressInputBuilder() {
    RecordHandlerProgressInput._init(this);
  }

  RecordHandlerProgressInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bearerToken = $v.bearerToken;
      _operationStatus = $v.operationStatus;
      _currentOperationStatus = $v.currentOperationStatus;
      _statusMessage = $v.statusMessage;
      _errorCode = $v.errorCode;
      _resourceModel = $v.resourceModel;
      _clientRequestToken = $v.clientRequestToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecordHandlerProgressInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecordHandlerProgressInput;
  }

  @override
  void update(void Function(RecordHandlerProgressInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecordHandlerProgressInput build() => _build();

  _$RecordHandlerProgressInput _build() {
    final _$result = _$v ??
        new _$RecordHandlerProgressInput._(
            bearerToken: BuiltValueNullFieldError.checkNotNull(
                bearerToken, r'RecordHandlerProgressInput', 'bearerToken'),
            operationStatus: BuiltValueNullFieldError.checkNotNull(
                operationStatus,
                r'RecordHandlerProgressInput',
                'operationStatus'),
            currentOperationStatus: currentOperationStatus,
            statusMessage: statusMessage,
            errorCode: errorCode,
            resourceModel: resourceModel,
            clientRequestToken: clientRequestToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
