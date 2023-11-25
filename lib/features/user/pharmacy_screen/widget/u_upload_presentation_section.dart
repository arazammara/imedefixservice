import 'dart:io';
import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_upload_presentation_card.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';
import 'package:image_picker/image_picker.dart';

class UUploadPresentationSection extends StatefulWidget {
  const UUploadPresentationSection({super.key});

  @override
  State<UUploadPresentationSection> createState() =>
      _UUploadPresentationSectionState();
}

class _UUploadPresentationSectionState
    extends State<UUploadPresentationSection> {
  File? imageFile;
  var picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.7.sh,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  imageFile != null
                      ? Image.file(File(imageFile!.path),
                          height: 202.h, width: 304.w)
                      : Image.asset(AppAssets.prescription,
                          height: 202.h, width: 304.w),
                  padding24,
                  Text(
                    uploadPrescription,
                    style: getSemiBoldStyle(
                        color: MyColors.black, fontSize: MyFonts.size16),
                  ),
                  padding15,
                  Text(
                    uploadyourprescriptionwhichyoureceive,
                    style: getRegularStyle(
                        color: MyColors.searchTextColor,
                        fontSize: MyFonts.size14),
                  ),
                  padding24,
                  UUploadPresentationCard(
                    onTap: () {
                      _getImage(ImageSource.gallery);
                    },
                    text: uploadfromGallery,
                  ),
                  padding24,
                  UUploadPresentationCard(
                    onTap: () {
                      _getImage(ImageSource.camera);
                    },
                    text: takeaPhoto,
                  ),
                  padding24,
                ],
              ),
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
}
