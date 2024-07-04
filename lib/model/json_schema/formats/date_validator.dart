import 'package:core/model/json_schema/formats/validation_regexes.dart';
import 'package:core/model/json_schema/models/schema_version.dart';
import 'package:core/model/json_schema/models/validation_context.dart';

ValidationContext defaultDateValidator(
    ValidationContext context, String instanceData) {
  if (context.schemaVersion < SchemaVersion.draft7) return context;
  if (JsonSchemaValidationRegexes.fullDate.firstMatch(instanceData) == null) {
    context.addError('"date" format not accepted $instanceData');
  }
  return context;
}
