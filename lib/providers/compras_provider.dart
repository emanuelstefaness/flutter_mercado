import 'package:flutter/material.dart';

class ComprasProvider extends ChangeNotifier {
  List<String> pendentes = [];
  List<String> comprados = [];

  void adicionar(String item) {
    pendentes.add(item);
    notifyListeners();
  }

  void marcarComprado(String item) {
    pendentes.remove(item);
    comprados.add(item);
    notifyListeners();
  }

  void devolver(String item) {
    comprados.remove(item);
    pendentes.add(item);
    notifyListeners();
  }

  void remover(String item) {
    pendentes.remove(item);
    notifyListeners();
  }

  void limparComprados() {
    comprados.clear();
    notifyListeners();
  }
}
