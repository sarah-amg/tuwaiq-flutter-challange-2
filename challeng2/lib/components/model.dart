import 'package:flutter/material.dart';

class ModelBottom extends StatelessWidget {
  const ModelBottom({
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
          showModalBottomSheet(
            shape: RoundedRectangleBorder( 
          borderRadius: BorderRadius.vertical( 
            top: Radius.circular(25.0),
          )),
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 450,
                  width: 500,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 0,
                          blurRadius: 7,
                          color: Colors.purple.withOpacity(0.5),
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Settings",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.purple[900]),
                          ),
                        ),
                        SizedBox(height: 20,),
                        SizedBox(
                          width: 200,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Allow Teacher",
                                        style: TextStyle(color: Colors.purple[900]),
                                      ),
                                      Switch(
                                          activeColor: Colors.green,
                                          value: true,
                                          onChanged: (onChanged) {}),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Allow Students",
                                      style: TextStyle(color: Colors.purple[900]),
                                    ),
                                    Switch(
                                        activeColor: Colors.green,
                                        value: true,
                                        onChanged: (onChanged) {}),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Allow Attendance",
                                      style: TextStyle(color: Colors.purple[900]),
                                    ),
                                    Switch(
                                        activeColor: Colors.green,
                                        value: true,
                                        onChanged: (onChanged) {}),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Allow Edit",
                                      style: TextStyle(color: Colors.purple[900]),
                                    ),
                                    Switch(
                                        activeColor: Colors.green,
                                        value: true,
                                        onChanged: (onChanged) {}),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              });
        },
        child: Text(
          "Settings",
          style: TextStyle(color: Colors.white),
        ));
  }
}
