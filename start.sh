#!/bin/bash
set -e

cd ./functionary && python server_vllm.py --host 0.0.0.0 --model "musabgultekin/functionary-7b-v1"
