:: set python / conda environment
SET conda_environment=logo

CALL C:\myPrograms\anaconda3\Scripts\activate.bat
::CALL conda env create -f environment_%conda_environment%_no_build.yml
CALL conda env create -f environment_%conda_environment%.yml
CALL conda activate %conda_environment%
PAUSE

