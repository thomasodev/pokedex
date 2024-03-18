// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ItemStore on _ItemStore, Store {
  late final _$isLoadingAtom =
      Atom(name: '_ItemStore.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$itensAtom = Atom(name: '_ItemStore.itens', context: context);

  @override
  AllItensEntity get itens {
    _$itensAtom.reportRead();
    return super.itens;
  }

  @override
  set itens(AllItensEntity value) {
    _$itensAtom.reportWrite(value, super.itens, () {
      super.itens = value;
    });
  }

  late final _$quantityAtom =
      Atom(name: '_ItemStore.quantity', context: context);

  @override
  int get quantity {
    _$quantityAtom.reportRead();
    return super.quantity;
  }

  @override
  set quantity(int value) {
    _$quantityAtom.reportWrite(value, super.quantity, () {
      super.quantity = value;
    });
  }

  late final _$limitAtom = Atom(name: '_ItemStore.limit', context: context);

  @override
  int get limit {
    _$limitAtom.reportRead();
    return super.limit;
  }

  @override
  set limit(int value) {
    _$limitAtom.reportWrite(value, super.limit, () {
      super.limit = value;
    });
  }

  late final _$getItemAsyncAction =
      AsyncAction('_ItemStore.getItem', context: context);

  @override
  Future<void> getItem({required String name}) {
    return _$getItemAsyncAction.run(() => super.getItem(name: name));
  }

  late final _$getAllAsyncAction =
      AsyncAction('_ItemStore.getAll', context: context);

  @override
  Future<void> getAll() {
    return _$getAllAsyncAction.run(() => super.getAll());
  }

  late final _$addMoreCardsAsyncAction =
      AsyncAction('_ItemStore.addMoreCards', context: context);

  @override
  Future<void> addMoreCards() {
    return _$addMoreCardsAsyncAction.run(() => super.addMoreCards());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
itens: ${itens},
quantity: ${quantity},
limit: ${limit}
    ''';
  }
}
