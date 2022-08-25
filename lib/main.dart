import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ParcialN1());
}

class ParcialN1 extends StatelessWidget {
  const ParcialN1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Parcial N1 - ETPS3!",
      home: parcialn1(),
      theme: ThemeData(primaryColor: Colors.blueGrey),
    );
  }
}

class parcialn1 extends StatefulWidget {
  parcialn1({Key? key}) : super(key: key);

  @override
  State<parcialn1> createState() => _parcialn1State();
}

class _parcialn1State extends State<parcialn1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: central(),
    );
  }
}

Widget central() {
  return Center(
    child: Center(
      child: ListView(
        children: <Widget>[
          titulo(),
          carnet(),
          imagen(),
          carnettext(),
          nombre(),
          apellido(),
          direccion(),
          pass(),
          passtwo(),
          mail(),
          btnIngresar(),
          btnCancelar()
        ],
      ),
    ),
  );
}

Widget titulo() {
  return Center(
    child: Text("Parcial 1 - ETPS3!",
        style: TextStyle(
            color: Colors.black, fontSize: 50.0, fontWeight: FontWeight.bold)),
  );
}

Widget carnet() {
  return Center(
    child: Text(
      "Brian Dagoberto Ventura Deleon - 2561152016",
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),
    ),
  );
}

Widget imagen() {
  return Center(
    child: Container(
      width: 300,
      height: 400,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://img.freepik.com/vector-premium/codigo-geek-dibujos-animados_10308-205.jpg?w=826"))),
    ),
  );
}

Widget carnettext() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
    child: TextField(
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          hintText: "Carnet",
          filled: true,
          prefixIcon: Icon(Icons.card_membership_outlined)),
    ),
  );
}

Widget nombre() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
    child: TextField(
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          hintText: "Ingrese su Nombre",
          filled: true,
          prefixIcon: Icon(Icons.people_sharp)),
    ),
  );
}

Widget apellido() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
    child: TextField(
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          hintText: "Ingrese su Apellido",
          filled: true,
          prefixIcon: Icon(Icons.emoji_people)),
    ),
  );
}

Widget direccion() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
    child: TextField(
      keyboardType: TextInputType.multiline,
      maxLines: 20,
      decoration: InputDecoration(
          hintText: "Direccion",
          filled: true,
          prefixIcon: Icon(Icons.directions)),
    ),
  );
}

Widget pass() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
    child: TextField(
      keyboardType: TextInputType.none,
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Password", filled: true, prefixIcon: Icon(Icons.security)),
    ),
  );
}

Widget passtwo() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
    child: TextField(
      keyboardType: TextInputType.none,
      obscureText: true,
      decoration: InputDecoration(
          hintText: "rePassword",
          filled: true,
          prefixIcon: Icon(Icons.security)),
    ),
  );
}

Widget mail() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
    child: TextField(
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
          hintText: "Correo", filled: true, prefixIcon: Icon(Icons.mail)),
    ),
  );
}

Widget btnIngresar() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 1),
      child: TextButton(
          style: TextButton.styleFrom(
              primary: Colors.white, backgroundColor: Colors.blueAccent),
          onPressed: () {},
          child: Text('Ingresar')));
}

Widget btnCancelar() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 1),
      child: TextButton(
          style: TextButton.styleFrom(
              primary: Colors.white, backgroundColor: Colors.red),
          onPressed: () {},
          child: Text('Cancelar')));
}
