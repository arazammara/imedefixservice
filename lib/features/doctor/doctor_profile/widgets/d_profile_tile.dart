import 'package:idaawee/commons/common_imports/common_libs.dart';

class DoctorProfileTile extends StatelessWidget {
  const DoctorProfileTile(
      {super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onPressed,
          dense: true,
          leading: Image.asset('assets/images/userright.png'),
          title: Text(text),
          trailing: Image.asset('assets/images/arrow.png'),
        ),
        Divider(
          thickness: 0.5,
          color: MyColors.grey.withOpacity(0.30),
        )
      ],
    );
  }
}
