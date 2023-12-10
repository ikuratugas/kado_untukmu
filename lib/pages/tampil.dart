import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:kado_untukmu/models/thedata.dart';
import 'package:provider/provider.dart';

class Tampil extends StatelessWidget {
  const Tampil({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<TheData, MyImageDefault>(
        builder: (_, thedata, gambarku, child) => Scaffold(
              appBar: AppBar(
                  // title: const Text("ini itu"),
                  ),
              body: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (thedata.pilihgambar != null)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.file(
                        File(thedata.pilihgambar!.path),
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  if (gambarku.pilihdefgambar != null)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "assets/${gambarku.pilihdefgambar}",
                        width: 250,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 5.0),
                      child: Text(
                        thedata.pesan!.text.toString(),
                        style: const TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )
                          .animate()
                          .slideY(duration: const Duration(milliseconds: 1400))
                          .fadeIn(
                              duration: const Duration(milliseconds: 3700))),
                ],
              )),
            ));
  }
}
