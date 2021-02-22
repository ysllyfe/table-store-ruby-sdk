# encoding: utf-8

##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf'


##
# Enum Classes
#
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
class SingleColumnValueFilter < ::Protobuf::Message; end
class CompositeColumnValueFilter < ::Protobuf::Message; end
class ColumnPaginationFilter < ::Protobuf::Message; end
class Filter < ::Protobuf::Message; end


##
# Message Fields
#
class SingleColumnValueFilter
  required ::ComparatorType, :comparator, 1
  required :string, :column_name, 2
  required :bytes, :column_value, 3
  required :bool, :filter_if_missing, 4
  required :bool, :latest_version_only, 5
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

