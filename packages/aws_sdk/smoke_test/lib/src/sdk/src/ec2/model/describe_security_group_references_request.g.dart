// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_security_group_references_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSecurityGroupReferencesRequest
    extends DescribeSecurityGroupReferencesRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? groupId;

  factory _$DescribeSecurityGroupReferencesRequest(
          [void Function(DescribeSecurityGroupReferencesRequestBuilder)?
              updates]) =>
      (new DescribeSecurityGroupReferencesRequestBuilder()..update(updates))
          ._build();

  _$DescribeSecurityGroupReferencesRequest._(
      {required this.dryRun, this.groupId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeSecurityGroupReferencesRequest', 'dryRun');
  }

  @override
  DescribeSecurityGroupReferencesRequest rebuild(
          void Function(DescribeSecurityGroupReferencesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSecurityGroupReferencesRequestBuilder toBuilder() =>
      new DescribeSecurityGroupReferencesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSecurityGroupReferencesRequest &&
        dryRun == other.dryRun &&
        groupId == other.groupId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSecurityGroupReferencesRequestBuilder
    implements
        Builder<DescribeSecurityGroupReferencesRequest,
            DescribeSecurityGroupReferencesRequestBuilder> {
  _$DescribeSecurityGroupReferencesRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _groupId;
  _i3.ListBuilder<String> get groupId =>
      _$this._groupId ??= new _i3.ListBuilder<String>();
  set groupId(_i3.ListBuilder<String>? groupId) => _$this._groupId = groupId;

  DescribeSecurityGroupReferencesRequestBuilder() {
    DescribeSecurityGroupReferencesRequest._init(this);
  }

  DescribeSecurityGroupReferencesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _groupId = $v.groupId?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSecurityGroupReferencesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSecurityGroupReferencesRequest;
  }

  @override
  void update(
      void Function(DescribeSecurityGroupReferencesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSecurityGroupReferencesRequest build() => _build();

  _$DescribeSecurityGroupReferencesRequest _build() {
    _$DescribeSecurityGroupReferencesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeSecurityGroupReferencesRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeSecurityGroupReferencesRequest', 'dryRun'),
              groupId: _groupId?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groupId';
        _groupId?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeSecurityGroupReferencesRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
