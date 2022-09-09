import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartvizit/base/renkler.dart';
import 'package:kartvizit/theme/theme.dart';

class KartvizitLer extends StatefulWidget {
  const KartvizitLer({super.key});

  @override
  State<KartvizitLer> createState() => _KartvizitLerState();
}

class _KartvizitLerState extends State<KartvizitLer> {
  List deneme = ['deneme', 'Saygıdeğer', 'Ev Hanımları'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Card App',
          style: GoogleFonts.satisfy(
              color: Temalar.temaRenk, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Temalar.temaRenk,
                size: 30,
              ))
        ],
      ),
      body: ListView.builder(
        itemCount: deneme.length,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  //REsim iconnu
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      backgroundColor: SaibitRenkler.instance.griPale,
                      child: const Icon(Icons.person),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: ListTile(
                      title: Text(
                        deneme[index],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
