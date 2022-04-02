import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          body: Center(
        child: Container(
          width: double.infinity,
          height: 300,
          child: PageView(
            controller: PageController(viewportFraction: 0.5),
            physics: BouncingScrollPhysics(),
            children: const <Widget>[
              pagina(Colors.blue),
              pagina(Colors.red),
              pagina(Colors.green)
            ],
          ),
        ),
      )),
    );
  }
}

class pagina extends StatelessWidget {
  final Color color;

  const pagina(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          color: this.color, borderRadius: BorderRadius.circular(30)),
    );
  }
}
