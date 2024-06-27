import 'package:flutter/material.dart';
import '../../common/app_custom_size.dart';
import '../../common/custom_text_styles.dart';
import '../../common/widgets/common_appbar.dart';
import '../../common/widgets/common_radio_group.dart';
import '../../common/widgets/main_btn.dart';
import '../../common/widgets/main_text_field.dart';
import '../../helpers/enum.dart';
import 'upload_photos_screen.dart';

class CreateProfileScreen extends StatefulWidget {
  static const routeName = "/create-profile-screen";
  const CreateProfileScreen({Key? key}) : super(key: key);

  @override
  State<CreateProfileScreen> createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  int? selectedGenderIndex;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  FocusNode nameFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: CustomSize.getWidth(16)),
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              physics: const AlwaysScrollableScrollPhysics(),
              child: SizedBox(
                height: constraints.maxHeight,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: CustomSize.getHeight(32),
                          bottom: CustomSize.getHeight(16)),
                      child: Text("Lights down, hearts open welcome to DateMe!",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displayLarge),
                    ),
                    Text(
                      "Let everyone know about you",
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.regularStyle(
                          fontSize: 14, color: const Color(0xff6B7280)),
                    ),
                    SizedBox(height: CustomSize.getHeight(48)),
                    CustomTextFormField(
                      textEditingController: nameController,
                      focusNode: nameFocusNode,
                      labelText: 'Name',
                      keyboardType: TextInputType.name,
                      onFieldSubmitted: (String myString) {},
                      type: TextFieldType.NORMAL,
                      hintText: 'Enter the First Name',
                    ),
                    SizedBox(height: CustomSize.getHeight(32)),
                    CustomTextFormField(
                      textEditingController: nameController,
                      focusNode: nameFocusNode,
                      labelText: 'Name',
                      keyboardType: TextInputType.name,
                      onFieldSubmitted: (String myString) {},
                      type: TextFieldType.NORMAL,
                      hintText: 'Enter Your Birthday',
                    ),
                    SizedBox(height: CustomSize.getHeight(32)),
                    RadioGroup(
                      question: 'Select your gender',
                      options: const ['Male', 'Female', 'Other'],
                      onChanged: (index) {
                        setState(() {
                          selectedGenderIndex = index;
                        });
                      },
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: MainBtn(
                          onClick: () {
                            Navigator.of(context)
                                .pushNamed(UploadPhotosScreen.routeName);
                          },
                          lbl: "Continue",
                        ),
                      ),
                    ),
                    SizedBox(height: CustomSize.getHeight(30))
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
