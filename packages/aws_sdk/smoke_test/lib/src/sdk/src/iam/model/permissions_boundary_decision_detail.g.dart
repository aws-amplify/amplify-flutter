// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permissions_boundary_decision_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PermissionsBoundaryDecisionDetail
    extends PermissionsBoundaryDecisionDetail {
  @override
  final bool allowedByPermissionsBoundary;

  factory _$PermissionsBoundaryDecisionDetail(
          [void Function(PermissionsBoundaryDecisionDetailBuilder)? updates]) =>
      (new PermissionsBoundaryDecisionDetailBuilder()..update(updates))
          ._build();

  _$PermissionsBoundaryDecisionDetail._(
      {required this.allowedByPermissionsBoundary})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(allowedByPermissionsBoundary,
        r'PermissionsBoundaryDecisionDetail', 'allowedByPermissionsBoundary');
  }

  @override
  PermissionsBoundaryDecisionDetail rebuild(
          void Function(PermissionsBoundaryDecisionDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PermissionsBoundaryDecisionDetailBuilder toBuilder() =>
      new PermissionsBoundaryDecisionDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PermissionsBoundaryDecisionDetail &&
        allowedByPermissionsBoundary == other.allowedByPermissionsBoundary;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allowedByPermissionsBoundary.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PermissionsBoundaryDecisionDetailBuilder
    implements
        Builder<PermissionsBoundaryDecisionDetail,
            PermissionsBoundaryDecisionDetailBuilder> {
  _$PermissionsBoundaryDecisionDetail? _$v;

  bool? _allowedByPermissionsBoundary;
  bool? get allowedByPermissionsBoundary =>
      _$this._allowedByPermissionsBoundary;
  set allowedByPermissionsBoundary(bool? allowedByPermissionsBoundary) =>
      _$this._allowedByPermissionsBoundary = allowedByPermissionsBoundary;

  PermissionsBoundaryDecisionDetailBuilder() {
    PermissionsBoundaryDecisionDetail._init(this);
  }

  PermissionsBoundaryDecisionDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allowedByPermissionsBoundary = $v.allowedByPermissionsBoundary;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PermissionsBoundaryDecisionDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PermissionsBoundaryDecisionDetail;
  }

  @override
  void update(
      void Function(PermissionsBoundaryDecisionDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PermissionsBoundaryDecisionDetail build() => _build();

  _$PermissionsBoundaryDecisionDetail _build() {
    final _$result = _$v ??
        new _$PermissionsBoundaryDecisionDetail._(
            allowedByPermissionsBoundary: BuiltValueNullFieldError.checkNotNull(
                allowedByPermissionsBoundary,
                r'PermissionsBoundaryDecisionDetail',
                'allowedByPermissionsBoundary'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
