// import 'package:churchlab/common/providers/providers.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:provider/single_child_widget.dart';



// class AppProviders {
//   static List<SingleChildWidget> providers = [
//     ChangeNotifierProvider(create: (_) => CmmAppTheme()),
//   ];

//   static List<GeneralProvider> getDisposableProviders(BuildContext context) {
//     return [
//       context.read<GeneralProvider>(),
//     ];
//   }

//   static void disposeAllProviders(BuildContext context) {
//     getDisposableProviders(context).forEach((disposableProvider) {
//       disposableProvider
//         ..disposeValues()
//         ..resetValues();
//     });
//   }
// }