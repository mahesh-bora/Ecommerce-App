import 'package:flutter/material.dart';

class EditAddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Add Address'),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 20.0, vertical: 15.0),
        child: Column(
          children: [
            Expanded(
              child: Form(
                child: ListView(
                  children: [
                    const SizedBox(height: 20),

                    //address
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Address',
                        hintText: 'Enter your address',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    //city
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'City',
                        hintText: 'Enter your city',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //state
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'State',
                              hintText: 'Enter your state',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),

                        //pincode
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Pincode',
                              hintText: 'Enter your pincode',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    //save button
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  //Navigate to next screen
                  Navigator.pushNamed(context, '/address');
                },
                child: const Text(
                  'Save',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
