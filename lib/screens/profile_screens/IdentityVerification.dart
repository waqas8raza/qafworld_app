import 'package:flutter/material.dart';

class IdentityVerificationScreen extends StatefulWidget {
  const IdentityVerificationScreen({super.key});

  @override
  State<IdentityVerificationScreen> createState() => _IdentityVerificationScreenState();
}

class _IdentityVerificationScreenState extends State<IdentityVerificationScreen> {
var _selectedIdentity = 'National Id Card';
final _identityController= '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(

                  'Identity Type',style: TextStyle(fontSize: 18,color: Colors.grey),),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.011,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Expanded(
                child: DropdownButtonFormField<String>(
                  value: _selectedIdentity,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  ),
                  items: <String>['Driving Licence', 'Passport','National Id Card',].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      _selectedIdentity = newValue!;
                      // _identityController.text = newValue;
                    });
                  },
                ),

              ),
            ),

          ],
        ),
      ),
    );
  }
}
