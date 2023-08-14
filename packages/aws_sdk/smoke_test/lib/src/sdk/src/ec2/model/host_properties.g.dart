// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'host_properties.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HostProperties extends HostProperties {
  @override
  final int cores;
  @override
  final String? instanceType;
  @override
  final String? instanceFamily;
  @override
  final int sockets;
  @override
  final int totalVCpus;

  factory _$HostProperties([void Function(HostPropertiesBuilder)? updates]) =>
      (new HostPropertiesBuilder()..update(updates))._build();

  _$HostProperties._(
      {required this.cores,
      this.instanceType,
      this.instanceFamily,
      required this.sockets,
      required this.totalVCpus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(cores, r'HostProperties', 'cores');
    BuiltValueNullFieldError.checkNotNull(
        sockets, r'HostProperties', 'sockets');
    BuiltValueNullFieldError.checkNotNull(
        totalVCpus, r'HostProperties', 'totalVCpus');
  }

  @override
  HostProperties rebuild(void Function(HostPropertiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HostPropertiesBuilder toBuilder() =>
      new HostPropertiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HostProperties &&
        cores == other.cores &&
        instanceType == other.instanceType &&
        instanceFamily == other.instanceFamily &&
        sockets == other.sockets &&
        totalVCpus == other.totalVCpus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cores.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, instanceFamily.hashCode);
    _$hash = $jc(_$hash, sockets.hashCode);
    _$hash = $jc(_$hash, totalVCpus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HostPropertiesBuilder
    implements Builder<HostProperties, HostPropertiesBuilder> {
  _$HostProperties? _$v;

  int? _cores;
  int? get cores => _$this._cores;
  set cores(int? cores) => _$this._cores = cores;

  String? _instanceType;
  String? get instanceType => _$this._instanceType;
  set instanceType(String? instanceType) => _$this._instanceType = instanceType;

  String? _instanceFamily;
  String? get instanceFamily => _$this._instanceFamily;
  set instanceFamily(String? instanceFamily) =>
      _$this._instanceFamily = instanceFamily;

  int? _sockets;
  int? get sockets => _$this._sockets;
  set sockets(int? sockets) => _$this._sockets = sockets;

  int? _totalVCpus;
  int? get totalVCpus => _$this._totalVCpus;
  set totalVCpus(int? totalVCpus) => _$this._totalVCpus = totalVCpus;

  HostPropertiesBuilder() {
    HostProperties._init(this);
  }

  HostPropertiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cores = $v.cores;
      _instanceType = $v.instanceType;
      _instanceFamily = $v.instanceFamily;
      _sockets = $v.sockets;
      _totalVCpus = $v.totalVCpus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HostProperties other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HostProperties;
  }

  @override
  void update(void Function(HostPropertiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HostProperties build() => _build();

  _$HostProperties _build() {
    final _$result = _$v ??
        new _$HostProperties._(
            cores: BuiltValueNullFieldError.checkNotNull(
                cores, r'HostProperties', 'cores'),
            instanceType: instanceType,
            instanceFamily: instanceFamily,
            sockets: BuiltValueNullFieldError.checkNotNull(
                sockets, r'HostProperties', 'sockets'),
            totalVCpus: BuiltValueNullFieldError.checkNotNull(
                totalVCpus, r'HostProperties', 'totalVCpus'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
