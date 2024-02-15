# Money illusion: a replication of the “money illusion” effect in a sample of Brazilian volunteers

This repo contains the code and data to produce 1) a paper which is a reproduction of [de Moraes Ferreira, Mariana and Yumi Tsushima Santiago, Milena and Sardinha Borborema, Rodrigo and Bastos, Rafael and Fatori, Daniel and Seda, Leonardo and Camargo Batistuzzo, Marcelo (2023) 's paper, "Replication of the “money illusion” effect in a Brazilian sample"](https://osf.io/preprints/psyarxiv/fh597) and 4) replications of the tables 1, 2, and figures 1, 2 of this paper. 

It is organised as follows:

inputs
- data_clean - contains data clean functions.
- moneydataABCDEF.xlsx - original datasat.
- moneydataABCDEF_cleaned.xlsx - cleaned original dataset.
- literature
 - Preprint_Replication of the “money illusion” effect in a Brazilian sample (1) - the original paper

outputs
- term_paper2.pdf - the reproduction paper
- term_paper2.Rmd - R markdown file to produce term_paper2.pdf
- ref.bib - reference list for term_paper2.pdf

paper_2_files
- figure-html - replicated figures.
  - p1table-1.png
  - p2fig-1.png

- libs - some other files used in term_paper2.pdf.

scripts
- LLM - chat with ChatGPT
- simulation_draft.R - simulated data
- Sketch.pdf - sketchs based on simulation_draft.R
- Test.R - test the correction of simulation_draft.R


## Reproducibility

Download all files and open the R project sta302-term-paper2 in R Studio.

To reproduce the paper, knit to pdf term_paper2.Rmd found at outputs/term_paper2.Rmd.

To replicate a figure, run the corresponding R file stored in paper_2_files/figure-html. The output will be saved as an image.

The replication on the Social Science Reproduction Platform can be found at https://doi.org/10.17605/OSF.IO/YRQ75.

