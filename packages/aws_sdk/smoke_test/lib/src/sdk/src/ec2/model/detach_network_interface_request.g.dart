// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detach_network_interface_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetachNetworkInterfaceRequest extends DetachNetworkInterfaceRequest {
  @override
  final String? attachmentId;
  @override
  final bool dryRun;
  @override
  final bool force;

  factory _$DetachNetworkInterfaceRequest(
          [void Function(DetachNetworkInterfaceRequestBuilder)? updates]) =>
      (new DetachNetworkInterfaceRequestBuilder()..update(updates))._build();

  _$DetachNetworkInterfaceRequest._(
      {this.attachmentId, required this.dryRun, required this.force})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DetachNetworkInterfaceRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        force, r'DetachNetworkInterfaceRequest', 'force');
  }

  @override
  DetachNetworkInterfaceRequest rebuild(
          void Function(DetachNetworkInterfaceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetachNetworkInterfaceRequestBuilder toBuilder() =>
      new DetachNetworkInterfaceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetachNetworkInterfaceRequest &&
        attachmentId == other.attachmentId &&
        dryRun == other.dryRun &&
        force == other.force;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attachmentId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, force.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DetachNetworkInterfaceRequestBuilder
    implements
        Builder<DetachNetworkInterfaceRequest,
            DetachNetworkInterfaceRequestBuilder> {
  _$DetachNetworkInterfaceRequest? _$v;

  String? _attachmentId;
  String? get attachmentId => _$this._attachmentId;
  set attachmentId(String? attachmentId) => _$this._attachmentId = attachmentId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  bool? _force;
  bool? get force => _$this._force;
  set force(bool? force) => _$this._force = force;

  DetachNetworkInterfaceRequestBuilder() {
    DetachNetworkInterfaceRequest._init(this);
  }

  DetachNetworkInterfaceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attachmentId = $v.attachmentId;
      _dryRun = $v.dryRun;
      _force = $v.force;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetachNetworkInterfaceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DetachNetworkInterfaceRequest;
  }

  @override
  void update(void Function(DetachNetworkInterfaceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DetachNetworkInterfaceRequest build() => _build();

  _$DetachNetworkInterfaceRequest _build() {
    final _$result = _$v ??
        new _$DetachNetworkInterfaceRequest._(
            attachmentId: attachmentId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DetachNetworkInterfaceRequest', 'dryRun'),
            force: BuiltValueNullFieldError.checkNotNull(
                force, r'DetachNetworkInterfaceRequest', 'force'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
