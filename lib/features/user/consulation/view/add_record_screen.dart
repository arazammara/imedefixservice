import 'dart:io';

import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/features/user/consulation/widget/u_add_image_section.dart';
import 'package:idaawee/commons/common_widgets/upload_bottom_sheet_section.dart';
import 'package:idaawee/features/user/consulation/widget/u_add_record_detail_section.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:image_picker/image_picker.dart';

class AddRecordScreen extends StatefulWidget {
  const AddRecordScreen({super.key});

  @override
  State<AddRecordScreen> createState() => _AddRecordScreenState();
}

class _AddRecordScreenState extends State<AddRecordScreen> {
  List<String> recordImage = [
    AppAssets.record,
    AppAssets.present,
    AppAssets.invoice,
  ];
  File? imageFile;
  var picker = ImagePicker();

  List<String> titleRecor = [
    report,
    prescription,
    invoice,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CommonAppBar(
        appBarTitle: addRecords,
      ),
      body: SizedBox(
        height: 812.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UAddImageSection(
              image: imageFile,
              onTap: () {
                _displayBottomSheet(
                  context: context,
                  camera: () {
                    _getImage(ImageSource.camera);
                  },
                  gallery: () {
                    _getImage(ImageSource.gallery);
                  },
                );
              },
            ),
            const Spacer(),
            UAddRecordDetailSection(
              name: 'Abdullah Mamun',
              image: recordImage,
              title: titleRecor,
            ),
          ],
        ),
      ),
    );
  }

  _getImage(ImageSource source) async {
    var pickedFile = await picker.pickImage(
      source: source,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  Future _displayBottomSheet(
      {required BuildContext context,
      required Function() camera,
      required Function() gallery}) {
    return showModalBottomSheet(
        backgroundColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        context: context,
        builder: (_) => UploadBottomSheetSection(
              title: addarecord,
              camera: camera,
              gallery: gallery,
            ));
  }
}
