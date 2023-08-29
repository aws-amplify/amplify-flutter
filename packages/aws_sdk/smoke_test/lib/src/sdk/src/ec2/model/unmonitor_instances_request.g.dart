// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unmonitor_instances_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnmonitorInstancesRequest extends UnmonitorInstancesRequest {
  @override
  final _i3.BuiltList<String>? instanceIds;
  @override
  final bool dryRun;

  factory _$UnmonitorInstancesRequest(
          [void Function(UnmonitorInstancesRequestBuilder)? updates]) =>
      (new UnmonitorInstancesRequestBuilder()..update(updates))._build();

  _$UnmonitorInstancesRequest._({this.instanceIds, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'UnmonitorInstancesRequest', 'dryRun');
  }

  @override
  UnmonitorInstancesRequest rebuild(
          void Function(UnmonitorInstancesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnmonitorInstancesRequestBuilder toBuilder() =>
      new UnmonitorInstancesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnmonitorInstancesRequest &&
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

class UnmonitorInstancesRequestBuilder
    implements
        Builder<UnmonitorInstancesRequest, UnmonitorInstancesRequestBuilder> {
  _$UnmonitorInstancesRequest? _$v;

  _i3.ListBuilder<String>? _instanceIds;
  _i3.ListBuilder<String> get instanceIds =>
      _$this._instanceIds ??= new _i3.ListBuilder<String>();
  set instanceIds(_i3.ListBuilder<String>? instanceIds) =>
      _$this._instanceIds = instanceIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  UnmonitorInstancesRequestBuilder() {
    UnmonitorInstancesRequest._init(this);
  }

  UnmonitorInstancesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceIds = $v.instanceIds?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnmonitorInstancesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnmonitorInstancesRequest;
  }

  @override
  void update(void Function(UnmonitorInstancesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnmonitorInstancesRequest build() => _build();

  _$UnmonitorInstancesRequest _build() {
    _$UnmonitorInstancesRequest _$result;
    try {
      _$result = _$v ??
          new _$UnmonitorInstancesRequest._(
              instanceIds: _instanceIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'UnmonitorInstancesRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceIds';
        _instanceIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UnmonitorInstancesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
