import 'package:get/get.dart';
import '../controllers/counter.dart';
import '../controllers/list.dart';
// class AllControllerBinding implements Bindings{
//   @override
//   void dependencies() {
//     // TODO: implement dependencies
//
//     Get.lazyPut<CounterController>(() => CounterController());
//     Get.lazyPut<ListController>(() => ListController());
//
//   }
//
// }
class AllControllerBinding implements Bindings{  //implements 必须实现 Bindings的方法
  @override //重写
  void dependencies(){
    Get.lazyPut<CounterController>(() => CounterController());//懒加载初始化
    Get.lazyPut<ListController>(() => ListController()); //懒加载初始化
  }
}