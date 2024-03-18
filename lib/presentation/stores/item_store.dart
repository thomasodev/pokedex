import 'package:mobx/mobx.dart';
import 'package:pokedex/domain/entities/all_itens_entity.dart';
import 'package:pokedex/domain/entities/item_entity.dart';
import 'package:pokedex/domain/usecases/item_usecase.dart';
import 'package:pokedex/domain/usecases/item_usecase_impl.dart';

import '../../external/datasources/pokemon_datasource_impl.dart';
import '../../infrastructure/repositories/pokemon_repository_impl.dart';

part 'item_store.g.dart';

class ItemStore extends _ItemStore with _$ItemStore {}

abstract class _ItemStore with Store {
  final ItemUsecase _usecase = ItemUsecaseImpl(
    PokemonRepositoryImpl(
      PokemonDatasourceImpl(),
    ),
  );

  @observable
  bool isLoading = false;

  @observable
  AllItensEntity itens = AllItensEntity();

  ObservableList<ItemEntity> itemlist = ObservableList<ItemEntity>();

  @observable
  int quantity = 0;

  @observable
  int limit = 5;

  @action
  Future<void> getItem({required String name}) async {
    final item = await _usecase.getItem(name: name);
    itemlist.add(item);
  }

  @action
  Future<void> getAll() async {
    isLoading = true;
    itens = await _usecase.getAllItens();
    for (quantity; quantity < limit; quantity++) {
      await getItem(name: itens.name[quantity]);
    }
    isLoading = false;
  }

  @action
  Future<void> addMoreCards() async {
    if (isLoading) {
      return;
    }

    isLoading = true;
    if (itens.name.length < limit) {
      limit = itens.name.length;
    } else {
      limit += 5;
    }
    for (quantity; quantity < limit; quantity++) {
      await getItem(name: itens.name[quantity]);
    }
    isLoading = false;
  }

  void dipose() {}
}
