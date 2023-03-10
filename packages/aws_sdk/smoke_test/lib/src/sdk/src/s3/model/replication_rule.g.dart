// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.replication_rule;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicationRule extends ReplicationRule {
  @override
  final _i2.DeleteMarkerReplication? deleteMarkerReplication;
  @override
  final _i3.Destination destination;
  @override
  final _i4.ExistingObjectReplication? existingObjectReplication;
  @override
  final _i5.ReplicationRuleFilter? filter;
  @override
  final String? id;
  @override
  final String? prefix;
  @override
  final int? priority;
  @override
  final _i6.SourceSelectionCriteria? sourceSelectionCriteria;
  @override
  final _i7.ReplicationRuleStatus status;

  factory _$ReplicationRule([void Function(ReplicationRuleBuilder)? updates]) =>
      (new ReplicationRuleBuilder()..update(updates))._build();

  _$ReplicationRule._(
      {this.deleteMarkerReplication,
      required this.destination,
      this.existingObjectReplication,
      this.filter,
      this.id,
      this.prefix,
      this.priority,
      this.sourceSelectionCriteria,
      required this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        destination, r'ReplicationRule', 'destination');
    BuiltValueNullFieldError.checkNotNull(status, r'ReplicationRule', 'status');
  }

  @override
  ReplicationRule rebuild(void Function(ReplicationRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplicationRuleBuilder toBuilder() =>
      new ReplicationRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplicationRule &&
        deleteMarkerReplication == other.deleteMarkerReplication &&
        destination == other.destination &&
        existingObjectReplication == other.existingObjectReplication &&
        filter == other.filter &&
        id == other.id &&
        prefix == other.prefix &&
        priority == other.priority &&
        sourceSelectionCriteria == other.sourceSelectionCriteria &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deleteMarkerReplication.hashCode);
    _$hash = $jc(_$hash, destination.hashCode);
    _$hash = $jc(_$hash, existingObjectReplication.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, sourceSelectionCriteria.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplicationRuleBuilder
    implements Builder<ReplicationRule, ReplicationRuleBuilder> {
  _$ReplicationRule? _$v;

  _i2.DeleteMarkerReplicationBuilder? _deleteMarkerReplication;
  _i2.DeleteMarkerReplicationBuilder get deleteMarkerReplication =>
      _$this._deleteMarkerReplication ??=
          new _i2.DeleteMarkerReplicationBuilder();
  set deleteMarkerReplication(
          _i2.DeleteMarkerReplicationBuilder? deleteMarkerReplication) =>
      _$this._deleteMarkerReplication = deleteMarkerReplication;

  _i3.DestinationBuilder? _destination;
  _i3.DestinationBuilder get destination =>
      _$this._destination ??= new _i3.DestinationBuilder();
  set destination(_i3.DestinationBuilder? destination) =>
      _$this._destination = destination;

  _i4.ExistingObjectReplicationBuilder? _existingObjectReplication;
  _i4.ExistingObjectReplicationBuilder get existingObjectReplication =>
      _$this._existingObjectReplication ??=
          new _i4.ExistingObjectReplicationBuilder();
  set existingObjectReplication(
          _i4.ExistingObjectReplicationBuilder? existingObjectReplication) =>
      _$this._existingObjectReplication = existingObjectReplication;

  _i5.ReplicationRuleFilter? _filter;
  _i5.ReplicationRuleFilter? get filter => _$this._filter;
  set filter(_i5.ReplicationRuleFilter? filter) => _$this._filter = filter;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  int? _priority;
  int? get priority => _$this._priority;
  set priority(int? priority) => _$this._priority = priority;

  _i6.SourceSelectionCriteriaBuilder? _sourceSelectionCriteria;
  _i6.SourceSelectionCriteriaBuilder get sourceSelectionCriteria =>
      _$this._sourceSelectionCriteria ??=
          new _i6.SourceSelectionCriteriaBuilder();
  set sourceSelectionCriteria(
          _i6.SourceSelectionCriteriaBuilder? sourceSelectionCriteria) =>
      _$this._sourceSelectionCriteria = sourceSelectionCriteria;

  _i7.ReplicationRuleStatus? _status;
  _i7.ReplicationRuleStatus? get status => _$this._status;
  set status(_i7.ReplicationRuleStatus? status) => _$this._status = status;

  ReplicationRuleBuilder() {
    ReplicationRule._init(this);
  }

  ReplicationRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deleteMarkerReplication = $v.deleteMarkerReplication?.toBuilder();
      _destination = $v.destination.toBuilder();
      _existingObjectReplication = $v.existingObjectReplication?.toBuilder();
      _filter = $v.filter;
      _id = $v.id;
      _prefix = $v.prefix;
      _priority = $v.priority;
      _sourceSelectionCriteria = $v.sourceSelectionCriteria?.toBuilder();
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplicationRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplicationRule;
  }

  @override
  void update(void Function(ReplicationRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplicationRule build() => _build();

  _$ReplicationRule _build() {
    _$ReplicationRule _$result;
    try {
      _$result = _$v ??
          new _$ReplicationRule._(
              deleteMarkerReplication: _deleteMarkerReplication?.build(),
              destination: destination.build(),
              existingObjectReplication: _existingObjectReplication?.build(),
              filter: filter,
              id: id,
              prefix: prefix,
              priority: priority,
              sourceSelectionCriteria: _sourceSelectionCriteria?.build(),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'ReplicationRule', 'status'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteMarkerReplication';
        _deleteMarkerReplication?.build();
        _$failedField = 'destination';
        destination.build();
        _$failedField = 'existingObjectReplication';
        _existingObjectReplication?.build();

        _$failedField = 'sourceSelectionCriteria';
        _sourceSelectionCriteria?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReplicationRule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
