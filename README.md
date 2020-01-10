# How Readable expirement webapp

This repository represents the ruby on rails webapp for the howreadable online code readability of the experiment.

A full write-up of the motivation, methodology and results of this experiment are available at [howreadable.com](https://howreadable.com)

A demo version of the full webapp is available on [heroku](http://howreadable-2.herokuapp.com/)

# Functionality

The webapp allowed users to anonymously participate in the experiment. After collecting basic demographic information, the user is presented with a series of code snippets. They are timed while they read the snippet and when ready asked to complete a multi choice question about the result of the code. The full procedure is explained [here](https://howreadable.com/experiment/methodology.html#procedure)

The webapp captures the time taken to read each snippet and the answer given and stores it in the db. Each snippet is one of a pair of snippets chosen at random, where the two snippets in the pair differ only in terms of the use of a specific code construct. The aim of the experiment is to assess the readability of the construct by analysing the average time taken to read the snippet and the percentage of correct answers. The full methodology is described [here](https://howreadable.com/experiment/methodology.html)

There is an admin system where the collected data can be viewed and analysed. The demo admin system is [here](http://howreadable-2.herokuapp.com/)

```
username: hrteam
password: ternary||if
```

The snippets themselves are stored in the /experiment directory, and are configured by the file `/experiment/experiment.yml`
