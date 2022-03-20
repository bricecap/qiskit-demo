# An Intor to Quantum Compuing with Qiskit

## About
This repository contains the code and notes for the Lunch and Learn session held for Capgemini DCX UK 2022-04-01.

The session covers getting started with [Qiskit](https://qiskit.org/) an Open Source Quantum Coputing SDK.

## How to run the example

In the root of this repository, run: 

```
$ docker built . -t qiskit-demo
$ docker run -ti --rm -p 8888:8888 qiskit-demo
```

Then navigate to http://localhost:8888/ in your browser.