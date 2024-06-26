import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:olx_app_firebase/controller/authontication_provider.dart';
import 'package:olx_app_firebase/view/authontication_screen.dart/phone.dart';
import 'package:olx_app_firebase/widgets/bottom_screen.dart';
import 'package:provider/provider.dart';


class LoginWidgets {
  Widget loginIcons(context) {
    Size size = MediaQuery.of(context).size;
    final authProvider =
        Provider.of<AuthenticationProvider>(context, listen: false);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: size.height * .0344,
          width: size.width * .073,
          child: InkWell(
            onTap: () async {
              await authProvider.googleSignIn();
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => BottomScreen()),
                  (route) => false);
            },
            child: const Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://cdn.iconscout.com/icon/free/png-256/free-google-1772223-1507807.png')),
          ),
        ),
        SizedBox(width: size.width * .06),
       
        SizedBox(width: size.width * .06),
        SizedBox(
          height: size.height * .0344,
          width: size.width * .073,
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PhoneScreen()));
            },
            child: const Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://i.pngimg.me/thumb/f/720/m2H7G6A0H7d3G6Z5.jpg')),
          ),
        ),
      ],
    );
  }

  Widget phoneTextFormField(context) {
    final authProvider =
        Provider.of<AuthenticationProvider>(context, listen: false);
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'enter a phone number';
        } else {
          return null;
        }
      },
      maxLength: 13,
      controller: authProvider.phoneController,
      onChanged: (value) {},
      keyboardType: TextInputType.phone,
      decoration: const InputDecoration(
        // prefixText: '+91',
        suffixIcon: Icon(Icons.phone_android_outlined),
        labelText: 'phone number',
        labelStyle: TextStyle(color: Colors.black),
        fillColor: Colors.white,
        filled: true,
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF00246B)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF00246B)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF00246B)),
        ),
      ),
    );
  }

  Widget otpTextFormField(context) {
    final authProvider =
        Provider.of<AuthenticationProvider>(context, listen: false);
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'otp is empty';
        } else {
          return null;
        }
      },
      maxLength: 6,
      controller: authProvider.otpController,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        suffixIcon: Icon(Icons.phone_android_outlined),
        labelText: 'Enter otp',
        labelStyle: TextStyle(color: Colors.black),
        fillColor: Colors.white,
        filled: true,
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF00246B)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF00246B)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF00246B)),
        ),
      ),
    );
  }
}