// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TimesheetController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TimesheetController on _TimesheetController, Store {
  final _$timesheetListAtom = Atom(name: '_TimesheetController.timesheetList');

  @override
  List<dynamic> get timesheetList {
    _$timesheetListAtom.context.enforceReadPolicy(_$timesheetListAtom);
    _$timesheetListAtom.reportObserved();
    return super.timesheetList;
  }

  @override
  set timesheetList(List<dynamic> value) {
    _$timesheetListAtom.context.conditionallyRunInAction(() {
      super.timesheetList = value;
      _$timesheetListAtom.reportChanged();
    }, _$timesheetListAtom, name: '${_$timesheetListAtom.name}_set');
  }

  final _$findAllAsyncAction = AsyncAction('findAll');

  @override
  Future findAll() {
    return _$findAllAsyncAction.run(() => super.findAll());
  }

  @override
  String toString() {
    final string = 'timesheetList: ${timesheetList.toString()}';
    return '{$string}';
  }
}
