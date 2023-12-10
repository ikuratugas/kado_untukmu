import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TheData extends ChangeNotifier {
  XFile? _pilihgambar;
  XFile? get pilihgambar => _pilihgambar;

  final TextEditingController _pesan = TextEditingController();
  TextEditingController? get pesan => _pesan;

  void gantiPesan(String gantidenganini) {
    _pesan.text = gantidenganini;
    notifyListeners();
  }

  void setPilihgambar() {
    _pilihgambar = null;
    notifyListeners();
  }

  Future<void> funpilihgambar() async {
    _pilihgambar = await ImagePicker().pickImage(source: ImageSource.gallery);
    notifyListeners();
  }
}

class MyImageDefault extends ChangeNotifier {
  String? _pilihdefgambar;
  String? get pilihdefgambar => _pilihdefgambar;

  final List<String> _defgambar = [
    "def-adakahkopi.gif",
    "def-adakahsatubatangrokok.gif",
    "def-berhasilwisudah.gif",
    "def-butuhsenyuman.gif",
    "def-congrats.gif",
    "def-dontbesad.gif",
    "def-jadipacar.gif",
    "def-janganmenyerah.gif",
    "def-maremakan.gif",
    "def-mintasenyumnyadong.gif",
    "def-salamkenal.gif",
    "def-semangatcodingya.gif",
    "def-ulangtahun.gif"
  ];
  List<String> get defgambar => _defgambar;

  void funpilihdefgambar(String gantidenganini) {
    _pilihdefgambar = gantidenganini;
    notifyListeners();
  }

  void setPilihdefgambar() {
    _pilihdefgambar = null;
    notifyListeners();
  }
}
