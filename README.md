## Preparation of the [reveal.js-powered](https://github.com/hakimel/reveal.js/) HTML5 presentations

It supports the use of following plugins on the top of [CSC-customised slide-template](https://github.com/csc-training/slide-template.git):

* [reveal.js-menu](https://github.com/denehyg/reveal.js-menu) Adds a menu to
  test themes, transitions and jump to slides
* [Chalkbord](https://github.com/rajgoel/reveal.js-plugins/tree/master/chalkboard)
  Write on your slides or on a chalkboard


## Create HTML file in cPouta using singularity

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


## Create HTML file in Puhti using singularity

Just modify your markdown file name and add project information in sbatch script and then run the following command:

```
sbatch slide_prep_puhti.sh

```

## Finally copy repo directory (along with newly generated HTML) to your local computer and open your presentation:

```
open demo.html (Mac)
firefox demo.html (linux)

```
