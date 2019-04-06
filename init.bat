@echo off

if ["%~1"]==[""] (
    copy /-y resources\vagrant-docker.yaml vagrant-docker.yaml
)

echo Vagrant Docker Initialized!