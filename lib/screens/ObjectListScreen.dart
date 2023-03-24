import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:simple_login/api/poke_service.dart';
import 'package:simple_login/api/response_model.dart';

class ObjectListScreen extends StatelessWidget {
  const ObjectListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Make call')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go back'))
            ],
          ),
          Expanded(
              child: FutureBuilder<ResponseModel>(
                  future: PokeService().getPokemonList(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return PokemonList(api_data: snapshot.data);
                    } else if (snapshot.hasError) {
                      print("ERROR AL LLAMAR LA API");
                      print(snapshot.error);
                      return Text('${snapshot.hasError}');
                    }
                    return const CircularProgressIndicator();
                  }))
        ],
      )),
    );
  }
}

class PokemonList extends StatelessWidget {
  const PokemonList({super.key, required this.api_data});
  final ResponseModel api_data;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        Container(
          height: 50,
          color: Colors.amber[600],
          child: Center(
            child: Text('Número de pokemons ${api_data.count}'),
          ),
        ),
        Container(
          height: 50,
          color: Colors.amber[600],
          child: Center(
            child: Text('Número de pokemons ${api_data.next}'),
          ),
        ),
        Container(
          height: 50,
          color: Colors.amber[600],
          child: Center(
            child: Text('Número de pokemons ${api_data.previous}'),
          ),
        )
      ],
    );
  }
}
