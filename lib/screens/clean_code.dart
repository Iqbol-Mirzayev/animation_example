import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key, required this.title}) : super(key: key);
  String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pushNamed(context, "/second_page", arguments: "Alllloooo");
      }),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _header(title: title),
            _body(title: title),
            _footer(title: title)
          ],
        ),
      ),
    );
  }
}

class _footer extends StatelessWidget {
  const _footer({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("First page : $title"),
        Container(
          color: Colors.greenAccent,
          height: 40,
          width: 40,
        ),
      ],
    );
  }
}

class _body extends StatelessWidget {
  const _body({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("First page : $title"),
        Container(
          color: Colors.greenAccent,
          height: 40,
          width: 40,
        ),
        Text("First page : $title"),
        Container(
          color: Colors.greenAccent,
          height: 40,
          width: 40,
        ),
        Text("First page : $title"),
        Container(
          color: Colors.greenAccent,
          height: 40,
          width: 40,
        ),
      ],
    );
  }
}

class _header extends StatelessWidget {
  const _header({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("First page : $title"),
        Container(
          color: Colors.greenAccent,
          height: 40,
          width: 40,
        ),
        Text("First page : $title"),
        Container(
          color: Colors.greenAccent,
          height: 40,
          width: 40,
        ),
      ],
    );
  }
}
