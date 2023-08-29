// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_type_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceTypeDetail extends ServiceTypeDetail {
  @override
  final ServiceType? serviceType;

  factory _$ServiceTypeDetail(
          [void Function(ServiceTypeDetailBuilder)? updates]) =>
      (new ServiceTypeDetailBuilder()..update(updates))._build();

  _$ServiceTypeDetail._({this.serviceType}) : super._();

  @override
  ServiceTypeDetail rebuild(void Function(ServiceTypeDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceTypeDetailBuilder toBuilder() =>
      new ServiceTypeDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceTypeDetail && serviceType == other.serviceType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serviceType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ServiceTypeDetailBuilder
    implements Builder<ServiceTypeDetail, ServiceTypeDetailBuilder> {
  _$ServiceTypeDetail? _$v;

  ServiceType? _serviceType;
  ServiceType? get serviceType => _$this._serviceType;
  set serviceType(ServiceType? serviceType) =>
      _$this._serviceType = serviceType;

  ServiceTypeDetailBuilder();

  ServiceTypeDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serviceType = $v.serviceType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceTypeDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServiceTypeDetail;
  }

  @override
  void update(void Function(ServiceTypeDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceTypeDetail build() => _build();

  _$ServiceTypeDetail _build() {
    final _$result = _$v ?? new _$ServiceTypeDetail._(serviceType: serviceType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
