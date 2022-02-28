#!/bin/bash
useradd -m -d /home/matthias matthias
usermod -aG sudo matthias
usermod -aG docker matthias