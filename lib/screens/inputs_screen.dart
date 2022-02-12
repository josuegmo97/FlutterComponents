import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Josue',
      'last_name': 'Marin',
      'email': 'ejmgabrie97@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(title: const Text("Inputs and Forms")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  helperText: "Only Letters",
                  hintText: "Your Name",
                  labelText: "Name",
                  prefixIcon: Icons.verified_user_rounded,
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  helperText: "Only Letters",
                  hintText: "Your Last Name",
                  labelText: "Lastname",
                  prefixIcon: Icons.verified_user_rounded,
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  helperText: "Only Emails",
                  hintText: "Your Email",
                  labelText: "Email",
                  prefixIcon: Icons.verified_user_rounded,
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  helperText: "Only Letters",
                  hintText: "Your Password",
                  labelText: "Password",
                  prefixIcon: Icons.verified_user_rounded,
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),

                DropdownButtonFormField<String>(
                  hint: const Text("Select Role"),
                  value: "Admin",
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'Superuser', child: Text('Superuser')),
                    DropdownMenuItem(value: 'Developer', child: Text('Developer')),
                    DropdownMenuItem(value: 'Jr. Developer', child: Text('Jr. Developer')),
                    DropdownMenuItem(value: 'Visitor', child: Text('Visitor')),
                  ],
                  onChanged: (value) {
                    formValues['role'] = value ?? 'Admin';
                  }),

                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());

                      if (!myFormKey.currentState!.validate()) {
                        return;
                      }
                    },
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Save')))),

                // asda
              ],
            ),
          ),
        ),
      ),
    );
  }
}
