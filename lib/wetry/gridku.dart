import 'package:flutter/material.dart';
import 'package:kado_untukmu/models/thedata.dart';
import 'package:provider/provider.dart';

class Gridku extends StatelessWidget {
  const Gridku({super.key});

  // Menampilkan list of gif bentuk grid
  @override
  Widget build(BuildContext context) {
    return Consumer2<TheData, MyImageDefault>(
        builder: (_, thedata, gambarku, child) => Scaffold(
              appBar: AppBar(
                title: const Text("selamat datang"),
              ),
              body: GridView.builder(
                  itemCount: 13,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: GestureDetector(
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                'assets/${gambarku.defgambar[index]}',
                              )),
                        ),
                        onTap: () {
                          gambarku.funpilihdefgambar(gambarku.defgambar[index]);
                          Navigator.pop(context);
                          thedata.setPilihgambar();
                        },
                      ),
                    );
                  }),
            ));
  }
}
