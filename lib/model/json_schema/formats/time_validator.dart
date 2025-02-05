import 'package:core/model/json_schema/formats/validation_regexes.dart';
import 'package:core/model/json_schema/models/schema_version.dart';
import 'package:core/model/json_schema/models/validation_context.dart';

ValidationContext defaultTimeValidator(
    ValidationContext context, String instanceData) {
  if (context.schemaVersion < SchemaVersion.draft7) return context;
  if (JsonSchemaValidationRegexes.fullTime.firstMatch(instanceData) == null) {
    context.addError('"time" format not accepted $instanceData');
  }
  return context;
}
