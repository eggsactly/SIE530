# Welcome
These course notes summarize the content in SIE 530 for the University of Arizona's Fall 2017 semester. This GitHub repository is here to allow all members of the class to contribute to the notes. You are encouraged to fork this repository and send pull requests when you add new content. 

# Workflow
For Windows users to contribute to these notes you will need two pieces of software:
* [GitHub Desktop](https://desktop.github.com/)
* [TeX Live](http://www.tug.org/texlive/)

I use Linux and I have access to these tools with the terminal. A Makefile is included in this project to for easy conversion from .tex to .pdf by running `make`. 

For Debian based distros you can run these commands to get your work flow up and make and view the notes

`sudo apt-get install texlive-full make git`

`git pull git@github.com:eggsactly/SIE530.git`

`cd SIE530`

`make`

`evince General-Notes.pdf`

Mac OS should be similar, you can use an application like Macports to download git, LaTeX make through your terminal.
