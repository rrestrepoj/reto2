import 'package:get/get.dart';
import 'package:reto2/clases/productos.dart';

class controladorGeneral extends GetxController {
  final _posicionPagina = 0.obs;
  final pro = <productos>[].obs;
  @override
  void onInit() {
    pro.add(productos(
        1,
        "Portátil HP Intel 10110U",
        "https://fichashppervasive.blob.core.windows.net/imagenes/Maldives_15_ChalkboardGray_8.png",
        0,
        1400000));
    pro.add(productos(
        2,
        "Portátil ASUS X515EA ",
        "https://media.aws.alkomprar.com/ymarketingcolcomercio/Alkosto/informatica/contenido/ASUS/4711081315643/assets/images/asus_x415_my%20asus-min.jpg",
        0,
        1720000));
    pro.add(productos(
        3,
        "Portátil Dell Vostro 3405 ",
        "https://http2.mlstatic.com/D_NQ_NP_988524-MCO47295451508_082021-V.jpg",
        0,
        2080000));
    pro.add(productos(
        4,
        "Portátil LENOVO IdeaPad 5 ",
        "https://www.professionalwireless.com.co/wp-content/uploads/2022/04/ideapad-5-14are05_gris_A.jpg",
        0,
        1870000));
    pro.add(productos(
        5,
        "MacBook Air MGN63LA/A ",
        "https://tiendasishop.com/media/wysiwyg/MBA_m1_lng_13_5.jpg",
        0,
        4980000));

    // TODO: implement onInit
    super.onInit();
  }

  void cambiarposicion(int x) {
    _posicionPagina.value = x;
  }

  int get posicionPagina => _posicionPagina.value;

  void cambiarCantidad(int posicion, int valor) {
    print(
        "posicion = " + posicion.toString() + " | valor = " + valor.toString());
    pro[posicion].cantidad = valor;
  }

  int calcularTotal() {
    int total = 0;
    for (int i = 0; i < pro.length; i++) {
      total = total + pro[i].cantidad * pro[i].precio;
    }

    return total;
  }

  void limpiartodo() {
    for (int i = 0; i < pro.length; i++) {
      pro[i].cantidad = 0;
    }
    calcularTotal();
  }
}
