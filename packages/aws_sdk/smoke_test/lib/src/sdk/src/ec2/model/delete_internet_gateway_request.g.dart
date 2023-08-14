// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_internet_gateway_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteInternetGatewayRequest extends DeleteInternetGatewayRequest {
  @override
  final bool dryRun;
  @override
  final String? internetGatewayId;

  factory _$DeleteInternetGatewayRequest(
          [void Function(DeleteInternetGatewayRequestBuilder)? updates]) =>
      (new DeleteInternetGatewayRequestBuilder()..update(updates))._build();

  _$DeleteInternetGatewayRequest._(
      {required this.dryRun, this.internetGatewayId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteInternetGatewayRequest', 'dryRun');
  }

  @override
  DeleteInternetGatewayRequest rebuild(
          void Function(DeleteInternetGatewayRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteInternetGatewayRequestBuilder toBuilder() =>
      new DeleteInternetGatewayRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteInternetGatewayRequest &&
        dryRun == other.dryRun &&
        internetGatewayId == other.internetGatewayId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, internetGatewayId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteInternetGatewayRequestBuilder
    implements
        Builder<DeleteInternetGatewayRequest,
            DeleteInternetGatewayRequestBuilder> {
  _$DeleteInternetGatewayRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _internetGatewayId;
  String? get internetGatewayId => _$this._internetGatewayId;
  set internetGatewayId(String? internetGatewayId) =>
      _$this._internetGatewayId = internetGatewayId;

  DeleteInternetGatewayRequestBuilder() {
    DeleteInternetGatewayRequest._init(this);
  }

  DeleteInternetGatewayRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _internetGatewayId = $v.internetGatewayId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteInternetGatewayRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteInternetGatewayRequest;
  }

  @override
  void update(void Function(DeleteInternetGatewayRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteInternetGatewayRequest build() => _build();

  _$DeleteInternetGatewayRequest _build() {
    final _$result = _$v ??
        new _$DeleteInternetGatewayRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteInternetGatewayRequest', 'dryRun'),
            internetGatewayId: internetGatewayId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
