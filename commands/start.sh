#!/bin/bash
cd ../expl
pwd
echo COMPILING INIT...
./expl expl_progs/init.expl
echo COMPILING FORK...
./expl expl_progs/fork3.expl
echo COMPILING PID...
./expl expl_progs/pid.expl


cd ../spl
echo OS_STARTUP COMPILING ...
./spl spl_progs/os_startup.spl

echo TIMER INTERRUPT COMPILING ...
./spl spl_progs/timer_interrupt.spl
echo DISK INTERRUPT COMPILING ...
./spl spl_progs/diskInterruptHandler.spl
echo INT9 COMPILING ...
./spl spl_progs/int9.spl
echo INT10 COMPILING ...
./spl spl_progs/int10.spl
echo INT11 COMPILING ...
./spl spl_progs/int11.spl
echo INT14 COMPILING ...
./spl spl_progs/int14.spl
echo INT15 COMPILING ...
./spl spl_progs/int15.spl
echo INT6 COMPILING ...
./spl spl_progs/int6.spl
echo INT7 COMPILING ...
./spl spl_progs/int7.spl
echo INT6 COMPILING ...
./spl spl_progs/int6.spl
echo INT8 COMPILING ...
./spl spl_progs/int8.spl

echo MOD7 BOOTMODULE COMPILING ...
./spl spl_progs/bootmodule.spl
echo MOD0 COMPILING ...
./spl spl_progs/mod0.spl
echo MOD1 COMPILING ...
./spl spl_progs/mod1.spl
echo MOD2 COMPILING ...
./spl spl_progs/mod2.spl
echo MOD4 COMPILING ...
./spl spl_progs/mod4.spl
echo MOD5 COMPILING ...
./spl spl_progs/mod5.spl

echo CONSOLE_INTERRUPT_HANDLER COMPILING...
./spl spl_progs/consoleInterruptHandler.spl
echo EXCEPTION_HANDLER COMPILING...
./spl spl_progs/exception.spl

cd ../xfs-interface
./xfs-interface fdisk
./xfs-interface run ../commands/current.txt
