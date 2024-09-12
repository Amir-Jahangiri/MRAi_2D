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
1. Install [Miniconda](https://docs.anaconda.com/miniconda/) by using Quick command line install instructions.
2. Download MRAi_2D pacckege from [`Code` then `Download Zip`](https://github.com/Amir-Jahangiri/MRAi_2D/archive/refs/heads/master.zip) and then unzipe the package.
3. Open Terminal in `MRAi_2D-master/Packages` folder.
4. Create a conda environment with: 
```python
conda create -n myenv python=3.11
```
5. Active `myenv` environment with:
```python
conda activate myenv
```
6. Install `MRAi_2D` and `Proc_2D` with:
```python
pip install MRAi_2D-0.1.0-py3-none-any.whl
```
```python
pip install Proc_2D-0.1.0-py3-none-any.whl
```
7. Install Jupyter with:
```python
conda install jupyter
```
8. Close Terminal.
---
## Uninstallation

Open a terminal in `base` conda environment and remove `myenv` with:
```python
conda remove --name myenv --all
```
---
## Usage

1. Open Terminal in `MRAi_2D-master` folder.
2. Active `myenv` environment with:
```python
conda activate myenv
```
3. Run Jupyter Notebook with:
```python
jupyter notebook
```
4. Run one of the Jupyter files (`*.ipynb`) in Jupyter Notebook and follow the instructions.