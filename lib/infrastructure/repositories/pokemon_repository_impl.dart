import 'package:pokedex/domain/entities/all_itens_entity.dart';
import 'package:pokedex/domain/entities/item_entity.dart';
import 'package:pokedex/infrastructure/models/item_model.dart';
import 'package:pokedex/infrastructure/models/itens_result_model.dart';

import '../../domain/entities/all_pokemon_entity.dart';
import '../../domain/entities/pokemon_entity.dart';
import '../../domain/repositories/pokemon_repository.dart';
import '../datasources/pokemon_data_source.dart';
import '../models/pokemon_model.dart';
import '../models/pokemon_results_model.dart';

class PokemonRepositoryImpl extends PokemonRepository {
  final PokemonDatasource _datasource;

  PokemonRepositoryImpl(this._datasource);

  @override
  Future<PokemonEntity> getPokemon({required String name}) async {
    try {
      PokemonModel result = await _datasource.getPokemon(name: name);
      return result.toEntity();
    } catch (error, stacktrace) {
      print('$error, $stacktrace');
      throw Exception('$error, $stacktrace');
    }
  }

  @override
  Future<AllPokemonEntity> getAllPokemons() async {
    try {
      PokemonResultsModel result = await _datasource.getAllPokemons();
      return result.toEntity();
    } catch (error, stacktrace) {
      print('$error, $stacktrace');
      throw Exception('$error, $stacktrace');
    }
  }

  @override
  Future<AllItensEntity> getAllItens() async {
    try {
      ItensResultModel result = await _datasource.getAllItens();
      return result.toEntity();
    } catch (error, stacktrace) {
      print('$error, $stacktrace');
      throw Exception('$error, $stacktrace');
    }
  }

  @override
  Future<ItemEntity> getItem({required String name}) async {
    try {
      ItemModel result = await _datasource.getItem(name: name);
      return result.toEntity();
    } catch (error, stacktrace) {
      print('$error, $stacktrace');
      throw Exception('$error, $stacktrace');
    }
  }
}
