import 'dart:convert';

import 'package:mobx/mobx.dart';
import '../model/pokeapi.dart';
import 'package:http/http.dart' as http;
import '../consts/consts_api.dart';
part 'pokeapi_store.g.dart';


class PokeApiStore = _PokeApiStore with _$PokeApiStore;

abstract class _PokeApiStore with Store {

  @observable
  PokeApi pokeApi;

  @action
  fecthPokemonList(){
    pokeApi = null;
    loadPokeApi().then((pokeList) {
      pokeApi = pokeList;
    });
  }

  Future<PokeApi> loadPokeApi() async {
    try {
      final response = await http.get(ConstsApi.pokeApiUrl);
      var decodeJson = jsonDecode(response.body);
      return PokeApi.fromJson(decodeJson);
    } catch (error) {
      print('Erro ao carregar os pokemons');
      return null;
    }
  }

}