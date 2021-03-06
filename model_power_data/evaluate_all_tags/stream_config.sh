#Environment variables used for running the hadoop streaming command
mapper=/bin/cat
reducer="$SMART_GRID_SRC/model_power_data/evaluate_all_tags/reduce.py"
map_tasks=50
reduce_tasks=50
input=/user/melkherj/clean_preprocessed_power_data
output=/user/melkherj/all_space_err.txt
inputformat=TextInputFormat
# This is how you handle keying on values
partitioner=org.apache.hadoop.mapred.lib.KeyFieldBasedPartitioner
## How many fields total
map_out_fields=3
## Tell hadoop how it knows how to parse map output so it can key on it
map_out_field_separator=^
## You can key on your map fields separately
map_out_key_separator=^
## Numer of map output keys for grouping on, the rest are sorted
map_out_keys=1
