// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_instance_event_window_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateInstanceEventWindowRequest
    extends CreateInstanceEventWindowRequest {
  @override
  final bool dryRun;
  @override
  final String? name;
  @override
  final _i3.BuiltList<InstanceEventWindowTimeRangeRequest>? timeRanges;
  @override
  final String? cronExpression;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;

  factory _$CreateInstanceEventWindowRequest(
          [void Function(CreateInstanceEventWindowRequestBuilder)? updates]) =>
      (new CreateInstanceEventWindowRequestBuilder()..update(updates))._build();

  _$CreateInstanceEventWindowRequest._(
      {required this.dryRun,
      this.name,
      this.timeRanges,
      this.cronExpression,
      this.tagSpecifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateInstanceEventWindowRequest', 'dryRun');
  }

  @override
  CreateInstanceEventWindowRequest rebuild(
          void Function(CreateInstanceEventWindowRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateInstanceEventWindowRequestBuilder toBuilder() =>
      new CreateInstanceEventWindowRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateInstanceEventWindowRequest &&
        dryRun == other.dryRun &&
        name == other.name &&
        timeRanges == other.timeRanges &&
        cronExpression == other.cronExpression &&
        tagSpecifications == other.tagSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, timeRanges.hashCode);
    _$hash = $jc(_$hash, cronExpression.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateInstanceEventWindowRequestBuilder
    implements
        Builder<CreateInstanceEventWindowRequest,
            CreateInstanceEventWindowRequestBuilder> {
  _$CreateInstanceEventWindowRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i3.ListBuilder<InstanceEventWindowTimeRangeRequest>? _timeRanges;
  _i3.ListBuilder<InstanceEventWindowTimeRangeRequest> get timeRanges =>
      _$this._timeRanges ??=
          new _i3.ListBuilder<InstanceEventWindowTimeRangeRequest>();
  set timeRanges(
          _i3.ListBuilder<InstanceEventWindowTimeRangeRequest>? timeRanges) =>
      _$this._timeRanges = timeRanges;

  String? _cronExpression;
  String? get cronExpression => _$this._cronExpression;
  set cronExpression(String? cronExpression) =>
      _$this._cronExpression = cronExpression;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  CreateInstanceEventWindowRequestBuilder() {
    CreateInstanceEventWindowRequest._init(this);
  }

  CreateInstanceEventWindowRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _name = $v.name;
      _timeRanges = $v.timeRanges?.toBuilder();
      _cronExpression = $v.cronExpression;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateInstanceEventWindowRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateInstanceEventWindowRequest;
  }

  @override
  void update(void Function(CreateInstanceEventWindowRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateInstanceEventWindowRequest build() => _build();

  _$CreateInstanceEventWindowRequest _build() {
    _$CreateInstanceEventWindowRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateInstanceEventWindowRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateInstanceEventWindowRequest', 'dryRun'),
              name: name,
              timeRanges: _timeRanges?.build(),
              cronExpression: cronExpression,
              tagSpecifications: _tagSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeRanges';
        _timeRanges?.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateInstanceEventWindowRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
