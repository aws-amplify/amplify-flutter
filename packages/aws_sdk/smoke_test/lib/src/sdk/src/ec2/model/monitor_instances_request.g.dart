// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monitor_instances_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MonitorInstancesRequest extends MonitorInstancesRequest {
  @override
  final _i3.BuiltList<String>? instanceIds;
  @override
  final bool dryRun;

  factory _$MonitorInstancesRequest(
          [void Function(MonitorInstancesRequestBuilder)? updates]) =>
      (new MonitorInstancesRequestBuilder()..update(updates))._build();

  _$MonitorInstancesRequest._({this.instanceIds, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'MonitorInstancesRequest', 'dryRun');
  }

  @override
  MonitorInstancesRequest rebuild(
          void Function(MonitorInstancesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MonitorInstancesRequestBuilder toBuilder() =>
      new MonitorInstancesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MonitorInstancesRequest &&
        instanceIds == other.instanceIds &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MonitorInstancesRequestBuilder
    implements
        Builder<MonitorInstancesRequest, MonitorInstancesRequestBuilder> {
  _$MonitorInstancesRequest? _$v;

  _i3.ListBuilder<String>? _instanceIds;
  _i3.ListBuilder<String> get instanceIds =>
      _$this._instanceIds ??= new _i3.ListBuilder<String>();
  set instanceIds(_i3.ListBuilder<String>? instanceIds) =>
      _$this._instanceIds = instanceIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  MonitorInstancesRequestBuilder() {
    MonitorInstancesRequest._init(this);
  }

  MonitorInstancesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceIds = $v.instanceIds?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MonitorInstancesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MonitorInstancesRequest;
  }

  @override
  void update(void Function(MonitorInstancesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MonitorInstancesRequest build() => _build();

  _$MonitorInstancesRequest _build() {
    _$MonitorInstancesRequest _$result;
    try {
      _$result = _$v ??
          new _$MonitorInstancesRequest._(
              instanceIds: _instanceIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'MonitorInstancesRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceIds';
        _instanceIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MonitorInstancesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
