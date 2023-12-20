import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Address'),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 20.0, vertical: 15.0),
        child: SingleChildScrollView(
          child: Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[200],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //user details
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    overflow: TextOverflow.visible,
                    '2715 Ash Dr.San Jose, South Dakota 83475',
                    style: TextStyle(
                      color: Colors.black,
                      //fontSize: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                //edit button
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Edit',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
