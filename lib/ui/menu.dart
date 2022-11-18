import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/controlador/controladorGeneral.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  controladorGeneral Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 237, 238, 233)),
              child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://conceptodefinicion.de/wp-content/uploads/2021/01/tecnologia-.jpg"),
                  ),
                  accountName:
                      Text(style: TextStyle(fontSize: 20), "shopping computer"),
                  accountEmail: Text(
                      style: TextStyle(fontSize: 20),
                      "rrestrepoj@uninorte.edu.co")),
            ),
            Divider(),
            Expanded(
                child: ListView(children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text(style: TextStyle(fontSize: 20), "Inicio"),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(0);
                },
              ),
              ListTile(
                leading: Icon(Icons.monetization_on_outlined),
                title: Text(style: TextStyle(fontSize: 20), "Comprar"),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(1);
                },
              ),
              ListTile(
                leading: Icon(Icons.shopify),
                title: Text(style: TextStyle(fontSize: 20), "Mis Productos"),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(2);
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(style: TextStyle(fontSize: 20), "Acerca de..."),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(3);
                },
              ),
            ]))
          ],
        ),
      ),
    );
  }
}
