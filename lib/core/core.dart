import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:glosh/data/controller/admin/product_admin_controller.dart';
import 'package:glosh/data/controller/firestorage_controller.dart';
import 'package:glosh/presentation/components/component.dart';
import 'package:glosh/presentation/routes/route_name.dart';
import 'package:glosh/presentation/screens/screen.dart';
import 'package:glosh/presentation/themes/theme.dart';
import 'package:intl/intl.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Result State
part 'result_state.dart';

// Utilities Generic
part 'utils/generics/methods.dart';
part 'utils/generics/scroll_config.dart';

// Utilities Extension
part 'utils/extensions/helper/secure_storage_helper.dart';
part 'utils/extensions/helper/preferences_helper.dart';
part 'utils/extensions/dependancy/getx_binding.dart';
