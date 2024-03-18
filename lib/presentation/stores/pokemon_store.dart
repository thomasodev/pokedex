import 'package:mobx/mobx.dart';

import '../../domain/entities/all_pokemon_entity.dart';
import '../../domain/entities/pokemon_entity.dart';
import '../../domain/usecases/pokemon_usecase.dart';
import '../../domain/usecases/pokemon_usecase_impl.dart';
import '../../external/datasources/pokemon_datasource_impl.dart';
import '../../infrastructure/repositories/pokemon_repository_impl.dart';

part 'pokemon_store.g.dart';

class PokemonStore extends _PokemonStore with _$PokemonStore {}

abstract class _PokemonStore with Store {
  final PokemonUsecase _usecase = PokemonUsecaseImpl(
    PokemonRepositoryImpl(
      PokemonDatasourceImpl(),
    ),
  );

  @observable
  bool isLoading = false;

  @observable
  AllPokemonEntity pokemons = AllPokemonEntity();

  ObservableList<PokemonEntity> pokelist = ObservableList<PokemonEntity>();

  @observable
  int quantity = 0;

  @observable
  int limit = 5;

  @action
  Future<void> getPokemon({required String name}) async {
    final pokemon = await _usecase.getPokemon(name: name);
    pokelist.add(pokemon);
  }

  @action
  Future<void> getAll() async {
    isLoading = true;
    pokemons = await _usecase.getAllPokemons();
    for (quantity; quantity < limit; quantity++) {
      await getPokemon(name: pokemons.name[quantity]);
    }
    isLoading = false;
  }

  @action
  Future<void> addMoreCards() async {
    if (isLoading) {
      return;
    }

    isLoading = true;
    if (pokemons.name.length < limit) {
      limit = pokemons.name.length;
    } else {
      limit += 5;
    }
    for (quantity; quantity < limit; quantity++) {
      await getPokemon(name: pokemons.name[quantity]);
    }
    isLoading = false;
  }

  void dipose() {}
}
