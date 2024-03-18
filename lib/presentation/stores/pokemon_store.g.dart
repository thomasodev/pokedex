// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PokemonStore on _PokemonStore, Store {
  late final _$isLoadingAtom =
      Atom(name: '_PokemonStore.isLoading', context: context);

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

  late final _$pokemonsAtom =
      Atom(name: '_PokemonStore.pokemons', context: context);

  @override
  AllPokemonEntity get pokemons {
    _$pokemonsAtom.reportRead();
    return super.pokemons;
  }

  @override
  set pokemons(AllPokemonEntity value) {
    _$pokemonsAtom.reportWrite(value, super.pokemons, () {
      super.pokemons = value;
    });
  }

  late final _$quantityAtom =
      Atom(name: '_PokemonStore.quantity', context: context);

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

  late final _$limitAtom = Atom(name: '_PokemonStore.limit', context: context);

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

  late final _$getPokemonAsyncAction =
      AsyncAction('_PokemonStore.getPokemon', context: context);

  @override
  Future<void> getPokemon({required String name}) {
    return _$getPokemonAsyncAction.run(() => super.getPokemon(name: name));
  }

  late final _$getAllAsyncAction =
      AsyncAction('_PokemonStore.getAll', context: context);

  @override
  Future<void> getAll() {
    return _$getAllAsyncAction.run(() => super.getAll());
  }

  late final _$addMoreCardsAsyncAction =
      AsyncAction('_PokemonStore.addMoreCards', context: context);

  @override
  Future<void> addMoreCards() {
    return _$addMoreCardsAsyncAction.run(() => super.addMoreCards());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
pokemons: ${pokemons},
quantity: ${quantity},
limit: ${limit}
    ''';
  }
}
