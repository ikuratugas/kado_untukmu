import 'package:flutter/material.dart';
import 'package:kado_untukmu/pages/atur.dart';
import 'package:kado_untukmu/pages/tampil.dart';
import 'package:lottie/lottie.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 100,
              child: Lottie.asset('assets/lottie-giftbox.json'),
            ),
            const Text("Ini kado untukkmu", style: TextStyle(fontSize: 22)),
            const SizedBox(height: 5),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Tampil()),
                  );
                },
                child: const Text("Buka", style: TextStyle(fontSize: 18))),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const Atur()));
        },
        backgroundColor: Colors.white,
      ),
    );
  }
}
