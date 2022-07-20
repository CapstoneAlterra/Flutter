class EditProfile extends StatefulWidget {
  const EditProfile({Key? key, this.image}) : super(key: key);
  final File? image;

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _picker = ImagePicker();
  File? _image;

  _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Edit Profile',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Column(children: [
          SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10.0,
                        ),
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: widget.image != null
                                ? Image.file(widget.image!, fit: BoxFit.cover)
                                : Image.asset('assets/images/banner_kelas.jpg'),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextButton(
                          onPressed: _openImagePicker,
                          child: Text(
                            'Change',
                            style: GoogleFonts.robotoCondensed(
                                color: Color.fromARGB(255, 233, 5, 5)),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Email',
                                style: GoogleFonts.robotoCondensed(
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Expanded(
                                flex: 3,
                                child: FormProfile(hintText: 'example@9999')),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Password',
                                style: GoogleFonts.robotoCondensed(
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Expanded(
                                flex: 3,
                                child: FormProfile(hintText: '******')),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              child: Text(
                                'Change Password',
                                style: GoogleFonts.robotoCondensed(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 233, 27, 12),
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return ChangePassword();
                                }));
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Full Name',
                                style: GoogleFonts.robotoCondensed(
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Expanded(
                                flex: 3, child: FormProfile(hintText: 'Doni')),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Phone',
                                style: GoogleFonts.robotoCondensed(
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Expanded(
                                flex: 3,
                                child: FormProfile(hintText: '08654321234')),
                          ],
                        ),
                        SizedBox(height: 50),
                        ButtonWidget(
                            text: 'Save',
                            onClicked: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomepageProfile(),
                                ),
                              );
                            }),
                      ])))
        ]));
  }
}
