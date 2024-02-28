#!/bin/bash

SOLVER_PATH=~/Downloads/fast-downward-23.06/fast-downward.py

$SOLVER_PATH pddl/domain.pddl pddl/$1.pddl --search "astar(ipdb())"
