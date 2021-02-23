# encoding: utf-8

##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf'


##
# Enum Classes
#
class VariantType < ::Protobuf::Enum
  define :VT_INTEGER, 0
  define :VT_DOUBLE, 1
  define :VT_STRING, 3
  define :VT_NULL, 6
  define :VT_BLOB, 7
end

class FilterType < ::Protobuf::Enum
  define :FT_SINGLE_COLUMN_VALUE, 1
  define :FT_COMPOSITE_COLUMN_VALUE, 2
  define :FT_COLUMN_PAGINATION, 3
end

class ComparatorType < ::Protobuf::Enum
  define :CT_EQUAL, 1
  define :CT_NOT_EQUAL, 2
  define :CT_GREATER_THAN, 3
  define :CT_GREATER_EQUAL, 4
  define :CT_LESS_THAN, 5
  define :CT_LESS_EQUAL, 6
end

class LogicalOperator < ::Protobuf::Enum
  define :LO_NOT, 1
  define :LO_AND, 2
  define :LO_OR, 3
end


##
# Message Classes
#
class ValueTransferRule < ::Protobuf::Message; end
class SingleColumnValueFilter < ::Protobuf::Message; end
class CompositeColumnValueFilter < ::Protobuf::Message; end
class ColumnPaginationFilter < ::Protobuf::Message; end
class Filter < ::Protobuf::Message; end


##
# Message Fields
#
class ValueTransferRule
  required :string, :regex, 1
  optional ::VariantType, :cast_type, 2
end

class SingleColumnValueFilter
  required ::ComparatorType, :comparator, 1
  required :string, :column_name, 2
  required :bytes, :column_value, 3
  required :bool, :filter_if_missing, 4
  required :bool, :latest_version_only, 5
  optional ::ValueTransferRule, :value_trans_rule, 6
end

class CompositeColumnValueFilter
  required ::LogicalOperator, :combinator, 1
  repeated ::Filter, :sub_filters, 2
end

class ColumnPaginationFilter
  required :int32, :offset, 1
  required :int32, :limit, 2
end

class Filter
  required ::FilterType, :type, 1
  required :bytes, :filter, 2
end

