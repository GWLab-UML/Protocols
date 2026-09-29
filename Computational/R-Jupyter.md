# R in Jupyter Notebooks
>*last updated: JGM 9/28/2026*

This protocol allows you to run R in jupyter notebooks, which is better than using Rmd or R scripts because you can see code outputs on GitHub.

## For Macs:
### via [conda](https://anaconda.org/channels/anaconda/packages/conda/overview)
Recommended for Unity
1. If on Unity, run in terminal: 
```
module load conda/latest
```
otherwise, ensure conda is installed by running `conda --version`

2. Create a new environment:
```
conda create -n r_env -c conda-forge r-base r-irkernel jupyter
conda activate r_env
```
3. Open a jupyter notebook and select the irkernel in the upper righthand corner
	- but if the kernel doesn't show up in the jupyter notebook, just run this in R:
	```
	install.packages("IRkernel")
	```

 To install new packages, use `BiocManager::install('package')`. See [Unity documentation](https://unityhpc.org/documentation/tools/r/) for more tips and troubleshooting suggestions for using R.

### via pip:
1. Download [jupyter](https://jupyter.org/) and [python](https://www.python.org/downloads/?utm_source=chatgpt.com) if not already downloaded
2. Open terminal and install jupyter: 
```
pip3 install jupyter notebook jupyter-client
```
2. Then, type `R` to code in R
3. Install the IRkernel: 
```
install.packages("IRkernel")
```
and enter `1` to select the 0-Cloud CRAN mirror
4. Register the kernel: 
```
IRkernel::installspec()
```

You can run `jupyter notebook` in bash (run `q()` then `n` to discard workspace to return to bash) to open jupyter notebook on your browser, or open the locally downloaded app. Once you open a notebook, select the R kernel in the upper righthand corner.
