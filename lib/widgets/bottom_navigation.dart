import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color: Color.fromARGB(255, 229, 244, 243),
      child: IconTheme(
        data: const IconThemeData(color: Color(0xffabadb4)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(
              Icons.add_chart,
            ),
            const Icon(Icons.search),
            Transform.translate(
              offset: const Offset(0, -15),
              child: GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushReplacementNamed('/');
                },
                child: Container(
                  padding: const EdgeInsets.all(13),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        colors: [
                          Color.fromARGB(255, 104, 195, 228),
                          Color.fromARGB(255, 2, 107, 145),
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(3, 3),
                          blurRadius: 3,
                        )
                      ]),
                  child: const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Icon(Icons.date_range),
            GestureDetector(
              onTap: () {
                // Navigator.of(context).pushNamed('/details');
              },
              child: const Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}