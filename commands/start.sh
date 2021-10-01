#!/bin/bash
cd ../spl
echo OSSTARTUP COMPILING ...
./spl spl_progs/os_startup_stage14.spl
echo TIMER INTERRUPT COMPILING ...
./spl spl_progs/timer_interrupt_stage14.spl
echo INT10 COMPILING ...
./spl spl_progs/int10_stage14.spl
echo BOOTMODULE COMPILING ...
./spl spl_progs/bootmodule_stage14.spl
echo MOD5 COMPILING ...
./spl spl_progs/mod5.spl
cd ../xfs-interface
./xfs-interface fdisk
./xfs-interface run ../commands/stage_14.txt
