#!/bin/bash

# Navigate to the location of the class file
cd ../classes

# Run the program with the necessary jar files
# Parameter 1: name of the program to run
# Parameter 2: name of the bayes file to interpret
# Parameter 3: evidence fragment
# Parameter 4: evidence fragment
# java -cp .:../lib/couchbase-client-1.3.2.jar:../lib/spymemcached-2.10.5.jar:../lib/weka.jar:../lib/gson-2.2.4.jar:../lib/httpcore-4.3.jar:../lib/httpcore-nio-4.3.jar:../lib/jettison-1.1.jar:../lib/commons-codec-1.5.jar:../lib/netty-3.5.5.Final.jar $1 $2 $3 $4

# Run the program with the necessary jar files
# Parameter 1: XML Bayes File Length
# Parameter 2: -> rootNode
# Parameter 3: -> evidenceFragment
# Parameter 4: -> evidenceValue
# ...
# Parameter n: -> evidenceFragment
# Parameter n+1: -> evidenceValue
#
# standard in -> XML Bayes File
java -cp .:../lib/weka.jar $@

# Test Run:
#   ./run_assessment.sh SimpleBayes 10000 category_systems_thinking category_end_state 0 category_process 0 < ../games/SC/bayes/sierra_madre.xml
# Output: 
#   [ 0.9523355576739752, 0.014299332697807435, 0.033365109628217364 ]

# Test Run:
#	./run_assessment.sh SimpleBayes 10000 problem_solving sunflower_close_to_home 0 collect_falling_sun 0 plant_sunflowers_before_wave 0 plant_layout 0 potato_mines_successful 0 new_plant_layout 0 new_plant_sequence 0 replaced_plants 0 < ../games/PVZ/bayes/pvz_1.xml
# Output:
#	[ 0.00862243978083787, 0.09312888583718708, 0.8982486743819751 ]