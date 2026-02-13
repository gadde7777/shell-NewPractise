#!/bin/bash
#### specia variables

echo " All Args passed tp script : $@"
echo "Number of Variables passed : $#"
echo "Script name : $0"
echo "Present directory : $PWD"
echo "Who is running script :$USER"
echo " Home Directory : $HOME"
echo "PID OF script :: $$"
sleep 100 &
echo " PID of the executed background process :$!"
echo "All args ppoassed tp script : $*"