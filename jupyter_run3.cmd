@ECHO off
SETLOCAL ENABLEEXTENSIONS

:: BASIC SETTINGS
:: ==============
:: Setting the name of the script
SET ME=%~n0
:: Setting the name of the directory
SET PARENT=%~p0
SET PDRIVE=%~d0

:: set python / conda environment
SET conda_environment=logo

IF "%COMPUTERNAME%"=="LAPTOP2017"      GOTO :Personal_laptop

:Default
ECHO ERROR: Unknown settings for COMPUTERNAME: %COMPUTERNAME%
GOTO :DONE

:Personal_laptop
IF "%USERNAME%"=="pierre" (
   echo command: jupyter notebook for %USERNAME% on %COMPUTERNAME%
   call C:\myPrograms\anaconda3\Scripts\activate.bat
   call conda activate %conda_environment%
   call jupyter-notebook
   GOTO :DONE
)
IF "%USERNAME%"=="pierr" (
   echo command: jupyter notebook for %USERNAME% on %COMPUTERNAME%
   call C:\myPrograms\anaconda3\Scripts\activate.bat
   call conda activate %conda_environment%
   call jupyter-notebook
   GOTO :DONE
)
IF "%USERNAME%"=="pierr_8jj0nf8" (
   echo command: jupyter notebook for %USERNAME% on %COMPUTERNAME%
   call C:\myPrograms\anaconda3\Scripts\activate.bat
   call conda activate %conda_environment%
   call jupyter-notebook
   GOTO :DONE
)
ECHO Not a valid user (%USERNAME%) on %COMPUTERNAME%
GOTO :DONE

:DONE
Pause