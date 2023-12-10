import 'package:flutter/material.dart';
import 'package:kado_untukmu/models/thedata.dart';
import 'package:kado_untukmu/wetry/gridku.dart';
import 'package:provider/provider.dart';

class Atur extends StatelessWidget {
  const Atur({super.key});

  @override
  Widget build(BuildContext context) {
    // ketika menekan pilih gambar, ada dua piiihan dari gallery atau default gambar yang disediakan
    void tampilDialog() {
      showDialog(
          context: context,
          builder: (context) {
            return Consumer2<TheData, MyImageDefault>(
                builder: (_, thedata, gambarku, child) => AlertDialog(
                      title: const Text("Pilih Gambar"),
                      actions: [
                        MaterialButton(
                          onPressed: () {
                            thedata.funpilihgambar();
                            gambarku.setPilihdefgambar();
                            Navigator.pop(context);
                          },
                          child: const Text("dari gallery"),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Gridku()));
                          },
                          child: const Text("dari default"),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20.0),
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            color: Colors.red[200],
                            child: const Text(
                              "batal",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ));
          });
    }

    return Consumer2<TheData, MyImageDefault>(
      builder: (_, thedata, gambarku, child) => Scaffold(
        appBar: AppBar(
          title: const Text("S E T T I N G"),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (thedata.pilihgambar == null &&
                  gambarku.pilihdefgambar == null)
                const Text("belum ada gambar yang dipilih"),
              if (thedata.pilihgambar != null ||
                  gambarku.pilihdefgambar != null)
                const Text("gambar sudah terpilih"),
              ElevatedButton(
                  onPressed: () {
                    tampilDialog();
                  },
                  child: const Text("Pilih gambar")),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: thedata.pesan,
                  decoration: const InputDecoration(
                      hintText: "Masukkan Pesan", border: OutlineInputBorder()),
                  maxLines: 3,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    thedata.gantiPesan(thedata.pesan!.text);
                  },
                  child: const Text("ubah"))
            ],
          ),
        ),
      ),
    );
  }
}
