import 'package:core/model/json_schema/global_platform_functions.dart';
import 'package:core/model/json_schema/models/validation_context.dart';

ValidationContext defaultUriValidator(
    ValidationContext context, String instanceData) {
  final isValid = defaultValidators.uriValidator;
  if (!isValid(instanceData)) {
    context.addError('"uri" format not accepted $instanceData');
  }
  return context;
}
