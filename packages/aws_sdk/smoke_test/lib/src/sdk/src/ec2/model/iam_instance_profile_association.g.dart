// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iam_instance_profile_association.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IamInstanceProfileAssociation extends IamInstanceProfileAssociation {
  @override
  final String? associationId;
  @override
  final String? instanceId;
  @override
  final IamInstanceProfile? iamInstanceProfile;
  @override
  final IamInstanceProfileAssociationState? state;
  @override
  final DateTime? timestamp;

  factory _$IamInstanceProfileAssociation(
          [void Function(IamInstanceProfileAssociationBuilder)? updates]) =>
      (new IamInstanceProfileAssociationBuilder()..update(updates))._build();

  _$IamInstanceProfileAssociation._(
      {this.associationId,
      this.instanceId,
      this.iamInstanceProfile,
      this.state,
      this.timestamp})
      : super._();

  @override
  IamInstanceProfileAssociation rebuild(
          void Function(IamInstanceProfileAssociationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IamInstanceProfileAssociationBuilder toBuilder() =>
      new IamInstanceProfileAssociationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IamInstanceProfileAssociation &&
        associationId == other.associationId &&
        instanceId == other.instanceId &&
        iamInstanceProfile == other.iamInstanceProfile &&
        state == other.state &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associationId.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, iamInstanceProfile.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IamInstanceProfileAssociationBuilder
    implements
        Builder<IamInstanceProfileAssociation,
            IamInstanceProfileAssociationBuilder> {
  _$IamInstanceProfileAssociation? _$v;

  String? _associationId;
  String? get associationId => _$this._associationId;
  set associationId(String? associationId) =>
      _$this._associationId = associationId;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  IamInstanceProfileBuilder? _iamInstanceProfile;
  IamInstanceProfileBuilder get iamInstanceProfile =>
      _$this._iamInstanceProfile ??= new IamInstanceProfileBuilder();
  set iamInstanceProfile(IamInstanceProfileBuilder? iamInstanceProfile) =>
      _$this._iamInstanceProfile = iamInstanceProfile;

  IamInstanceProfileAssociationState? _state;
  IamInstanceProfileAssociationState? get state => _$this._state;
  set state(IamInstanceProfileAssociationState? state) => _$this._state = state;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  IamInstanceProfileAssociationBuilder();

  IamInstanceProfileAssociationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associationId = $v.associationId;
      _instanceId = $v.instanceId;
      _iamInstanceProfile = $v.iamInstanceProfile?.toBuilder();
      _state = $v.state;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IamInstanceProfileAssociation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IamInstanceProfileAssociation;
  }

  @override
  void update(void Function(IamInstanceProfileAssociationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IamInstanceProfileAssociation build() => _build();

  _$IamInstanceProfileAssociation _build() {
    _$IamInstanceProfileAssociation _$result;
    try {
      _$result = _$v ??
          new _$IamInstanceProfileAssociation._(
              associationId: associationId,
              instanceId: instanceId,
              iamInstanceProfile: _iamInstanceProfile?.build(),
              state: state,
              timestamp: timestamp);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'iamInstanceProfile';
        _iamInstanceProfile?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IamInstanceProfileAssociation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
