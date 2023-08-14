// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_traffic_mirror_filter_network_services_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyTrafficMirrorFilterNetworkServicesResult
    extends ModifyTrafficMirrorFilterNetworkServicesResult {
  @override
  final TrafficMirrorFilter? trafficMirrorFilter;

  factory _$ModifyTrafficMirrorFilterNetworkServicesResult(
          [void Function(ModifyTrafficMirrorFilterNetworkServicesResultBuilder)?
              updates]) =>
      (new ModifyTrafficMirrorFilterNetworkServicesResultBuilder()
            ..update(updates))
          ._build();

  _$ModifyTrafficMirrorFilterNetworkServicesResult._({this.trafficMirrorFilter})
      : super._();

  @override
  ModifyTrafficMirrorFilterNetworkServicesResult rebuild(
          void Function(ModifyTrafficMirrorFilterNetworkServicesResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyTrafficMirrorFilterNetworkServicesResultBuilder toBuilder() =>
      new ModifyTrafficMirrorFilterNetworkServicesResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyTrafficMirrorFilterNetworkServicesResult &&
        trafficMirrorFilter == other.trafficMirrorFilter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorFilter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyTrafficMirrorFilterNetworkServicesResultBuilder
    implements
        Builder<ModifyTrafficMirrorFilterNetworkServicesResult,
            ModifyTrafficMirrorFilterNetworkServicesResultBuilder> {
  _$ModifyTrafficMirrorFilterNetworkServicesResult? _$v;

  TrafficMirrorFilterBuilder? _trafficMirrorFilter;
  TrafficMirrorFilterBuilder get trafficMirrorFilter =>
      _$this._trafficMirrorFilter ??= new TrafficMirrorFilterBuilder();
  set trafficMirrorFilter(TrafficMirrorFilterBuilder? trafficMirrorFilter) =>
      _$this._trafficMirrorFilter = trafficMirrorFilter;

  ModifyTrafficMirrorFilterNetworkServicesResultBuilder();

  ModifyTrafficMirrorFilterNetworkServicesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorFilter = $v.trafficMirrorFilter?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyTrafficMirrorFilterNetworkServicesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyTrafficMirrorFilterNetworkServicesResult;
  }

  @override
  void update(
      void Function(ModifyTrafficMirrorFilterNetworkServicesResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyTrafficMirrorFilterNetworkServicesResult build() => _build();

  _$ModifyTrafficMirrorFilterNetworkServicesResult _build() {
    _$ModifyTrafficMirrorFilterNetworkServicesResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyTrafficMirrorFilterNetworkServicesResult._(
              trafficMirrorFilter: _trafficMirrorFilter?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'trafficMirrorFilter';
        _trafficMirrorFilter?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyTrafficMirrorFilterNetworkServicesResult',
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
