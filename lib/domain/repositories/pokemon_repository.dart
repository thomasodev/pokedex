import 'package:pokedex/domain/entities/all_itens_entity.dart';
import 'package:pokedex/domain/entities/item_entity.dart';

import '../entities/all_pokemon_entity.dart';
import '../entities/pokemon_entity.dart';

abstract class PokemonRepository {
  Future<PokemonEntity> getPokemon({required String name});
  Future<AllPokemonEntity> getAllPokemons();
  Future<AllItensEntity> getAllItens();
  Future<ItemEntity> getItem({required String name});
}
