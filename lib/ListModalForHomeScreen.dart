import 'package:flutter/material.dart';

class ListModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal:4),
      child: Center(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(60), topLeft: Radius.circular(60)),
            color: Colors.red,
          ),
          height: 200,
          width: double.infinity,
          child: Row(
            children: [
              SizedBox(
                width: 150,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Custom ListView', style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),),
                ],
              ),
            ],
          )
        ),
      ),
    ),
    );

  }
}
