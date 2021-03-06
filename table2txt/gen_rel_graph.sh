if [ "$#" -ne 3 ]; then
    echo "Usage: ./gen_rel_graph.sh <dataset> <table_file> <experiment>"
    exit
fi
dataset=$1
table_file=$2
exptr=$3
stg=RelationGraph
python ./table2graph.py \
--dataset ${dataset} \
--table_file ${table_file} \
--experiment ${exptr} \
--strategy ${stg}
