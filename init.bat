@echo off

if ["%~1"]==[""] (
    copy /-y resources\vagrant-docker.yaml vagrant-docker.yaml
)

copy /-y resources\aliases aliases

echo Vagrant Docker Initialized!