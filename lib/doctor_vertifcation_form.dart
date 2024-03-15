import 'package:childapp/pediatrician.dart';
import 'package:flutter/material.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  bool loading = false;
  final _formKey = GlobalKey<FormState>();

  //SkillsController
  TextEditingController skillController = TextEditingController();
  List skills = [];
  List certication = [];

  String? gender;
  void addskills() {
    String skill = skillController.text.toString();
    setState(() {
      skills.add(skill);
      skillController.text = "";
    });
  }

  void removeskill(String skill) {
    setState(() {
      skills.remove(skill);
    });
  }

// cetfications
  TextEditingController certificateController = TextEditingController();
  void addcertification() {
    String instituteName = certificateController.text.toString();

    setState(() {
      certication.add(instituteName);
      certificateController.text = "";
    });
  }

  void removecertification(String certification) {
    setState(() {
      certication.remove(certification);
    });
  }

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final contactController = TextEditingController();
  final prnoController = TextEditingController();
  final cnicController = TextEditingController();
  final emailController = TextEditingController();
  final universityNameController = TextEditingController();
  final degreeProgramController = TextEditingController();
  final passyearController = TextEditingController();
  final cgpaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        backgroundColor: Colors.pink.shade100,
        title: const Text(
          'Dr Verification Form',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: 730,
        width: 376,
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         fit: BoxFit.fill,
        //         colorFilter: ColorFilter.mode(
        //             Colors.black.withOpacity(0.1), BlendMode.dstATop),
        //         image: const AssetImage("Assets/pexels-pixabay-40568.jpeg"))
        //         ),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 170,
                    child: TextFormField(
                      controller: firstNameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 20, color: Colors.red),
                              borderRadius: BorderRadius.circular(10)),
                          labelText: "First Name"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Cannot be empty";
                        }
                        if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                          return "Can only contain alphabetic characters";
                        }
                        return null;
                      },
                      onChanged: (value) {},
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  SizedBox(
                    width: 170,
                    child: TextFormField(
                        controller: lastNameController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 4, color: Colors.red.shade900),
                                borderRadius: BorderRadius.circular(10)),
                            labelText: "Last Name"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Cannot be empty";
                          }
                          if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                            return "Can only contain alphabetic characters";
                          }
                          return null;
                        },
                        onChanged: (value) {},
                        keyboardType: TextInputType.name),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 170,
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: contactController,
                      maxLength: 11,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Colors.red.shade900),
                              borderRadius: BorderRadius.circular(10)),
                          labelText: "Contact No"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "cannot be empty";
                        }
                        if (value.length != 11 ||
                            !RegExp(r'^[0-9]+$').hasMatch(value)) {
                          return "Invalid number ";
                        }
                        return null;
                      },
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    width: 170,
                    child: TextFormField(
                      maxLength: 6,
                      keyboardType: TextInputType.number,
                      controller: prnoController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 20, color: Colors.red.shade900),
                              borderRadius: BorderRadius.circular(10)),
                          labelText: "PRNO#"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "cannot be empty";
                        }
                        if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                          return "contain number";
                        }
                        return null;
                      },
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 170,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      maxLength: 13,
                      controller: cnicController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Colors.red.shade900),
                              borderRadius: BorderRadius.circular(10)),
                          labelText: "CNIC NO"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "cannot be empty";
                        }
                        if (value.length != 13 ||
                            !RegExp(r'^[0-9]+$').hasMatch(value)) {
                          return "contain 13 digits ";
                        }
                        return null;
                      },
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  RadioListTile(
                    title: const Text("Male"),
                    value: "male",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: const Text("Female"),
                    value: "female",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    },
                  ),
                  const Text(
                    "Education",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 170,
                        child: TextFormField(
                          controller: universityNameController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 20, color: Colors.red.shade900),
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: "University Name"),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "cannot be empty";
                            }
                            if (value.contains(RegExp(r'[0-9]'))) {
                              return "cannot be numbers";
                            }
                            return null;
                          },
                          onChanged: (value) {},
                          keyboardType: TextInputType.name,
                        ),
                      ),
                      SizedBox(
                        width: 170,
                        child: TextFormField(
                          controller: degreeProgramController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 20, color: Colors.red.shade900),
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: "Degree Program"),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "cannot be empty";
                            }
                            if (value.contains(RegExp(r'[0-9]'))) {
                              return "cannot contain numbers";
                            }
                            return null;
                          },
                          onChanged: (value) {},
                          keyboardType: TextInputType.name,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 170,
                        child: TextFormField(
                          maxLength: 4,
                          keyboardType: TextInputType.number,
                          controller: passyearController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 20, color: Colors.red.shade900),
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: "Years of Passing"),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "cannot be empty";
                            }
                            int? year = int.tryParse(value);
                            if (year == null || year > 2023) {
                              return "Invalid year";
                            }
                            return null;
                          },
                          onChanged: (value) {},
                        ),
                      ),
                      SizedBox(
                        width: 170,
                        child: TextFormField(
                          maxLength: 3,
                          controller: cgpaController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 20, color: Colors.red.shade900),
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: "CGPA"),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "cannot be empty";
                            }
                            double? cgpa = double.tryParse(value);
                            if (cgpa == null || cgpa <= 1.5 || cgpa > 4.0) {
                              return "Invalid CGPA";
                            }
                            return null;
                          },
                          onChanged: (value) {},
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Add Skills",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 320,
                        child: TextFormField(
                          controller: skillController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 20, color: Colors.red.shade900),
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: "Add Skills"),
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return "cannot be empty";
                          //   }
                          //   if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                          //     return "cannot be a number";
                          //   }
                          //   return null;
                          // },
                          onChanged: (value) {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: GestureDetector(
                            onTap: () {
                              if (skillController.text.isNotEmpty &&
                                  skillController.text.length >= 3) {
                                addskills();
                              } else {}
                            },
                            child: Icon(
                              Icons.add,
                              size: 30,
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    width: 375,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: skills.length,
                        itemBuilder: ((context, index) {
                          return Row(
                            children: [
                              Chip(
                                elevation: 20,
                                padding: EdgeInsets.all(8),
                                backgroundColor: Colors.red.shade900,
                                // shadowColor: Colors.black,
                                label: Text(
                                  '${skills[index]}',
                                  style: const TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    removeskill(
                                      '${skills[index]}',
                                    );
                                  },
                                  child: Icon(
                                    color: Colors.red.shade900,
                                    Icons.remove_circle,
                                    size: 30,
                                  )),
                            ],
                          );
                        })),
                  ),
                  const Text(
                    "Certification",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 320,
                        child: TextFormField(
                          controller: certificateController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 20, color: Colors.red.shade900),
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: "Specialization"),
                          onChanged: (value) {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: GestureDetector(
                            onTap: () {
                              if (certificateController.text.isNotEmpty &&
                                  certificateController.text.length >= 3) {
                                addcertification();
                              } else {}
                            },
                            child: const Icon(
                              Icons.add,
                              size: 30,
                            )),
                      )
                    ],
                  ),
                  // new
                  SizedBox(
                    height: 50,
                    width: 380,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: certication.length,
                        itemBuilder: ((context, index) {
                          return Row(
                            children: [
                              Chip(
                                elevation: 20,
                                padding: const EdgeInsets.all(8),
                                backgroundColor: Colors.red.shade900,
                                // shadowColor: Colors.black,
                                label: Text(
                                  '${certication[index]}',
                                  style: const TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    removecertification(
                                      '${certication[index]}',
                                    );
                                  },
                                  child: Icon(
                                    color: Colors.pink.shade200,
                                    Icons.remove_circle,
                                    size: 30,
                                  )),
                            ],
                          );
                        })),
                  ),

                  SizedBox(
                    height: 50,
                    width: 350,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink.shade200,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => PediatricianScreen()));
                        });
                      },
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
