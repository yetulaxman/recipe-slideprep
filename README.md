## A recipe for the preparation of [reveal.js-powered](https://github.com/hakimel/reveal.js/) HTML5 presentation

This repository enables the use of  the following plugins on the top of [CSC-customised slide-template](https://github.com/csc-training/slide-template.git):

* [reveal.js-menu](https://github.com/denehyg/reveal.js-menu): Adds a menu to
  test themes, transitions and jump to slides
* [Chalkboard](https://github.com/rajgoel/reveal.js-plugins/tree/master/chalkboard):
  Write on your slides or on a chalkboard

One can generate HTML files from markdown files either in cPouta or Puhti or even on local desktop environment. Below is the description of minimal recipe on cPouta and Puhti environment.

### Create HTML file in cPouta environment using singularity

1. Clone the current github repository in cPouta VM

```
git clone https://github.com/yetulaxman/recipe-slideprep.git
```
2. Build (or download) singularity image 
```
sudo singularity build slidefactory.simg slidefactory.def
```
or download 

```
wget https://a3s.fi/general/slidefactory.simg
```
3. Creat html file from your markdown file (here, e.g., demo.md)

```
singularity run slidefactory.simg  demo.md
```


### Create HTML file in Puhti using singularity

Clone current github repository to Puhti (e.g., to some directory: /scratch/project_xxxx/) 


```
git clone https://github.com/yetulaxman/recipe-slideprep.git
cd recipe-slideprep
```

First, edit slurm batch script (slide_prep_puhti.sh) with your markdown file name (default: demo.md) and project information (an obligatory flag in slurm script)  and then run the script as below:

```
sbatch slide_prep_puhti.sh
```
Please note that the HTML file created will have the same name as your markdown file.

### Finally copy the directory of repository (along with newly generated HTML) to your local computer and then open your presentation:

```
scp -r username@puhti.csc.fi:/path/of/directory/  .
open demo.html (Mac)
firefox demo.html (linux)
```

### Print pdf-version of newly generated HTML file 

Once you open your HTML presentation in Chrome browser, add query strings, print-pdf and menu at the end of url as shown with demo.html example below:

```
path/of/file/demo.html?print-pdf&menu=false 
```

  and then save as PDF
