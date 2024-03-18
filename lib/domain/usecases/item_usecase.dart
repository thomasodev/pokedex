import 'package:pokedex/domain/entities/all_itens_entity.dart';
import 'package:pokedex/domain/entities/item_entity.dart';

abstract class ItemUsecase {
  Future<ItemEntity> getItem({required String name});
  Future<AllItensEntity> getAllItens();
}
