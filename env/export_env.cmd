:: set python / conda environment
SET conda_environment=logo

CALL C:\myPrograms\anaconda3\Scripts\activate.bat
CALL conda activate %conda_environment%
CALL conda env export > .\environment_%conda_environment%.yml
CALL conda env export --no-builds > .\environment_%conda_environment%_no_build.yml 
PAUSE
