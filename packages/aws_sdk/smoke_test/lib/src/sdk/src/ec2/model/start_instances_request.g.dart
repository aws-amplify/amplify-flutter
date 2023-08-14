// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_instances_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartInstancesRequest extends StartInstancesRequest {
  @override
  final _i3.BuiltList<String>? instanceIds;
  @override
  final String? additionalInfo;
  @override
  final bool dryRun;

  factory _$StartInstancesRequest(
          [void Function(StartInstancesRequestBuilder)? updates]) =>
      (new StartInstancesRequestBuilder()..update(updates))._build();

  _$StartInstancesRequest._(
      {this.instanceIds, this.additionalInfo, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'StartInstancesRequest', 'dryRun');
  }

  @override
  StartInstancesRequest rebuild(
          void Function(StartInstancesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartInstancesRequestBuilder toBuilder() =>
      new StartInstancesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartInstancesRequest &&
        instanceIds == other.instanceIds &&
        additionalInfo == other.additionalInfo &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceIds.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StartInstancesRequestBuilder
    implements Builder<StartInstancesRequest, StartInstancesRequestBuilder> {
  _$StartInstancesRequest? _$v;

  _i3.ListBuilder<String>? _instanceIds;
  _i3.ListBuilder<String> get instanceIds =>
      _$this._instanceIds ??= new _i3.ListBuilder<String>();
  set instanceIds(_i3.ListBuilder<String>? instanceIds) =>
      _$this._instanceIds = instanceIds;

  String? _additionalInfo;
  String? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(String? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  StartInstancesRequestBuilder() {
    StartInstancesRequest._init(this);
  }

  StartInstancesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceIds = $v.instanceIds?.toBuilder();
      _additionalInfo = $v.additionalInfo;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartInstancesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartInstancesRequest;
  }

  @override
  void update(void Function(StartInstancesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartInstancesRequest build() => _build();

  _$StartInstancesRequest _build() {
    _$StartInstancesRequest _$result;
    try {
      _$result = _$v ??
          new _$StartInstancesRequest._(
              instanceIds: _instanceIds?.build(),
              additionalInfo: additionalInfo,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'StartInstancesRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceIds';
        _instanceIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StartInstancesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
