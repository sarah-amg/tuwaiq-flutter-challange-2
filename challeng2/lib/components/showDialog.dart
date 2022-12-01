
import 'package:flutter/material.dart';

class ShowDialog extends StatelessWidget {
  const ShowDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: Size(150, 35),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15), // <-- Radius
            ),
            backgroundColor: Colors.purple[900]),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 0,
                          blurRadius: 7,
                          color: Colors.purple.withOpacity(0.5),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.lightGreenAccent[400],
                          size: 90,
                        ),
                        Text(
                          "Success",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              });
        },
        child: Text(
          "Show Alert",
          style: TextStyle(color: Colors.white),
        ));
  }
}
