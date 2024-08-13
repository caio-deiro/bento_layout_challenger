import 'package:flutter/material.dart';

/// AppBottombarWidget Class responsible for the bottom bar
class AppBottombarWidget extends StatelessWidget {
  /// AppBottombarWidget Constructor
  const AppBottombarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {},
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      color: Color(0xFF32de84),
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: Color(0xFF32de84),
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.local_offer,
                      color: Colors.green[200],
                    ),
                    Text(
                      'Deals',
                      style: TextStyle(
                        color: Colors.green[200],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.shopping_cart_rounded,
                      color: Colors.green[200],
                    ),
                    Text(
                      'Cart',
                      style: TextStyle(
                        color: Colors.green[200],
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      color: Colors.green[200],
                    ),
                    Text(
                      'Account',
                      style: TextStyle(
                        color: Colors.green[200],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
