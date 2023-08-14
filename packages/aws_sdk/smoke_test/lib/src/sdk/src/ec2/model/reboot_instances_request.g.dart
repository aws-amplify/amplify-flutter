// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reboot_instances_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RebootInstancesRequest extends RebootInstancesRequest {
  @override
  final _i3.BuiltList<String>? instanceIds;
  @override
  final bool dryRun;

  factory _$RebootInstancesRequest(
          [void Function(RebootInstancesRequestBuilder)? updates]) =>
      (new RebootInstancesRequestBuilder()..update(updates))._build();

  _$RebootInstancesRequest._({this.instanceIds, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'RebootInstancesRequest', 'dryRun');
  }

  @override
  RebootInstancesRequest rebuild(
          void Function(RebootInstancesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RebootInstancesRequestBuilder toBuilder() =>
      new RebootInstancesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RebootInstancesRequest &&
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

class RebootInstancesRequestBuilder
    implements Builder<RebootInstancesRequest, RebootInstancesRequestBuilder> {
  _$RebootInstancesRequest? _$v;

  _i3.ListBuilder<String>? _instanceIds;
  _i3.ListBuilder<String> get instanceIds =>
      _$this._instanceIds ??= new _i3.ListBuilder<String>();
  set instanceIds(_i3.ListBuilder<String>? instanceIds) =>
      _$this._instanceIds = instanceIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  RebootInstancesRequestBuilder() {
    RebootInstancesRequest._init(this);
  }

  RebootInstancesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceIds = $v.instanceIds?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RebootInstancesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RebootInstancesRequest;
  }

  @override
  void update(void Function(RebootInstancesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RebootInstancesRequest build() => _build();

  _$RebootInstancesRequest _build() {
    _$RebootInstancesRequest _$result;
    try {
      _$result = _$v ??
          new _$RebootInstancesRequest._(
              instanceIds: _instanceIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'RebootInstancesRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceIds';
        _instanceIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RebootInstancesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
