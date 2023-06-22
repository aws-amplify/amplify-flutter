// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_change_set_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeChangeSetOutput extends DescribeChangeSetOutput {
  @override
  final String? changeSetName;
  @override
  final String? changeSetId;
  @override
  final String? stackId;
  @override
  final String? stackName;
  @override
  final String? description;
  @override
  final _i10.BuiltList<_i2.Parameter>? parameters;
  @override
  final DateTime? creationTime;
  @override
  final _i3.ExecutionStatus? executionStatus;
  @override
  final _i4.ChangeSetStatus? status;
  @override
  final String? statusReason;
  @override
  final _i10.BuiltList<String>? notificationArNs;
  @override
  final _i5.RollbackConfiguration? rollbackConfiguration;
  @override
  final _i10.BuiltList<_i6.Capability>? capabilities;
  @override
  final _i10.BuiltList<_i7.Tag>? tags;
  @override
  final _i10.BuiltList<_i8.Change>? changes;
  @override
  final String? nextToken;
  @override
  final bool? includeNestedStacks;
  @override
  final String? parentChangeSetId;
  @override
  final String? rootChangeSetId;
  @override
  final _i9.OnStackFailure? onStackFailure;

  factory _$DescribeChangeSetOutput(
          [void Function(DescribeChangeSetOutputBuilder)? updates]) =>
      (new DescribeChangeSetOutputBuilder()..update(updates))._build();

  _$DescribeChangeSetOutput._(
      {this.changeSetName,
      this.changeSetId,
      this.stackId,
      this.stackName,
      this.description,
      this.parameters,
      this.creationTime,
      this.executionStatus,
      this.status,
      this.statusReason,
      this.notificationArNs,
      this.rollbackConfiguration,
      this.capabilities,
      this.tags,
      this.changes,
      this.nextToken,
      this.includeNestedStacks,
      this.parentChangeSetId,
      this.rootChangeSetId,
      this.onStackFailure})
      : super._();

  @override
  DescribeChangeSetOutput rebuild(
          void Function(DescribeChangeSetOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeChangeSetOutputBuilder toBuilder() =>
      new DescribeChangeSetOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeChangeSetOutput &&
        changeSetName == other.changeSetName &&
        changeSetId == other.changeSetId &&
        stackId == other.stackId &&
        stackName == other.stackName &&
        description == other.description &&
        parameters == other.parameters &&
        creationTime == other.creationTime &&
        executionStatus == other.executionStatus &&
        status == other.status &&
        statusReason == other.statusReason &&
        notificationArNs == other.notificationArNs &&
        rollbackConfiguration == other.rollbackConfiguration &&
        capabilities == other.capabilities &&
        tags == other.tags &&
        changes == other.changes &&
        nextToken == other.nextToken &&
        includeNestedStacks == other.includeNestedStacks &&
        parentChangeSetId == other.parentChangeSetId &&
        rootChangeSetId == other.rootChangeSetId &&
        onStackFailure == other.onStackFailure;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, changeSetName.hashCode);
    _$hash = $jc(_$hash, changeSetId.hashCode);
    _$hash = $jc(_$hash, stackId.hashCode);
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, executionStatus.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusReason.hashCode);
    _$hash = $jc(_$hash, notificationArNs.hashCode);
    _$hash = $jc(_$hash, rollbackConfiguration.hashCode);
    _$hash = $jc(_$hash, capabilities.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, changes.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, includeNestedStacks.hashCode);
    _$hash = $jc(_$hash, parentChangeSetId.hashCode);
    _$hash = $jc(_$hash, rootChangeSetId.hashCode);
    _$hash = $jc(_$hash, onStackFailure.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeChangeSetOutputBuilder
    implements
        Builder<DescribeChangeSetOutput, DescribeChangeSetOutputBuilder> {
  _$DescribeChangeSetOutput? _$v;

  String? _changeSetName;
  String? get changeSetName => _$this._changeSetName;
  set changeSetName(String? changeSetName) =>
      _$this._changeSetName = changeSetName;

  String? _changeSetId;
  String? get changeSetId => _$this._changeSetId;
  set changeSetId(String? changeSetId) => _$this._changeSetId = changeSetId;

  String? _stackId;
  String? get stackId => _$this._stackId;
  set stackId(String? stackId) => _$this._stackId = stackId;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i10.ListBuilder<_i2.Parameter>? _parameters;
  _i10.ListBuilder<_i2.Parameter> get parameters =>
      _$this._parameters ??= new _i10.ListBuilder<_i2.Parameter>();
  set parameters(_i10.ListBuilder<_i2.Parameter>? parameters) =>
      _$this._parameters = parameters;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  _i3.ExecutionStatus? _executionStatus;
  _i3.ExecutionStatus? get executionStatus => _$this._executionStatus;
  set executionStatus(_i3.ExecutionStatus? executionStatus) =>
      _$this._executionStatus = executionStatus;

  _i4.ChangeSetStatus? _status;
  _i4.ChangeSetStatus? get status => _$this._status;
  set status(_i4.ChangeSetStatus? status) => _$this._status = status;

  String? _statusReason;
  String? get statusReason => _$this._statusReason;
  set statusReason(String? statusReason) => _$this._statusReason = statusReason;

  _i10.ListBuilder<String>? _notificationArNs;
  _i10.ListBuilder<String> get notificationArNs =>
      _$this._notificationArNs ??= new _i10.ListBuilder<String>();
  set notificationArNs(_i10.ListBuilder<String>? notificationArNs) =>
      _$this._notificationArNs = notificationArNs;

  _i5.RollbackConfigurationBuilder? _rollbackConfiguration;
  _i5.RollbackConfigurationBuilder get rollbackConfiguration =>
      _$this._rollbackConfiguration ??= new _i5.RollbackConfigurationBuilder();
  set rollbackConfiguration(
          _i5.RollbackConfigurationBuilder? rollbackConfiguration) =>
      _$this._rollbackConfiguration = rollbackConfiguration;

  _i10.ListBuilder<_i6.Capability>? _capabilities;
  _i10.ListBuilder<_i6.Capability> get capabilities =>
      _$this._capabilities ??= new _i10.ListBuilder<_i6.Capability>();
  set capabilities(_i10.ListBuilder<_i6.Capability>? capabilities) =>
      _$this._capabilities = capabilities;

  _i10.ListBuilder<_i7.Tag>? _tags;
  _i10.ListBuilder<_i7.Tag> get tags =>
      _$this._tags ??= new _i10.ListBuilder<_i7.Tag>();
  set tags(_i10.ListBuilder<_i7.Tag>? tags) => _$this._tags = tags;

  _i10.ListBuilder<_i8.Change>? _changes;
  _i10.ListBuilder<_i8.Change> get changes =>
      _$this._changes ??= new _i10.ListBuilder<_i8.Change>();
  set changes(_i10.ListBuilder<_i8.Change>? changes) =>
      _$this._changes = changes;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  bool? _includeNestedStacks;
  bool? get includeNestedStacks => _$this._includeNestedStacks;
  set includeNestedStacks(bool? includeNestedStacks) =>
      _$this._includeNestedStacks = includeNestedStacks;

  String? _parentChangeSetId;
  String? get parentChangeSetId => _$this._parentChangeSetId;
  set parentChangeSetId(String? parentChangeSetId) =>
      _$this._parentChangeSetId = parentChangeSetId;

  String? _rootChangeSetId;
  String? get rootChangeSetId => _$this._rootChangeSetId;
  set rootChangeSetId(String? rootChangeSetId) =>
      _$this._rootChangeSetId = rootChangeSetId;

  _i9.OnStackFailure? _onStackFailure;
  _i9.OnStackFailure? get onStackFailure => _$this._onStackFailure;
  set onStackFailure(_i9.OnStackFailure? onStackFailure) =>
      _$this._onStackFailure = onStackFailure;

  DescribeChangeSetOutputBuilder() {
    DescribeChangeSetOutput._init(this);
  }

  DescribeChangeSetOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _changeSetName = $v.changeSetName;
      _changeSetId = $v.changeSetId;
      _stackId = $v.stackId;
      _stackName = $v.stackName;
      _description = $v.description;
      _parameters = $v.parameters?.toBuilder();
      _creationTime = $v.creationTime;
      _executionStatus = $v.executionStatus;
      _status = $v.status;
      _statusReason = $v.statusReason;
      _notificationArNs = $v.notificationArNs?.toBuilder();
      _rollbackConfiguration = $v.rollbackConfiguration?.toBuilder();
      _capabilities = $v.capabilities?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _changes = $v.changes?.toBuilder();
      _nextToken = $v.nextToken;
      _includeNestedStacks = $v.includeNestedStacks;
      _parentChangeSetId = $v.parentChangeSetId;
      _rootChangeSetId = $v.rootChangeSetId;
      _onStackFailure = $v.onStackFailure;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeChangeSetOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeChangeSetOutput;
  }

  @override
  void update(void Function(DescribeChangeSetOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeChangeSetOutput build() => _build();

  _$DescribeChangeSetOutput _build() {
    _$DescribeChangeSetOutput _$result;
    try {
      _$result = _$v ??
          new _$DescribeChangeSetOutput._(
              changeSetName: changeSetName,
              changeSetId: changeSetId,
              stackId: stackId,
              stackName: stackName,
              description: description,
              parameters: _parameters?.build(),
              creationTime: creationTime,
              executionStatus: executionStatus,
              status: status,
              statusReason: statusReason,
              notificationArNs: _notificationArNs?.build(),
              rollbackConfiguration: _rollbackConfiguration?.build(),
              capabilities: _capabilities?.build(),
              tags: _tags?.build(),
              changes: _changes?.build(),
              nextToken: nextToken,
              includeNestedStacks: includeNestedStacks,
              parentChangeSetId: parentChangeSetId,
              rootChangeSetId: rootChangeSetId,
              onStackFailure: onStackFailure);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameters';
        _parameters?.build();

        _$failedField = 'notificationArNs';
        _notificationArNs?.build();
        _$failedField = 'rollbackConfiguration';
        _rollbackConfiguration?.build();
        _$failedField = 'capabilities';
        _capabilities?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'changes';
        _changes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeChangeSetOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
