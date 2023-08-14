// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stop_instances_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StopInstancesRequest extends StopInstancesRequest {
  @override
  final _i3.BuiltList<String>? instanceIds;
  @override
  final bool hibernate;
  @override
  final bool dryRun;
  @override
  final bool force;

  factory _$StopInstancesRequest(
          [void Function(StopInstancesRequestBuilder)? updates]) =>
      (new StopInstancesRequestBuilder()..update(updates))._build();

  _$StopInstancesRequest._(
      {this.instanceIds,
      required this.hibernate,
      required this.dryRun,
      required this.force})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        hibernate, r'StopInstancesRequest', 'hibernate');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'StopInstancesRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        force, r'StopInstancesRequest', 'force');
  }

  @override
  StopInstancesRequest rebuild(
          void Function(StopInstancesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StopInstancesRequestBuilder toBuilder() =>
      new StopInstancesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StopInstancesRequest &&
        instanceIds == other.instanceIds &&
        hibernate == other.hibernate &&
        dryRun == other.dryRun &&
        force == other.force;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceIds.hashCode);
    _$hash = $jc(_$hash, hibernate.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, force.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StopInstancesRequestBuilder
    implements Builder<StopInstancesRequest, StopInstancesRequestBuilder> {
  _$StopInstancesRequest? _$v;

  _i3.ListBuilder<String>? _instanceIds;
  _i3.ListBuilder<String> get instanceIds =>
      _$this._instanceIds ??= new _i3.ListBuilder<String>();
  set instanceIds(_i3.ListBuilder<String>? instanceIds) =>
      _$this._instanceIds = instanceIds;

  bool? _hibernate;
  bool? get hibernate => _$this._hibernate;
  set hibernate(bool? hibernate) => _$this._hibernate = hibernate;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  bool? _force;
  bool? get force => _$this._force;
  set force(bool? force) => _$this._force = force;

  StopInstancesRequestBuilder() {
    StopInstancesRequest._init(this);
  }

  StopInstancesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceIds = $v.instanceIds?.toBuilder();
      _hibernate = $v.hibernate;
      _dryRun = $v.dryRun;
      _force = $v.force;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StopInstancesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StopInstancesRequest;
  }

  @override
  void update(void Function(StopInstancesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StopInstancesRequest build() => _build();

  _$StopInstancesRequest _build() {
    _$StopInstancesRequest _$result;
    try {
      _$result = _$v ??
          new _$StopInstancesRequest._(
              instanceIds: _instanceIds?.build(),
              hibernate: BuiltValueNullFieldError.checkNotNull(
                  hibernate, r'StopInstancesRequest', 'hibernate'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'StopInstancesRequest', 'dryRun'),
              force: BuiltValueNullFieldError.checkNotNull(
                  force, r'StopInstancesRequest', 'force'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceIds';
        _instanceIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StopInstancesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
