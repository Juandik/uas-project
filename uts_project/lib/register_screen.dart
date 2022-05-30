import 'package:flutter/material.dart';
import 'package:uts_project/signinOrSignUp/signin_or_signup_screen.dart';
import 'package:uts_project/db/db_helper.dart';
import 'components/primary_button.dart';
import 'model/user.dart';


class RegisterPage extends StatefulWidget {
  final Pegawai? pegawai;

  RegisterPage({this.pegawai});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  DbHelper db = DbHelper();

  TextEditingController? firstName;
  TextEditingController? lastName;
  TextEditingController? mobileNo;
  TextEditingController? email;

  var style;

  @override
  void initState() {
    firstName = TextEditingController(
        text: widget.pegawai == null ? '' : widget.pegawai!.firstName);
    lastName = TextEditingController(
        text: widget.pegawai == null ? '' : widget.pegawai!.lastName);
    mobileNo = TextEditingController(
        text: widget.pegawai == null ? '' : widget.pegawai!.mobileNo);
    email = TextEditingController(
        text: widget.pegawai == null ? '' : widget.pegawai!.email);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Image.asset("images/Jejayy.png", height: 300,),
                            TextField(
                              controller: firstName,
                              decoration: InputDecoration(
                                  labelText: "First Name"
                              ),
                            ),
                            const SizedBox(height: 16,),
                            TextField(
                              controller: lastName,
                              decoration: InputDecoration(
                                  labelText: "Last Name"
                              ),
                            ),
                            const SizedBox(height: 16,),
                            TextField(
                              controller: mobileNo,
                              decoration: InputDecoration(
                                  labelText: "No Telepon"
                              ),
                            ),
                            const SizedBox(height: 16,),
                            TextField(
                              controller: email,
                              decoration: InputDecoration(
                                  labelText: "Email"
                              ),
                            ),
                            const SizedBox(height: 16,),
                            ElevatedButton(
                              child: (widget.pegawai == null)
                                  ? Text(
                                'Register',
                                style: TextStyle(color: Colors.white),
                              )
                                  : Text(
                                'Update',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: style,
                              onPressed: () {
                                upsertPegawai();
                              },
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
          ),
        )
    );
  }
  Future<void> upsertPegawai() async {
    if (widget.pegawai != null) {
      //insert

      await db.updatePegawai(Pegawai.fromMap({
        'id' : widget.pegawai!.id,
        'firstName' : firstName!.text,
        'lastName' : lastName!.text,
        'mobileNo' : mobileNo!.text,
        'email' : email!.text,
      }));
      Navigator.pop(context, 'update');
    } else {
      //update
      await db.savePegawai(Pegawai(
        firstName: firstName!.text,
        lastName: lastName!.text,
        mobileNo: mobileNo!.text,
        email: email!.text,
      ));
      Navigator.pop(context, 'save');
    }
  }
}
