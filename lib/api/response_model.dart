import 'dart:convert';

class ResponseModel {
  final int count;
  final String next;
  final String? previous;
  //final List<dynamic> results;
  const ResponseModel({
    required this.count,
    required this.next,
    required this.previous,
    //required this.results
  });
  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
        count: json['count'], next: json['next'], previous: json['previous']);
    //results: json['results']);
  }
}

class PokemonResponse {
  final String name;
  final String url;
  const PokemonResponse({required this.name, required this.url});
  factory PokemonResponse.fromJson(Map<String, dynamic> json) {
    return PokemonResponse(name: json['name'], url: json['url']);
  }
}
