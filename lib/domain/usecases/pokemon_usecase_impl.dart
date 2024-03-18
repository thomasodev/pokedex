import '../entities/all_pokemon_entity.dart';
import '../entities/pokemon_entity.dart';
import '../repositories/pokemon_repository.dart';
import 'pokemon_usecase.dart';

class PokemonUsecaseImpl extends PokemonUsecase {
  final PokemonRepository _repository;

  PokemonUsecaseImpl(this._repository);

  @override
  Future<PokemonEntity> getPokemon({required String name}) {
    return _repository.getPokemon(name: name);
  }

  @override
  Future<AllPokemonEntity> getAllPokemons() {
    return _repository.getAllPokemons();
  }
}
