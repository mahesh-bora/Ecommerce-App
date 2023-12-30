import 'package:flutter/material.dart';

class EditAddressScreen extends StatelessWidget {
  const EditAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF201C2C),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF201C2C),
        centerTitle: true,
        title: const Text('Add Address',
            style: TextStyle(
                fontFamily: 'CircularStd-Bold.ttf', color: Colors.white)),
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
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFF2B2733),
                        labelText: 'Street Address',
                        labelStyle:
                            TextStyle(color: Colors.white.withOpacity(0.5)),
                        hintText: 'Enter your address',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    //city
                    TextFormField(
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFF2B2733),
                        labelText: 'City',
                        labelStyle:
                            TextStyle(color: Colors.white.withOpacity(0.5)),
                        hintText: 'Enter your city',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
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
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xFF2B2733),
                              labelText: 'State',
                              labelStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5)),
                              hintText: 'Enter your state',
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),

                        //pincode
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: TextFormField(
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xFF2B2733),
                              labelText: 'Pincode',
                              labelStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5)),
                              hintText: 'Enter your pincode',
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
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
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF8E6CEF),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Save',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'CircularStd-Bold.ttf',
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
