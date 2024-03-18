import 'package:dio/dio.dart';
import 'package:pokedex/infrastructure/models/item_model.dart';
import 'package:pokedex/infrastructure/models/itens_result_model.dart';

import '../../infrastructure/datasources/pokemon_data_source.dart';
import '../../infrastructure/models/pokemon_model.dart';
import '../../infrastructure/models/pokemon_results_model.dart';

class PokemonDatasourceImpl extends PokemonDatasource {
  final dio = Dio();
  static const String url = 'https://pokeapi.co/api/v2/';

  @override
  Future<PokemonModel> getPokemon({required String name}) async {
    final response = await dio.get("${url}pokemon/$name");
    return PokemonModel.fromJson(response.data);
  }

  @override
  Future<PokemonResultsModel> getAllPokemons() async {
    final response = await dio.get('${url}pokemon?limit=100000&offset=0');
    return PokemonResultsModel.fromJson(response.data);
  }

  @override
  Future<ItensResultModel> getAllItens() async {
    final response = await dio.get('${url}item?limit=100000&offset=0');
    return ItensResultModel.fromJson(response.data);
  }

  @override
  Future<ItemModel> getItem({required String name}) async {
    final response = await dio.get('${url}item/$name');
    return ItemModel.fromJson(response.data);
  }
}
