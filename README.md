## A reipe for the preparation of [reveal.js-powered](https://github.com/hakimel/reveal.js/) HTML5 presentation

It supports the use of following plugins on the top of [CSC-customised slide-template](https://github.com/csc-training/slide-template.git):

* [reveal.js-menu](https://github.com/denehyg/reveal.js-menu) Adds a menu to
  test themes, transitions and jump to slides
* [Chalkbord](https://github.com/rajgoel/reveal.js-plugins/tree/master/chalkboard)
  Write on your slides or on a chalkboard


### Create HTML file in cPouta using singularity

1. clone the current repo

```
git clone https://github.com/yetulaxman/recipe-slideprep.git
```
2. Build (or download) singularity image 
```
sudo singularity build slidefactory.simg slidefactory.def

              or 
  
wget https://a3s.fi/general/slidefactory.simg

```
3. Creat html file from the markdown file

```
singularity run slidefactory.simg  demo.md

```


### Create HTML file in Puhti using singularity

Clone current repo 


```
git clone https://github.com/yetulaxman/recipe-slideprep.git
cd recipe-slideprep

```

Edit slurm batch script (slide_prep_puhti.sh) with your markdown file name (default: demo.md) and project information  and then run the script as below:

```
sbatch slide_prep_puhti.sh

```

### Finally copy repo directory (along with newly generated HTML) to your local computer and open your presentation:

```
open demo.html (Mac)
firefox demo.html (linux)

```
