import 'package:http/http.dart' as http;
import 'package:simple_login/api/response_model.dart';
import 'dart:convert';
import './api_constants.dart';

class PokeService {
  Future<ResponseModel> getPokemonList() async {
    final response = await http
        .get(Uri.parse(ApiConstants.baseUrl + ApiConstants.pokemonEndpoint));
    if (response.statusCode == 200) {
      print('exito');
      return ResponseModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load pokemon');
    }
  }
}
