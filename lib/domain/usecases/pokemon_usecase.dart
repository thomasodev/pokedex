import '../entities/all_pokemon_entity.dart';
import '../entities/pokemon_entity.dart';

abstract class PokemonUsecase {
  Future<PokemonEntity> getPokemon({required String name});
  Future<AllPokemonEntity> getAllPokemons();
}
