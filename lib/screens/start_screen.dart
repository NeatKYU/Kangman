import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black87,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black87,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                width: _size.width,
                height: _size.width,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Kang man',
                      style: TextStyle(
                        fontSize: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  width: _size.width / 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('start'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: _size.width / 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('ranking'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
