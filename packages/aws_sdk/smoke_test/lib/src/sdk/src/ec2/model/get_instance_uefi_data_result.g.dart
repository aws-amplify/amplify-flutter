// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_instance_uefi_data_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetInstanceUefiDataResult extends GetInstanceUefiDataResult {
  @override
  final String? instanceId;
  @override
  final String? uefiData;

  factory _$GetInstanceUefiDataResult(
          [void Function(GetInstanceUefiDataResultBuilder)? updates]) =>
      (new GetInstanceUefiDataResultBuilder()..update(updates))._build();

  _$GetInstanceUefiDataResult._({this.instanceId, this.uefiData}) : super._();

  @override
  GetInstanceUefiDataResult rebuild(
          void Function(GetInstanceUefiDataResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetInstanceUefiDataResultBuilder toBuilder() =>
      new GetInstanceUefiDataResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetInstanceUefiDataResult &&
        instanceId == other.instanceId &&
        uefiData == other.uefiData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, uefiData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetInstanceUefiDataResultBuilder
    implements
        Builder<GetInstanceUefiDataResult, GetInstanceUefiDataResultBuilder> {
  _$GetInstanceUefiDataResult? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _uefiData;
  String? get uefiData => _$this._uefiData;
  set uefiData(String? uefiData) => _$this._uefiData = uefiData;

  GetInstanceUefiDataResultBuilder();

  GetInstanceUefiDataResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _uefiData = $v.uefiData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetInstanceUefiDataResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetInstanceUefiDataResult;
  }

  @override
  void update(void Function(GetInstanceUefiDataResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetInstanceUefiDataResult build() => _build();

  _$GetInstanceUefiDataResult _build() {
    final _$result = _$v ??
        new _$GetInstanceUefiDataResult._(
            instanceId: instanceId, uefiData: uefiData);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
