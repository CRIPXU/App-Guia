// @override
// void initState() {
//   super.initState();
//   // Add code after super
//   _animationController = AnimationController(
//       vsync: this, duration: const Duration(milliseconds: 500))
//     ..addStatusListener(
//           (status) {
//         if (status == AnimationStatus.completed) {
//           Navigator.push(
//             context,
//             AnimatingRoute(
//               route: Guarico(),
//             ),
//           );
//         }
//         Timer(
//           const Duration(milliseconds: 300),
//               () {
//             _animationController.reset();
//           },
//         );
//       },
//     );
//   scaleAnimation =
//       Tween<double>(begin: 0.0, end: 10.0).animate(scaleAnimation);
// }
//
// @override
// void dispose() {
//   // Add code before the super
//   _animationController.dispose();
//   super.dispose();
// }