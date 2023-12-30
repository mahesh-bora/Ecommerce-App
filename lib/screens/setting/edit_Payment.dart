import 'package:flutter/material.dart';

class EditPaymentScreen extends StatelessWidget {
  const EditPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF201C2C),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF201C2C),
        title: const Text(
          'Add Card',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'CircularStd-Bold.ttf',
          ),
        ),
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
                    //card number
                    TextFormField(
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFF2B2733),
                        labelStyle: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontFamily: 'CircularStd-Bold.ttf'),
                        labelText: 'Card Number',
                        hintText: 'Enter your card number',
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
                        //CVV
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: TextFormField(
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xFF2B2733),
                              labelStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontFamily: 'CircularStd-Bold.ttf'),
                              labelText: 'CVV',
                              hintText: 'Enter your CVV',
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),

                        //Expire date
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: TextFormField(
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xFF2B2733),
                              labelStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontFamily: 'CircularStd-Bold.ttf'),
                              labelText: 'Exp',
                              hintText: 'Enter your Expire date',
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
                    //card holder name
                    TextFormField(
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFF2B2733),
                        labelStyle: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontFamily: 'CircularStd-Bold.ttf'),
                        labelText: 'Card Holder Name',
                        hintText: 'Enter your card holder name',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
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
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  //Navigate to next screen
                  Navigator.pushNamed(context, '/address');
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
