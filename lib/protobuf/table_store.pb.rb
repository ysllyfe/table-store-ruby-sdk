# encoding: utf-8

##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf'


##
# Enum Classes
#
class PrimaryKeyType < ::Protobuf::Enum
  define :INTEGER, 1
  define :STRING, 2
  define :BINARY, 3
end

class PrimaryKeyOption < ::Protobuf::Enum
  define :AUTO_INCREMENT, 1
end

class RowExistenceExpectation < ::Protobuf::Enum
  define :IGNORE, 0
  define :EXPECT_EXIST, 1
  define :EXPECT_NOT_EXIST, 2
end

class ReturnType < ::Protobuf::Enum
  define :RT_NONE, 0
  define :RT_PK, 1
end

class OperationType < ::Protobuf::Enum
  define :PUT, 1
  define :UPDATE, 2
  define :DELETE, 3
end

class Direction < ::Protobuf::Enum
  define :FORWARD, 0
  define :BACKWARD, 1
end


##
# Message Classes
#
class Error < ::Protobuf::Message; end
class PrimaryKeySchema < ::Protobuf::Message; end
class PartitionRange < ::Protobuf::Message; end
class TableOptions < ::Protobuf::Message; end
class TableMeta < ::Protobuf::Message; end
class Condition < ::Protobuf::Message; end
class CapacityUnit < ::Protobuf::Message; end
class ReservedThroughputDetails < ::Protobuf::Message; end
class ReservedThroughput < ::Protobuf::Message; end
class ConsumedCapacity < ::Protobuf::Message; end
class CreateTableRequest < ::Protobuf::Message; end
class CreateTableResponse < ::Protobuf::Message; end
class UpdateTableRequest < ::Protobuf::Message; end
class UpdateTableResponse < ::Protobuf::Message; end
class DescribeTableRequest < ::Protobuf::Message; end
class DescribeTableResponse < ::Protobuf::Message; end
class ListTableRequest < ::Protobuf::Message; end
class ListTableResponse < ::Protobuf::Message; end
class DeleteTableRequest < ::Protobuf::Message; end
class DeleteTableResponse < ::Protobuf::Message; end
class LoadTableRequest < ::Protobuf::Message; end
class LoadTableResponse < ::Protobuf::Message; end
class UnloadTableRequest < ::Protobuf::Message; end
class UnloadTableResponse < ::Protobuf::Message; end
class TimeRange < ::Protobuf::Message; end
class ReturnContent < ::Protobuf::Message; end
class GetRowRequest < ::Protobuf::Message; end
class GetRowResponse < ::Protobuf::Message; end
class UpdateRowRequest < ::Protobuf::Message; end
class UpdateRowResponse < ::Protobuf::Message; end
class PutRowRequest < ::Protobuf::Message; end
class PutRowResponse < ::Protobuf::Message; end
class DeleteRowRequest < ::Protobuf::Message; end
class DeleteRowResponse < ::Protobuf::Message; end
class TableInBatchGetRowRequest < ::Protobuf::Message; end
class BatchGetRowRequest < ::Protobuf::Message; end
class RowInBatchGetRowResponse < ::Protobuf::Message; end
class TableInBatchGetRowResponse < ::Protobuf::Message; end
class BatchGetRowResponse < ::Protobuf::Message; end
class RowInBatchWriteRowRequest < ::Protobuf::Message; end
class TableInBatchWriteRowRequest < ::Protobuf::Message; end
class BatchWriteRowRequest < ::Protobuf::Message; end
class RowInBatchWriteRowResponse < ::Protobuf::Message; end
class TableInBatchWriteRowResponse < ::Protobuf::Message; end
class BatchWriteRowResponse < ::Protobuf::Message; end
class GetRangeRequest < ::Protobuf::Message; end
class GetRangeResponse < ::Protobuf::Message; end


##
# Message Fields
#
class Error
  required :string, :code, 1
  optional :string, :message, 2
end

class PrimaryKeySchema
  required :string, :name, 1
  required ::PrimaryKeyType, :type, 2
  optional ::PrimaryKeyOption, :option, 3
end

class PartitionRange
  required :bytes, :begin, 1
  required :bytes, :end, 2
end

class TableOptions
  optional :int32, :time_to_live, 1
  optional :int32, :max_versions, 2
  optional :int64, :deviation_cell_version_in_sec, 5
end

class TableMeta
  required :string, :table_name, 1
  repeated ::PrimaryKeySchema, :primary_key, 2
end

class Condition
  required ::RowExistenceExpectation, :row_existence, 1
  optional :bytes, :column_condition, 2
end

class CapacityUnit
  optional :int32, :read, 1
  optional :int32, :write, 2
end

class ReservedThroughputDetails
  required ::CapacityUnit, :capacity_unit, 1
  required :int64, :last_increase_time, 2
  optional :int64, :last_decrease_time, 3
end

class ReservedThroughput
  required ::CapacityUnit, :capacity_unit, 1
end

class ConsumedCapacity
  required ::CapacityUnit, :capacity_unit, 1
end

class CreateTableRequest
  required ::TableMeta, :table_meta, 1
  required ::ReservedThroughput, :reserved_throughput, 2
  optional ::TableOptions, :table_options, 3
  repeated ::PartitionRange, :partitions, 4
end

class UpdateTableRequest
  required :string, :table_name, 1
  optional ::ReservedThroughput, :reserved_throughput, 2
  optional ::TableOptions, :table_options, 3
end

class UpdateTableResponse
  required ::ReservedThroughputDetails, :reserved_throughput_details, 1
  required ::TableOptions, :table_options, 2
end

class DescribeTableRequest
  required :string, :table_name, 1
end

class DescribeTableResponse
  required ::TableMeta, :table_meta, 1
  required ::ReservedThroughputDetails, :reserved_throughput_details, 2
  required ::TableOptions, :table_options, 3
  repeated :bytes, :shard_splits, 6
end

class ListTableResponse
  repeated :string, :table_names, 1
end

class DeleteTableRequest
  required :string, :table_name, 1
end

class LoadTableRequest
  required :string, :table_name, 1
end

class UnloadTableRequest
  required :string, :table_name, 1
end

class TimeRange
  optional :int64, :start_time, 1
  optional :int64, :end_time, 2
  optional :int64, :specific_time, 3
end

class ReturnContent
  optional ::ReturnType, :return_type, 1
end

class GetRowRequest
  required :string, :table_name, 1
  required :bytes, :primary_key, 2
  repeated :string, :columns_to_get, 3
  optional ::TimeRange, :time_range, 4
  optional :int32, :max_versions, 5
  optional :bytes, :filter, 7
  optional :string, :start_column, 8
  optional :string, :end_column, 9
  optional :bytes, :token, 10
end

class GetRowResponse
  required ::ConsumedCapacity, :consumed, 1
  required :bytes, :row, 2
  optional :bytes, :next_token, 3
end

class UpdateRowRequest
  required :string, :table_name, 1
  required :bytes, :row_change, 2
  required ::Condition, :condition, 3
  optional ::ReturnContent, :return_content, 4
end

class UpdateRowResponse
  required ::ConsumedCapacity, :consumed, 1
  optional :bytes, :row, 2
end

class PutRowRequest
  required :string, :table_name, 1
  required :bytes, :row, 2
  required ::Condition, :condition, 3
  optional ::ReturnContent, :return_content, 4
end

class PutRowResponse
  required ::ConsumedCapacity, :consumed, 1
  optional :bytes, :row, 2
end

class DeleteRowRequest
  required :string, :table_name, 1
  required :bytes, :primary_key, 2
  required ::Condition, :condition, 3
  optional ::ReturnContent, :return_content, 4
end

class DeleteRowResponse
  required ::ConsumedCapacity, :consumed, 1
  optional :bytes, :row, 2
end

class TableInBatchGetRowRequest
  required :string, :table_name, 1
  repeated :bytes, :primary_key, 2
  repeated :bytes, :token, 3
  repeated :string, :columns_to_get, 4
  optional ::TimeRange, :time_range, 5
  optional :int32, :max_versions, 6
  optional :bytes, :filter, 8
  optional :string, :start_column, 9
  optional :string, :end_column, 10
end

class BatchGetRowRequest
  repeated ::TableInBatchGetRowRequest, :tables, 1
end

class RowInBatchGetRowResponse
  required :bool, :is_ok, 1
  optional ::Error, :error, 2
  optional ::ConsumedCapacity, :consumed, 3
  optional :bytes, :row, 4
  optional :bytes, :next_token, 5
end

class TableInBatchGetRowResponse
  required :string, :table_name, 1
  repeated ::RowInBatchGetRowResponse, :rows, 2
end

class BatchGetRowResponse
  repeated ::TableInBatchGetRowResponse, :tables, 1
end

class RowInBatchWriteRowRequest
  required ::OperationType, :type, 1
  required :bytes, :row_change, 2
  required ::Condition, :condition, 3
  optional ::ReturnContent, :return_content, 4
end

class TableInBatchWriteRowRequest
  required :string, :table_name, 1
  repeated ::RowInBatchWriteRowRequest, :rows, 2
end

class BatchWriteRowRequest
  repeated ::TableInBatchWriteRowRequest, :tables, 1
end

class RowInBatchWriteRowResponse
  required :bool, :is_ok, 1
  optional ::Error, :error, 2
  optional ::ConsumedCapacity, :consumed, 3
  optional :bytes, :row, 4
end

class TableInBatchWriteRowResponse
  required :string, :table_name, 1
  repeated ::RowInBatchWriteRowResponse, :rows, 2
end

class BatchWriteRowResponse
  repeated ::TableInBatchWriteRowResponse, :tables, 1
end

class GetRangeRequest
  required :string, :table_name, 1
  required ::Direction, :direction, 2
  repeated :string, :columns_to_get, 3
  optional ::TimeRange, :time_range, 4
  optional :int32, :max_versions, 5
  optional :int32, :limit, 6
  required :bytes, :inclusive_start_primary_key, 7
  required :bytes, :exclusive_end_primary_key, 8
  optional :bytes, :filter, 10
  optional :string, :start_column, 11
  optional :string, :end_column, 12
  optional :bytes, :token, 13
end

class GetRangeResponse
  required ::ConsumedCapacity, :consumed, 1
  required :bytes, :rows, 2
  optional :bytes, :next_start_primary_key, 3
  optional :bytes, :next_token, 4
end

