import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zoidak_shoes_app/providers/auth_provider.dart';

import '../models/user_model.dart';

class EditProfilePage extends StatelessWidget {
  static const double defaultMargin = 16.0;

  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    // ignore: unused_local_variable
    UserModel user = authProvider.user;

    AppBar header(BuildContext context) {
      return AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color(0xff1F1D2B),
        elevation: 0,
        centerTitle: true,
        title: const Text('Edit Profile'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.check,
              color: Color(0xff6C5ECF),
            ),
            onPressed: () {},
          ),
        ],
      );
    }

    Widget nameInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'name',
              style: TextStyle(
                color: Color(0xff999999),
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
            TextFormField(
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: const InputDecoration(
                hintText: 'user.name',
                hintStyle: TextStyle(color: Colors.white),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff504F5E)),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget usernameInput() {
      var user;
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Username',
              style: TextStyle(
                color: Color(0xff999999),
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
            TextFormField(
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintText: '@${user.username}',
                hintStyle: const TextStyle(color: Colors.white),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff504F5E)),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Email Address',
              style: TextStyle(
                color: Color(0xff999999),
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
            TextFormField(
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: const InputDecoration(
                hintText: 'user.email',
                hintStyle: TextStyle(color: Colors.white),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff504F5E)),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.only(
                top: defaultMargin,
              ),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'user.profilePhotoUrl',
                    ),
                  )),
            ),
            nameInput(),
            usernameInput(),
            emailInput(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xff242231),
      appBar: header(context),
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }
}
