// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terminate_instances_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TerminateInstancesRequest extends TerminateInstancesRequest {
  @override
  final _i3.BuiltList<String>? instanceIds;
  @override
  final bool dryRun;

  factory _$TerminateInstancesRequest(
          [void Function(TerminateInstancesRequestBuilder)? updates]) =>
      (new TerminateInstancesRequestBuilder()..update(updates))._build();

  _$TerminateInstancesRequest._({this.instanceIds, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'TerminateInstancesRequest', 'dryRun');
  }

  @override
  TerminateInstancesRequest rebuild(
          void Function(TerminateInstancesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TerminateInstancesRequestBuilder toBuilder() =>
      new TerminateInstancesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TerminateInstancesRequest &&
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

class TerminateInstancesRequestBuilder
    implements
        Builder<TerminateInstancesRequest, TerminateInstancesRequestBuilder> {
  _$TerminateInstancesRequest? _$v;

  _i3.ListBuilder<String>? _instanceIds;
  _i3.ListBuilder<String> get instanceIds =>
      _$this._instanceIds ??= new _i3.ListBuilder<String>();
  set instanceIds(_i3.ListBuilder<String>? instanceIds) =>
      _$this._instanceIds = instanceIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  TerminateInstancesRequestBuilder() {
    TerminateInstancesRequest._init(this);
  }

  TerminateInstancesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceIds = $v.instanceIds?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TerminateInstancesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TerminateInstancesRequest;
  }

  @override
  void update(void Function(TerminateInstancesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TerminateInstancesRequest build() => _build();

  _$TerminateInstancesRequest _build() {
    _$TerminateInstancesRequest _$result;
    try {
      _$result = _$v ??
          new _$TerminateInstancesRequest._(
              instanceIds: _instanceIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'TerminateInstancesRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceIds';
        _instanceIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TerminateInstancesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
