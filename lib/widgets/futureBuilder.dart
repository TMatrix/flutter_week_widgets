import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FutureBuilderWeek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: http.get('https://jsonplaceholder.typicode.com/todos/1'),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              final Map parsed = json.decode(snapshot.data.body);
              return Container(
                child: Text(parsed.toString()),
              ); 
            } else {
              return Text('Loading...');
            }
          }
        )
      ),
    );
  }
}