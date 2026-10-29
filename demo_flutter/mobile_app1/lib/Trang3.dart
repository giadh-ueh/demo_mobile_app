import 'package:flutter/material.dart';

class Trang3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "images/dhv.png",
                      width: constraints.maxWidth - 32,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 30),
                    Image.asset(
                      "images/anh1.jpg",
                      width: constraints.maxWidth - 32,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 16),
                    const Text("Xin chào các bạn AT 07"),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
