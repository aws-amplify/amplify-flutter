// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replication_rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicationRule extends ReplicationRule {
  @override
  final String? id;
  @override
  final int? priority;
  @override
  final String? prefix;
  @override
  final ReplicationRuleFilter? filter;
  @override
  final ReplicationRuleStatus status;
  @override
  final SourceSelectionCriteria? sourceSelectionCriteria;
  @override
  final ExistingObjectReplication? existingObjectReplication;
  @override
  final Destination destination;
  @override
  final DeleteMarkerReplication? deleteMarkerReplication;

  factory _$ReplicationRule([void Function(ReplicationRuleBuilder)? updates]) =>
      (new ReplicationRuleBuilder()..update(updates))._build();

  _$ReplicationRule._(
      {this.id,
      this.priority,
      this.prefix,
      this.filter,
      required this.status,
      this.sourceSelectionCriteria,
      this.existingObjectReplication,
      required this.destination,
      this.deleteMarkerReplication})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(status, r'ReplicationRule', 'status');
    BuiltValueNullFieldError.checkNotNull(
        destination, r'ReplicationRule', 'destination');
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
        id == other.id &&
        priority == other.priority &&
        prefix == other.prefix &&
        filter == other.filter &&
        status == other.status &&
        sourceSelectionCriteria == other.sourceSelectionCriteria &&
        existingObjectReplication == other.existingObjectReplication &&
        destination == other.destination &&
        deleteMarkerReplication == other.deleteMarkerReplication;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, sourceSelectionCriteria.hashCode);
    _$hash = $jc(_$hash, existingObjectReplication.hashCode);
    _$hash = $jc(_$hash, destination.hashCode);
    _$hash = $jc(_$hash, deleteMarkerReplication.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplicationRuleBuilder
    implements Builder<ReplicationRule, ReplicationRuleBuilder> {
  _$ReplicationRule? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _priority;
  int? get priority => _$this._priority;
  set priority(int? priority) => _$this._priority = priority;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  ReplicationRuleFilter? _filter;
  ReplicationRuleFilter? get filter => _$this._filter;
  set filter(ReplicationRuleFilter? filter) => _$this._filter = filter;

  ReplicationRuleStatus? _status;
  ReplicationRuleStatus? get status => _$this._status;
  set status(ReplicationRuleStatus? status) => _$this._status = status;

  SourceSelectionCriteriaBuilder? _sourceSelectionCriteria;
  SourceSelectionCriteriaBuilder get sourceSelectionCriteria =>
      _$this._sourceSelectionCriteria ??= new SourceSelectionCriteriaBuilder();
  set sourceSelectionCriteria(
          SourceSelectionCriteriaBuilder? sourceSelectionCriteria) =>
      _$this._sourceSelectionCriteria = sourceSelectionCriteria;

  ExistingObjectReplicationBuilder? _existingObjectReplication;
  ExistingObjectReplicationBuilder get existingObjectReplication =>
      _$this._existingObjectReplication ??=
          new ExistingObjectReplicationBuilder();
  set existingObjectReplication(
          ExistingObjectReplicationBuilder? existingObjectReplication) =>
      _$this._existingObjectReplication = existingObjectReplication;

  DestinationBuilder? _destination;
  DestinationBuilder get destination =>
      _$this._destination ??= new DestinationBuilder();
  set destination(DestinationBuilder? destination) =>
      _$this._destination = destination;

  DeleteMarkerReplicationBuilder? _deleteMarkerReplication;
  DeleteMarkerReplicationBuilder get deleteMarkerReplication =>
      _$this._deleteMarkerReplication ??= new DeleteMarkerReplicationBuilder();
  set deleteMarkerReplication(
          DeleteMarkerReplicationBuilder? deleteMarkerReplication) =>
      _$this._deleteMarkerReplication = deleteMarkerReplication;

  ReplicationRuleBuilder();

  ReplicationRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _priority = $v.priority;
      _prefix = $v.prefix;
      _filter = $v.filter;
      _status = $v.status;
      _sourceSelectionCriteria = $v.sourceSelectionCriteria?.toBuilder();
      _existingObjectReplication = $v.existingObjectReplication?.toBuilder();
      _destination = $v.destination.toBuilder();
      _deleteMarkerReplication = $v.deleteMarkerReplication?.toBuilder();
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
              id: id,
              priority: priority,
              prefix: prefix,
              filter: filter,
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'ReplicationRule', 'status'),
              sourceSelectionCriteria: _sourceSelectionCriteria?.build(),
              existingObjectReplication: _existingObjectReplication?.build(),
              destination: destination.build(),
              deleteMarkerReplication: _deleteMarkerReplication?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sourceSelectionCriteria';
        _sourceSelectionCriteria?.build();
        _$failedField = 'existingObjectReplication';
        _existingObjectReplication?.build();
        _$failedField = 'destination';
        destination.build();
        _$failedField = 'deleteMarkerReplication';
        _deleteMarkerReplication?.build();
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
