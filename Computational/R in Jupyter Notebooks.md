# R in Jupyter Notebooks
This protocol allows you to run R in jupyter notebooks, which is better than using Rmd or R scripts because you can see code outputs on GitHub.

## For Macs:
### Local Use:
(without Anaconda)
1. Download [jupyter](https://jupyter.org/) and [python](https://www.python.org/downloads/?utm_source=chatgpt.com)
2. Open terminal and install jupyter: 
```
pip3 install jupyter notebook jupyter-client
```
1. Then, type `R` to code in R
2. Install the IRkernel: 
```
install.packages("IRkernel")
```
and enter `1` to select the 0-Cloud CRAN mirror
1. Register the kernel: 
```
IRkernel::installspec()
```

You can run `jupyter notebook` in bash to open jupyter notebook on your browser, or open the locally downloaded app. Once you open a notebook, select the R kernel in the upper righthand corner.

### On Unity:
(with Anaconda)
1. Run 
```
module load conda/latest` in terminal
```
1. Create a new environment:
```
conda create -n r_env -c conda-forge r-base r-irkernel jupyter
conda activate r_env
```
3. Open a jupyter notebook and select the irkernel in the upper righthand corner
4. but if the kernel doesn't show up in the jupyter notebook, just run ```
```
install.packages("IRkernel")` in R
```
