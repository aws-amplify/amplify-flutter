// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.service_last_accessed;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceLastAccessed extends ServiceLastAccessed {
  @override
  final String serviceName;
  @override
  final DateTime? lastAuthenticated;
  @override
  final String serviceNamespace;
  @override
  final String? lastAuthenticatedEntity;
  @override
  final String? lastAuthenticatedRegion;
  @override
  final int? totalAuthenticatedEntities;
  @override
  final _i3.BuiltList<_i2.TrackedActionLastAccessed>?
      trackedActionsLastAccessed;

  factory _$ServiceLastAccessed(
          [void Function(ServiceLastAccessedBuilder)? updates]) =>
      (new ServiceLastAccessedBuilder()..update(updates))._build();

  _$ServiceLastAccessed._(
      {required this.serviceName,
      this.lastAuthenticated,
      required this.serviceNamespace,
      this.lastAuthenticatedEntity,
      this.lastAuthenticatedRegion,
      this.totalAuthenticatedEntities,
      this.trackedActionsLastAccessed})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        serviceName, r'ServiceLastAccessed', 'serviceName');
    BuiltValueNullFieldError.checkNotNull(
        serviceNamespace, r'ServiceLastAccessed', 'serviceNamespace');
  }

  @override
  ServiceLastAccessed rebuild(
          void Function(ServiceLastAccessedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceLastAccessedBuilder toBuilder() =>
      new ServiceLastAccessedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceLastAccessed &&
        serviceName == other.serviceName &&
        lastAuthenticated == other.lastAuthenticated &&
        serviceNamespace == other.serviceNamespace &&
        lastAuthenticatedEntity == other.lastAuthenticatedEntity &&
        lastAuthenticatedRegion == other.lastAuthenticatedRegion &&
        totalAuthenticatedEntities == other.totalAuthenticatedEntities &&
        trackedActionsLastAccessed == other.trackedActionsLastAccessed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serviceName.hashCode);
    _$hash = $jc(_$hash, lastAuthenticated.hashCode);
    _$hash = $jc(_$hash, serviceNamespace.hashCode);
    _$hash = $jc(_$hash, lastAuthenticatedEntity.hashCode);
    _$hash = $jc(_$hash, lastAuthenticatedRegion.hashCode);
    _$hash = $jc(_$hash, totalAuthenticatedEntities.hashCode);
    _$hash = $jc(_$hash, trackedActionsLastAccessed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ServiceLastAccessedBuilder
    implements Builder<ServiceLastAccessed, ServiceLastAccessedBuilder> {
  _$ServiceLastAccessed? _$v;

  String? _serviceName;
  String? get serviceName => _$this._serviceName;
  set serviceName(String? serviceName) => _$this._serviceName = serviceName;

  DateTime? _lastAuthenticated;
  DateTime? get lastAuthenticated => _$this._lastAuthenticated;
  set lastAuthenticated(DateTime? lastAuthenticated) =>
      _$this._lastAuthenticated = lastAuthenticated;

  String? _serviceNamespace;
  String? get serviceNamespace => _$this._serviceNamespace;
  set serviceNamespace(String? serviceNamespace) =>
      _$this._serviceNamespace = serviceNamespace;

  String? _lastAuthenticatedEntity;
  String? get lastAuthenticatedEntity => _$this._lastAuthenticatedEntity;
  set lastAuthenticatedEntity(String? lastAuthenticatedEntity) =>
      _$this._lastAuthenticatedEntity = lastAuthenticatedEntity;

  String? _lastAuthenticatedRegion;
  String? get lastAuthenticatedRegion => _$this._lastAuthenticatedRegion;
  set lastAuthenticatedRegion(String? lastAuthenticatedRegion) =>
      _$this._lastAuthenticatedRegion = lastAuthenticatedRegion;

  int? _totalAuthenticatedEntities;
  int? get totalAuthenticatedEntities => _$this._totalAuthenticatedEntities;
  set totalAuthenticatedEntities(int? totalAuthenticatedEntities) =>
      _$this._totalAuthenticatedEntities = totalAuthenticatedEntities;

  _i3.ListBuilder<_i2.TrackedActionLastAccessed>? _trackedActionsLastAccessed;
  _i3.ListBuilder<_i2.TrackedActionLastAccessed>
      get trackedActionsLastAccessed => _$this._trackedActionsLastAccessed ??=
          new _i3.ListBuilder<_i2.TrackedActionLastAccessed>();
  set trackedActionsLastAccessed(
          _i3.ListBuilder<_i2.TrackedActionLastAccessed>?
              trackedActionsLastAccessed) =>
      _$this._trackedActionsLastAccessed = trackedActionsLastAccessed;

  ServiceLastAccessedBuilder() {
    ServiceLastAccessed._init(this);
  }

  ServiceLastAccessedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serviceName = $v.serviceName;
      _lastAuthenticated = $v.lastAuthenticated;
      _serviceNamespace = $v.serviceNamespace;
      _lastAuthenticatedEntity = $v.lastAuthenticatedEntity;
      _lastAuthenticatedRegion = $v.lastAuthenticatedRegion;
      _totalAuthenticatedEntities = $v.totalAuthenticatedEntities;
      _trackedActionsLastAccessed = $v.trackedActionsLastAccessed?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceLastAccessed other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServiceLastAccessed;
  }

  @override
  void update(void Function(ServiceLastAccessedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceLastAccessed build() => _build();

  _$ServiceLastAccessed _build() {
    _$ServiceLastAccessed _$result;
    try {
      _$result = _$v ??
          new _$ServiceLastAccessed._(
              serviceName: BuiltValueNullFieldError.checkNotNull(
                  serviceName, r'ServiceLastAccessed', 'serviceName'),
              lastAuthenticated: lastAuthenticated,
              serviceNamespace: BuiltValueNullFieldError.checkNotNull(
                  serviceNamespace, r'ServiceLastAccessed', 'serviceNamespace'),
              lastAuthenticatedEntity: lastAuthenticatedEntity,
              lastAuthenticatedRegion: lastAuthenticatedRegion,
              totalAuthenticatedEntities: totalAuthenticatedEntities,
              trackedActionsLastAccessed: _trackedActionsLastAccessed?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'trackedActionsLastAccessed';
        _trackedActionsLastAccessed?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ServiceLastAccessed', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
