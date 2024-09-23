# MRAi_2D: Magnetic Resonance processing with Artificial intelligence for 2D spectra

## Authors
* [Amir Jahangiri](amir.jahangiri@gu.se)
* [Vladislav Orekhov](vladislav.orekhov@nmr.gu.se)

## License
This package is licensed under the MIT License. See the LICENSE file for details.

## Citation
Please cite our articles if you use this application in your research or publication. 

* [NMR spectrum reconstruction as a pattern recognition problem](https://doi.org/10.1016/j.jmr.2022.107342)

---
## Installation
1. Install [Miniconda](https://docs.anaconda.com/miniconda/) by following the Quick Command Line Install instructions.
2. Download MRAi_2D pacckege from [`Code`](https://github.com/Amir-Jahangiri/MRAi_2D/archive/refs/heads/master.zip).
3. Unzip the `MRAi_2D-master.zip` file.
4. Open Terminal in `MRAi_2D-master/Packages` folder.
5. Create a conda environment with: 
```python
conda create -n mrai python=3.11
```
* Type `yes` if prompted.
* This may take a few minutes.
  
6. Active `mrai` environment with:
```python
conda activate mrai
```
7. Install `MRAi_2D` and `Proc_2D` with:
```python
pip install MRAi_2D-0.1.0-py3-none-any.whl
```
```python
pip install Proc_2D-0.1.0-py3-none-any.whl
```
* Installation may take a few minutes.
  
8. Install Jupyter with:
```python
conda install jupyter
```
* Type `yes` if prompted.
* This may take a few minutes.
  
9. Once completed, close the terminal.
---
## Usage

1. Open Terminal in `MRAi_2D-master` folder.
2. Active `mrai` environment with:
```python
conda activate mrai
```
3. Run Jupyter Notebook with:
```python
jupyter notebook
```
4. Run one of the Jupyter files (`*.ipynb`) in Jupyter Notebook and follow the instructions.
---
## Uninstallation

If it is needed to uninstall the entire environment, open a terminal in the `base` Conda environment and remove the `mrai` environment with:
```python
conda remove --name mrai --all
```