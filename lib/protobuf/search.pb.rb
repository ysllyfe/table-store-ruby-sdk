# encoding: utf-8

##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf'


##
# Enum Classes
#
class QueryType < ::Protobuf::Enum
  define :MATCH_QUERY, 1
  define :MATCH_PHRASE_QUERY, 2
  define :TERM_QUERY, 3
  define :RANGE_QUERY, 4
  define :PREFIX_QUERY, 5
  define :BOOL_QUERY, 6
  define :CONST_SCORE_QUERY, 7
  define :FUNCTION_SCORE_QUERY, 8
  define :NESTED_QUERY, 9
  define :WILDCARD_QUERY, 10
  define :MATCH_ALL_QUERY, 11
  define :GEO_BOUNDING_BOX_QUERY, 12
  define :GEO_DISTANCE_QUERY, 13
  define :GEO_POLYGON_QUERY, 14
  define :TERMS_QUERY, 15
  define :EXISTS_QUERY, 16
end

class QueryOperator < ::Protobuf::Enum
  define :OR, 1
  define :AND, 2
end

class ScoreMode < ::Protobuf::Enum
  define :SCORE_MODE_NONE, 1
  define :SCORE_MODE_AVG, 2
  define :SCORE_MODE_MAX, 3
  define :SCORE_MODE_TOTAL, 4
  define :SCORE_MODE_MIN, 5
end

class SortOrder < ::Protobuf::Enum
  define :SORT_ORDER_ASC, 0
  define :SORT_ORDER_DESC, 1
end

class SortMode < ::Protobuf::Enum
  define :SORT_MODE_MIN, 0
  define :SORT_MODE_MAX, 1
  define :SORT_MODE_AVG, 2
end

class GeoDistanceType < ::Protobuf::Enum
  define :GEO_DISTANCE_ARC, 0
  define :GEO_DISTANCE_PLANE, 1
end

class ColumnReturnType < ::Protobuf::Enum
  define :RETURN_ALL, 1
  define :RETURN_SPECIFIED, 2
  define :RETURN_NONE, 3
end

class IndexOptions < ::Protobuf::Enum
  define :DOCS, 1
  define :FREQS, 2
  define :POSITIONS, 3
  define :OFFSETS, 4
end

class FieldType < ::Protobuf::Enum
  define :LONG, 1
  define :DOUBLE, 2
  define :BOOLEAN, 3
  define :KEYWORD, 4
  define :TEXT, 5
  define :NESTED, 6
  define :GEO_POINT, 7
end

class SyncPhase < ::Protobuf::Enum
  define :FULL, 1
  define :INCR, 2
end

class AggregationType < ::Protobuf::Enum
  define :AGG_AVG, 1
  define :AGG_DISTINCT_COUNT, 6
  define :AGG_MAX, 2
  define :AGG_MIN, 3
  define :AGG_SUM, 4
  define :AGG_COUNT, 5
end

class GroupByType < ::Protobuf::Enum
  define :GROUP_BY_FIELD, 1
  define :GROUP_BY_RANGE, 2
  define :GROUP_BY_FILTER, 3
  define :GROUP_BY_GEO_DISTANCE, 4
end


##
# Message Classes
#
class MatchQuery < ::Protobuf::Message; end
class MatchPhraseQuery < ::Protobuf::Message; end
class MatchAllQuery < ::Protobuf::Message; end
class TermQuery < ::Protobuf::Message; end
class TermsQuery < ::Protobuf::Message; end
class RangeQuery < ::Protobuf::Message; end
class PrefixQuery < ::Protobuf::Message; end
class WildcardQuery < ::Protobuf::Message; end
class BoolQuery < ::Protobuf::Message; end
class ConstScoreQuery < ::Protobuf::Message; end
class FieldValueFactor < ::Protobuf::Message; end
class FunctionScoreQuery < ::Protobuf::Message; end
class NestedQuery < ::Protobuf::Message; end
class GeoBoundingBoxQuery < ::Protobuf::Message; end
class GeoDistanceQuery < ::Protobuf::Message; end
class GeoPolygonQuery < ::Protobuf::Message; end
class ExistsQuery < ::Protobuf::Message; end
class Query < ::Protobuf::Message; end
class Collapse < ::Protobuf::Message; end
class NestedFilter < ::Protobuf::Message; end
class ScoreSort < ::Protobuf::Message; end
class FieldSort < ::Protobuf::Message; end
class GeoDistanceSort < ::Protobuf::Message; end
class PrimaryKeySort < ::Protobuf::Message; end
class Sorter < ::Protobuf::Message; end
class Sort < ::Protobuf::Message; end
class SearchQuery < ::Protobuf::Message; end
class ColumnsToGet < ::Protobuf::Message; end
class SearchRequest < ::Protobuf::Message; end
class SearchResponse < ::Protobuf::Message; end
class SingleWordAnalyzerParameter < ::Protobuf::Message; end
class SplitAnalyzerParameter < ::Protobuf::Message; end
class FuzzyAnalyzerParameter < ::Protobuf::Message; end
class FieldSchema < ::Protobuf::Message; end
class IndexSchema < ::Protobuf::Message; end
class IndexSetting < ::Protobuf::Message; end
class CreateSearchIndexRequest < ::Protobuf::Message; end
class CreateSearchIndexResponse < ::Protobuf::Message; end
class IndexInfo < ::Protobuf::Message; end
class ListSearchIndexRequest < ::Protobuf::Message; end
class ListSearchIndexResponse < ::Protobuf::Message; end
class DeleteSearchIndexRequest < ::Protobuf::Message; end
class DeleteSearchIndexResponse < ::Protobuf::Message; end
class SyncStat < ::Protobuf::Message; end
class DescribeSearchIndexRequest < ::Protobuf::Message; end
class DescribeSearchIndexResponse < ::Protobuf::Message; end
class Aggregation < ::Protobuf::Message; end
class Aggregations < ::Protobuf::Message; end
class GroupBy < ::Protobuf::Message; end
class GroupBys < ::Protobuf::Message; end
class AvgAggregation < ::Protobuf::Message; end
class MaxAggregation < ::Protobuf::Message; end
class MinAggregation < ::Protobuf::Message; end
class SumAggregation < ::Protobuf::Message; end
class CountAggregation < ::Protobuf::Message; end
class DistinctCountAggregation < ::Protobuf::Message; end
class GroupKeySort < ::Protobuf::Message; end
class RowCountSort < ::Protobuf::Message; end
class SubAggSort < ::Protobuf::Message; end
class GroupBySorter < ::Protobuf::Message; end
class GroupBySort < ::Protobuf::Message; end
class GroupByField < ::Protobuf::Message; end
class NRange < ::Protobuf::Message; end
class GroupByRange < ::Protobuf::Message; end
class GroupByFilter < ::Protobuf::Message; end
class GeoPoint < ::Protobuf::Message; end
class GroupByGeoDistance < ::Protobuf::Message; end
class AvgAggregationResult < ::Protobuf::Message; end
class DistinctCountAggregationResult < ::Protobuf::Message; end
class MaxAggregationResult < ::Protobuf::Message; end
class MinAggregationResult < ::Protobuf::Message; end
class SumAggregationResult < ::Protobuf::Message; end
class CountAggregationResult < ::Protobuf::Message; end
class AggregationResult < ::Protobuf::Message; end
class AggregationsResult < ::Protobuf::Message; end
class GroupByFieldResultItem < ::Protobuf::Message; end
class GroupByFieldResult < ::Protobuf::Message; end
class GroupByRangeResultItem < ::Protobuf::Message; end
class GroupByRangeResult < ::Protobuf::Message; end
class GroupByGeoDistanceResultItem < ::Protobuf::Message; end
class GroupByGeoDistanceResult < ::Protobuf::Message; end
class GroupByFilterResultItem < ::Protobuf::Message; end
class GroupByFilterResult < ::Protobuf::Message; end
class GroupByResult < ::Protobuf::Message; end
class GroupBysResult < ::Protobuf::Message; end


##
# Message Fields
#
class MatchQuery
  optional :string, :field_name, 1
  optional :string, :text, 2
  optional :int32, :minimum_should_match, 3
  optional ::QueryOperator, :operator, 4
end

class MatchPhraseQuery
  optional :string, :field_name, 1
  optional :string, :text, 2
end

class TermQuery
  optional :string, :field_name, 1
  optional :bytes, :term, 2
end

class TermsQuery
  optional :string, :field_name, 1
  repeated :bytes, :terms, 2
end

class RangeQuery
  optional :string, :field_name, 1
  optional :bytes, :range_from, 2
  optional :bytes, :range_to, 3
  optional :bool, :include_lower, 4
  optional :bool, :include_upper, 5
end

class PrefixQuery
  optional :string, :field_name, 1
  optional :string, :prefix, 2
end

class WildcardQuery
  optional :string, :field_name, 1
  optional :string, :value, 2
end

class BoolQuery
  repeated ::Query, :must_queries, 1
  repeated ::Query, :must_not_queries, 2
  repeated ::Query, :filter_queries, 3
  repeated ::Query, :should_queries, 4
  optional :int32, :minimum_should_match, 5
end

class ConstScoreQuery
  optional ::Query, :filter, 1
end

class FieldValueFactor
  optional :string, :field_name, 1
end

class FunctionScoreQuery
  optional ::Query, :query, 1
  optional ::FieldValueFactor, :field_value_factor, 2
end

class NestedQuery
  optional :string, :path, 1
  optional ::Query, :query, 2
  optional ::ScoreMode, :score_mode, 3
end

class GeoBoundingBoxQuery
  optional :string, :field_name, 1
  optional :string, :top_left, 2
  optional :string, :bottom_right, 3
end

class GeoDistanceQuery
  optional :string, :field_name, 1
  optional :string, :center_point, 2
  optional :double, :distance, 3
end

class GeoPolygonQuery
  optional :string, :field_name, 1
  repeated :string, :points, 2
end

class ExistsQuery
  optional :string, :field_name, 1
end

class Query
  optional ::QueryType, :type, 1
  optional :bytes, :query, 2
end

class Collapse
  optional :string, :field_name, 1
end

class NestedFilter
  optional :string, :path, 1
  optional ::Query, :filter, 2
end

class ScoreSort
  optional ::SortOrder, :order, 1
end

class FieldSort
  optional :string, :field_name, 1
  optional ::SortOrder, :order, 2
  optional ::SortMode, :mode, 3
  optional ::NestedFilter, :nested_filter, 4
end

class GeoDistanceSort
  optional :string, :field_name, 1
  repeated :string, :points, 2
  optional ::SortOrder, :order, 3
  optional ::SortMode, :mode, 4
  optional ::GeoDistanceType, :distance_type, 5
  optional ::NestedFilter, :nested_filter, 6
end

class PrimaryKeySort
  optional ::SortOrder, :order, 1
end

class Sorter
  optional ::FieldSort, :field_sort, 1
  optional ::GeoDistanceSort, :geo_distance_sort, 2
  optional ::ScoreSort, :score_sort, 3
  optional ::PrimaryKeySort, :pk_sort, 4
end

class Sort
  repeated ::Sorter, :sorter, 1
end

class SearchQuery
  optional :int32, :offset, 1
  optional :int32, :limit, 2
  optional ::Query, :query, 4
  optional ::Collapse, :collapse, 5
  optional ::Sort, :sort, 6
  optional :bool, :getTotalCount, 8
  optional :bytes, :token, 9
  optional ::Aggregations, :aggs, 10
  optional ::GroupBys, :group_bys, 11
end

class ColumnsToGet
  optional ::ColumnReturnType, :return_type, 1
  repeated :string, :column_names, 2
end

class SearchRequest
  optional :string, :table_name, 1
  optional :string, :index_name, 2
  optional ::ColumnsToGet, :columns_to_get, 3
  optional :bytes, :search_query, 4
  repeated :bytes, :routing_values, 5
end

class SearchResponse
  optional :int64, :total_hits, 1
  repeated :bytes, :rows, 2
  optional :bool, :is_all_succeeded, 3
  optional :bytes, :next_token, 6
  optional :bytes, :aggs, 7
  optional :bytes, :group_bys, 8
end

class SingleWordAnalyzerParameter
  optional :bool, :case_sensitive, 1
  optional :bool, :delimit_word, 2
end

class SplitAnalyzerParameter
  optional :string, :delimiter, 1
end

class FuzzyAnalyzerParameter
  optional :int32, :min_chars, 1
  optional :int32, :max_chars, 2
end

class FieldSchema
  optional :string, :field_name, 1
  optional ::FieldType, :field_type, 2
  optional ::IndexOptions, :index_options, 3
  optional :string, :analyzer, 4
  optional :bool, :index, 5
  optional :bool, :sort_and_agg, 6
  optional :bool, :store, 7
  repeated ::FieldSchema, :field_schemas, 8
  optional :bool, :is_array, 9
  optional :bytes, :analyzer_parameter, 10
end

class IndexSchema
  repeated ::FieldSchema, :field_schemas, 1
  optional ::IndexSetting, :index_setting, 2
  optional ::Sort, :index_sort, 3
end

class IndexSetting
  optional :int32, :number_of_shards, 1
  repeated :string, :routing_fields, 2
  optional :int32, :routing_partition_size, 3
end

class CreateSearchIndexRequest
  required :string, :table_name, 1
  required :string, :index_name, 2
  optional ::IndexSchema, :schema, 3
end

class IndexInfo
  optional :string, :table_name, 1
  optional :string, :index_name, 2
end

class ListSearchIndexRequest
  optional :string, :table_name, 1
end

class ListSearchIndexResponse
  repeated ::IndexInfo, :indices, 1
end

class DeleteSearchIndexRequest
  optional :string, :table_name, 1
  optional :string, :index_name, 2
end

class SyncStat
  optional ::SyncPhase, :sync_phase, 1
  optional :int64, :current_sync_timestamp, 2
end

class DescribeSearchIndexRequest
  optional :string, :table_name, 1
  optional :string, :index_name, 2
end

class DescribeSearchIndexResponse
  optional ::IndexSchema, :schema, 1
  optional ::SyncStat, :sync_stat, 2
end

class Aggregation
  optional :string, :name, 1
  optional ::AggregationType, :type, 2
  optional :bytes, :body, 3
end

class Aggregations
  repeated ::Aggregation, :aggs, 1
end

class GroupBy
  optional :string, :name, 1
  optional ::GroupByType, :type, 2
  optional :bytes, :body, 3
end

class GroupBys
  repeated ::GroupBy, :group_bys, 1
end

class AvgAggregation
  optional :string, :field_name, 1
  optional :bytes, :missing, 2
end

class MaxAggregation
  optional :string, :field_name, 1
  optional :bytes, :missing, 2
end

class MinAggregation
  optional :string, :field_name, 1
  optional :bytes, :missing, 2
end

class SumAggregation
  optional :string, :field_name, 1
  optional :bytes, :missing, 2
end

class CountAggregation
  optional :string, :field_name, 1
end

class DistinctCountAggregation
  optional :string, :field_name, 1
  optional :bytes, :missing, 2
end

class GroupKeySort
  optional ::SortOrder, :order, 1
end

class RowCountSort
  optional ::SortOrder, :order, 1
end

class SubAggSort
  optional :string, :sub_agg_name, 1
  optional ::SortOrder, :order, 2
end

class GroupBySorter
  optional ::GroupKeySort, :group_key_sort, 1
  optional ::RowCountSort, :row_count_sort, 2
  optional ::SubAggSort, :sub_agg_sort, 3
end

class GroupBySort
  repeated ::GroupBySorter, :sorters, 1
end

class GroupByField
  optional :string, :field_name, 1
  optional :int32, :size, 2
  optional ::GroupBySort, :sort, 3
  optional ::Aggregations, :sub_aggs, 4
  optional ::GroupBys, :sub_group_bys, 5
end

class NRange
  optional :double, :from, 1
  optional :double, :to, 2
end

class GroupByRange
  optional :string, :field_name, 1
  repeated ::NRange, :ranges, 2
  optional ::Aggregations, :sub_aggs, 3
  optional ::GroupBys, :sub_group_bys, 4
end

class GroupByFilter
  repeated ::Query, :filters, 1
  optional ::Aggregations, :sub_aggs, 2
  optional ::GroupBys, :sub_group_bys, 3
end

class GeoPoint
  optional :double, :lat, 1
  optional :double, :lon, 2
end

class GroupByGeoDistance
  optional :string, :field_name, 1
  optional ::GeoPoint, :origin, 2
  repeated ::NRange, :ranges, 3
  optional ::Aggregations, :sub_aggs, 4
  optional ::GroupBys, :sub_group_bys, 5
end

class AvgAggregationResult
  optional :double, :value, 1
end

class DistinctCountAggregationResult
  optional :int64, :value, 1
end

class MaxAggregationResult
  optional :double, :value, 1
end

class MinAggregationResult
  optional :double, :value, 1
end

class SumAggregationResult
  optional :double, :value, 1
end

class CountAggregationResult
  optional :int64, :value, 1
end

class AggregationResult
  optional :string, :name, 1
  optional ::AggregationType, :type, 2
  optional :bytes, :agg_result, 3
end

class AggregationsResult
  repeated ::AggregationResult, :agg_results, 1
end

class GroupByFieldResultItem
  optional :string, :key, 1
  optional :int64, :row_count, 2
  optional ::AggregationsResult, :sub_aggs_result, 3
  optional ::GroupBysResult, :sub_group_bys_result, 4
end

class GroupByFieldResult
  repeated ::GroupByFieldResultItem, :group_by_field_result_items, 1
end

class GroupByRangeResultItem
  optional :double, :from, 1
  optional :double, :to, 2
  optional :int64, :row_count, 3
  optional ::AggregationsResult, :sub_aggs_result, 4
  optional ::GroupBysResult, :sub_group_bys_result, 5
end

class GroupByRangeResult
  repeated ::GroupByRangeResultItem, :group_by_range_result_items, 1
end

class GroupByGeoDistanceResultItem
  optional :double, :from, 1
  optional :double, :to, 2
  optional :int64, :row_count, 3
  optional ::AggregationsResult, :sub_aggs_result, 4
  optional ::GroupBysResult, :sub_group_bys_result, 5
end

class GroupByGeoDistanceResult
  repeated ::GroupByGeoDistanceResultItem, :group_by_geo_distance_result_items, 1
end

class GroupByFilterResultItem
  optional :int64, :row_count, 1
  optional ::AggregationsResult, :sub_aggs_result, 2
  optional ::GroupBysResult, :sub_group_bys_result, 3
end

class GroupByFilterResult
  repeated ::GroupByFilterResultItem, :group_by_filter_result_items, 1
end

class GroupByResult
  optional :string, :name, 1
  optional ::GroupByType, :type, 2
  optional :bytes, :group_by_result, 3
end

class GroupBysResult
  repeated ::GroupByResult, :group_by_results, 1
end

