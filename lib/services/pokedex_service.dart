import 'dart:convert';
import 'package:http/http.dart' as http;

class PokedexService {
  String url = 'https://pokeapi.co/api/v2/pokemon?limit=50&offset=0';
  Future<dynamic> getPokemonsList() async {
    final response = await http.get(Uri.parse(url));
    final res = jsonDecode(response.body);
    return res;
  }
}
