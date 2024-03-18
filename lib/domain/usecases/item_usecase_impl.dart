import 'package:pokedex/domain/entities/all_itens_entity.dart';
import 'package:pokedex/domain/entities/item_entity.dart';
import 'package:pokedex/domain/usecases/item_usecase.dart';

import '../repositories/pokemon_repository.dart';

class ItemUsecaseImpl extends ItemUsecase {
  final PokemonRepository _repository;

  ItemUsecaseImpl(this._repository);

  @override
  Future<ItemEntity> getItem({required String name}) {
    return _repository.getItem(name: name);
  }

  @override
  Future<AllItensEntity> getAllItens() {
    return _repository.getAllItens();
  }
}
