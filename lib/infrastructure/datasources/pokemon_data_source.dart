import 'package:pokedex/infrastructure/models/item_model.dart';
import 'package:pokedex/infrastructure/models/itens_result_model.dart';

import '../models/pokemon_model.dart';
import '../models/pokemon_results_model.dart';

abstract class PokemonDatasource {
  Future<PokemonModel> getPokemon({required String name});
  Future<PokemonResultsModel> getAllPokemons();
  Future<ItensResultModel> getAllItens();
  Future<ItemModel> getItem({required String name});
}
