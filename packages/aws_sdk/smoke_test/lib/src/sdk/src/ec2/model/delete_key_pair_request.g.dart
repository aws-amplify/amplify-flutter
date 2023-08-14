// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_key_pair_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteKeyPairRequest extends DeleteKeyPairRequest {
  @override
  final String? keyName;
  @override
  final String? keyPairId;
  @override
  final bool dryRun;

  factory _$DeleteKeyPairRequest(
          [void Function(DeleteKeyPairRequestBuilder)? updates]) =>
      (new DeleteKeyPairRequestBuilder()..update(updates))._build();

  _$DeleteKeyPairRequest._({this.keyName, this.keyPairId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteKeyPairRequest', 'dryRun');
  }

  @override
  DeleteKeyPairRequest rebuild(
          void Function(DeleteKeyPairRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteKeyPairRequestBuilder toBuilder() =>
      new DeleteKeyPairRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteKeyPairRequest &&
        keyName == other.keyName &&
        keyPairId == other.keyPairId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, keyName.hashCode);
    _$hash = $jc(_$hash, keyPairId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteKeyPairRequestBuilder
    implements Builder<DeleteKeyPairRequest, DeleteKeyPairRequestBuilder> {
  _$DeleteKeyPairRequest? _$v;

  String? _keyName;
  String? get keyName => _$this._keyName;
  set keyName(String? keyName) => _$this._keyName = keyName;

  String? _keyPairId;
  String? get keyPairId => _$this._keyPairId;
  set keyPairId(String? keyPairId) => _$this._keyPairId = keyPairId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteKeyPairRequestBuilder() {
    DeleteKeyPairRequest._init(this);
  }

  DeleteKeyPairRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keyName = $v.keyName;
      _keyPairId = $v.keyPairId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteKeyPairRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteKeyPairRequest;
  }

  @override
  void update(void Function(DeleteKeyPairRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteKeyPairRequest build() => _build();

  _$DeleteKeyPairRequest _build() {
    final _$result = _$v ??
        new _$DeleteKeyPairRequest._(
            keyName: keyName,
            keyPairId: keyPairId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteKeyPairRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
