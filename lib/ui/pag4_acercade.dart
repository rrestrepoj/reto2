import 'package:flutter/material.dart';

class pag4_cercade extends StatefulWidget {
  const pag4_cercade({super.key});

  @override
  State<pag4_cercade> createState() => _pag4_cercadeState();
}

class _pag4_cercadeState extends State<pag4_cercade> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            title: Text(
                style: TextStyle(fontSize: 30), "La tecnologia a tu alcance"),
          ),
          ListTile(
            leading: Icon(Icons.person_pin),
            title: Text(
                style: TextStyle(fontSize: 20), "John Roberth Mejia Restrepo"),
          ),
          ListTile(
            leading: Icon(Icons.person_pin),
            title: Text(style: TextStyle(fontSize: 20), "Carlos Mina Congo"),
          ),
          ListTile(
            leading: Icon(Icons.person_pin),
            title: Text(style: TextStyle(fontSize: 20), "José Muriel Oviedo"),
          ),
          ListTile(
            leading: Icon(Icons.person_pin),
            title: Text(style: TextStyle(fontSize: 20), "Nicolas Lopez Murad"),
          ),
          ListTile(
            leading: Icon(Icons.phone_android),
            title: Text(style: TextStyle(fontSize: 20), "3175014477"),
            subtitle: Text(style: TextStyle(fontSize: 20), "Celular"),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text(
                style: TextStyle(fontSize: 20), "rrestrepoj@uninorte.edu.co"),
            subtitle: Text(style: TextStyle(fontSize: 20), "Email"),
          )
        ],
      ),
    );
  }
}
