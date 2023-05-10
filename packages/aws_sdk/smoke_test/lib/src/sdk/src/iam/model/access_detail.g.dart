// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.access_detail;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccessDetail extends AccessDetail {
  @override
  final String serviceName;
  @override
  final String serviceNamespace;
  @override
  final String? region;
  @override
  final String? entityPath;
  @override
  final DateTime? lastAuthenticatedTime;
  @override
  final int? totalAuthenticatedEntities;

  factory _$AccessDetail([void Function(AccessDetailBuilder)? updates]) =>
      (new AccessDetailBuilder()..update(updates))._build();

  _$AccessDetail._(
      {required this.serviceName,
      required this.serviceNamespace,
      this.region,
      this.entityPath,
      this.lastAuthenticatedTime,
      this.totalAuthenticatedEntities})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        serviceName, r'AccessDetail', 'serviceName');
    BuiltValueNullFieldError.checkNotNull(
        serviceNamespace, r'AccessDetail', 'serviceNamespace');
  }

  @override
  AccessDetail rebuild(void Function(AccessDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessDetailBuilder toBuilder() => new AccessDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessDetail &&
        serviceName == other.serviceName &&
        serviceNamespace == other.serviceNamespace &&
        region == other.region &&
        entityPath == other.entityPath &&
        lastAuthenticatedTime == other.lastAuthenticatedTime &&
        totalAuthenticatedEntities == other.totalAuthenticatedEntities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serviceName.hashCode);
    _$hash = $jc(_$hash, serviceNamespace.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, entityPath.hashCode);
    _$hash = $jc(_$hash, lastAuthenticatedTime.hashCode);
    _$hash = $jc(_$hash, totalAuthenticatedEntities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AccessDetailBuilder
    implements Builder<AccessDetail, AccessDetailBuilder> {
  _$AccessDetail? _$v;

  String? _serviceName;
  String? get serviceName => _$this._serviceName;
  set serviceName(String? serviceName) => _$this._serviceName = serviceName;

  String? _serviceNamespace;
  String? get serviceNamespace => _$this._serviceNamespace;
  set serviceNamespace(String? serviceNamespace) =>
      _$this._serviceNamespace = serviceNamespace;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  String? _entityPath;
  String? get entityPath => _$this._entityPath;
  set entityPath(String? entityPath) => _$this._entityPath = entityPath;

  DateTime? _lastAuthenticatedTime;
  DateTime? get lastAuthenticatedTime => _$this._lastAuthenticatedTime;
  set lastAuthenticatedTime(DateTime? lastAuthenticatedTime) =>
      _$this._lastAuthenticatedTime = lastAuthenticatedTime;

  int? _totalAuthenticatedEntities;
  int? get totalAuthenticatedEntities => _$this._totalAuthenticatedEntities;
  set totalAuthenticatedEntities(int? totalAuthenticatedEntities) =>
      _$this._totalAuthenticatedEntities = totalAuthenticatedEntities;

  AccessDetailBuilder() {
    AccessDetail._init(this);
  }

  AccessDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serviceName = $v.serviceName;
      _serviceNamespace = $v.serviceNamespace;
      _region = $v.region;
      _entityPath = $v.entityPath;
      _lastAuthenticatedTime = $v.lastAuthenticatedTime;
      _totalAuthenticatedEntities = $v.totalAuthenticatedEntities;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccessDetail;
  }

  @override
  void update(void Function(AccessDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccessDetail build() => _build();

  _$AccessDetail _build() {
    final _$result = _$v ??
        new _$AccessDetail._(
            serviceName: BuiltValueNullFieldError.checkNotNull(
                serviceName, r'AccessDetail', 'serviceName'),
            serviceNamespace: BuiltValueNullFieldError.checkNotNull(
                serviceNamespace, r'AccessDetail', 'serviceNamespace'),
            region: region,
            entityPath: entityPath,
            lastAuthenticatedTime: lastAuthenticatedTime,
            totalAuthenticatedEntities: totalAuthenticatedEntities);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
