// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokeapi_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokeApiStore on _PokeApiStore, Store {
  final _$pokeApiAtom = Atom(name: '_PokeApiStore.pokeApi');

  @override
  PokeApi get pokeApi {
    _$pokeApiAtom.context.enforceReadPolicy(_$pokeApiAtom);
    _$pokeApiAtom.reportObserved();
    return super.pokeApi;
  }

  @override
  set pokeApi(PokeApi value) {
    _$pokeApiAtom.context.conditionallyRunInAction(() {
      super.pokeApi = value;
      _$pokeApiAtom.reportChanged();
    }, _$pokeApiAtom, name: '${_$pokeApiAtom.name}_set');
  }

  final _$_PokeApiStoreActionController =
      ActionController(name: '_PokeApiStore');

  @override
  dynamic fecthPokemonList() {
    final _$actionInfo = _$_PokeApiStoreActionController.startAction();
    try {
      return super.fecthPokemonList();
    } finally {
      _$_PokeApiStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'pokeApi: ${pokeApi.toString()}';
    return '{$string}';
  }
}
