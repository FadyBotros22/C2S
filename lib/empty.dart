// import '../widgets/empty_list.dart';
// import '../widgets/linear_progress.dart';
// import '../widgets/popup_menu.dart';
// import 'form screens/form_screen1.dart';
// import 'form screens/form_screen2.dart';
// import 'form screens/form_screen3.dart';
// import 'form screens/form_screen4.dart';
// import 'form screens/form_screen5.dart';
// import 'form screens/form_screen6.dart';
// import 'package:flutter/material.dart';
// import 'package:c2s/constants.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:intl/intl.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             margin: const EdgeInsets.only(top: 36, left: 16),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   'Entries',
//                   style: kAppBarTitleTextStyle,
//                 ),
//                 PopupMenu(),
//               ],
//             ),
//           ),
//           Expanded(
//               child: !isLoading
//                   ? (entriesResponse == null ||
//                           entriesResponse!.data.entries.isEmpty)
//                       ? const EmptyList()
//                       : ListView.builder(
//                           padding: EdgeInsets.only(top: 18),
//                           itemCount: entriesResponse!.data.entries.length,
//                           itemBuilder: (context, index) {
//                             final project =
//                                 entriesResponse!.data.entries[index];
//                             return Card(
//                               shadowColor: Colors.transparent,
//                               color: const Color(0xFFF5F5F5),
//                               margin: const EdgeInsets.only(
//                                   left: 16, right: 16, bottom: 16),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.only(
//                                         top: 14, left: 12, right: 12),
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.spaceBetween,
//                                           children: [
//                                             const Text("Created By",
//                                                 style: kCreatedByTextStyle),
//                                             Text(
//                                               DateFormat('d MMMM, yyyy')
//                                                   .format(project.date),
//                                               style: kDateTextStyle,
//                                             ),
//                                           ],
//                                         ),
//                                         const SizedBox(height: 15.0),
//                                         Text(
//                                           project.createdBy,
//                                           style: kNameTextStyle,
//                                         ),
//                                         const SizedBox(height: 10.0),
//                                         Text(
//                                           project.jobId,
//                                           style: kProjectNameTextStyle,
//                                         ),
//                                         const SizedBox(height: 15.0),
//                                         Row(
//                                           children: [
//                                             SvgPicture.asset(
//                                               'assets/icons/path929.svg',
//                                               height: 16.35,
//                                               width: 12,
//                                             ),
//                                             const SizedBox(width: 9),
//                                             Text(
//                                               project.address ?? "None",
//                                               style: kProjectNameTextStyle,
//                                             ),
//                                           ],
//                                         ),
//                                         const SizedBox(height: 15),
//                                       ],
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(left: 16),
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         const Divider(
//                                           color: Color(0xffDFDFDF),
//                                           height: 0,
//                                         ),
//                                         Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.spaceBetween,
//                                           children: [
//                                             SizedBox(
//                                                 width: 290,
//                                                 child: LinearProgress(
//                                                   linearProgressValue: project
//                                                       .progressStep
//                                                       .toDouble(),
//                                                   color: Color(0xff34C759),
//                                                 )),
//                                             ElevatedButton(
//                                               onPressed: () {
//                                                 Widget screen;
//                                                 String id = project.id;
//                                                 int step = project.progressStep
//                                                     .toInt();
//                                                 if (step == 1) {
//                                                   screen = FormScreen2(id: id);
//                                                 } else if (step == 2) {
//                                                   screen = FormScreen3(id: id);
//                                                 } else if (step == 3) {
//                                                   screen = FormScreen4(id: id);
//                                                 } else if (step == 4) {
//                                                   screen = FormScreen5(id: id);
//                                                 } else {
//                                                   screen = FormScreen6(id: id);
//                                                 }
//                                                 Navigator.pushAndRemoveUntil(
//                                                   context,
//                                                   MaterialPageRoute(
//                                                     builder: (context) =>
//                                                         screen,
//                                                   ),
//                                                   (route) => false,
//                                                 );
//                                               },
//                                               style: const ButtonStyle(
//                                                 overlayColor:
//                                                     WidgetStatePropertyAll(
//                                                         Colors.transparent),
//                                                 elevation:
//                                                     WidgetStatePropertyAll(0),
//                                                 backgroundColor:
//                                                     WidgetStatePropertyAll(
//                                                         Color(0xffF5F5F5)),
//                                                 padding: WidgetStatePropertyAll(
//                                                     EdgeInsets.zero),
//                                               ),
//                                               child: SvgPicture.asset(
//                                                 'assets/icons/ic_view_form.svg',
//                                                 width: 28,
//                                                 height: 28,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             );
//                           },
//                         )
//                   : const Center(
//                       child:
//                           CircularProgressIndicator()) // Show loading spinner
//
//               ),
//         ],
//       ),
//       floatingActionButton: Padding(
//         padding: const EdgeInsets.only(right: 15, bottom: 34),
//         child: FloatingActionButton(
//           onPressed: () {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const FormScreen1(),
//                 ));
//           },
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           child: SvgPicture.asset(
//             'assets/icons/button_create_button.svg',
//             width: 70,
//             height: 70,
//           ),
//         ),
//       ),
//     );
//   }
// }
