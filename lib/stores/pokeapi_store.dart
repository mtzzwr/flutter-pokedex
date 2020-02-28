import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

  @action
  getPokemon({int index}){
    return pokeApi.pokemon[index];
  }

  @action
  Widget getImage({String numero}){
    return CachedNetworkImage(
      placeholder: (context, url) => new Container(
        color: Colors.transparent,
      ),
      imageUrl: 'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/$numero.png',
    );
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