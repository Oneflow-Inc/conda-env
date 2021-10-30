rm -rf ~/miniconda3/ ~/.condarc ~/.conda ~/.continuum
sed '/>>> conda initialize >>>/,/<<< conda initialize <<</d' ~/.bashrc > bashrc 
cp bashrc ~/.bashrc
