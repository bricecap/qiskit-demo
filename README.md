# An Intro to Quantum Computing with Qiskit

## About
This repository contains the code and notes for the Lunch and Learn session held for Capgemini DCX UK 2022-04-01.

The session covers getting started with [Qiskit](https://qiskit.org/) an Open Source Quantum Computing SDK.

The [Qiskit textbook](https://qiskit.org/textbook/what-is-quantum.html) is approachable and a good resource to get started.

## How to run the example

In the root of this repository, run: 

```
$ docker built . -t qiskit-demo
$ docker run -ti --rm -p 8888:8888 qiskit-demo
```

Then navigate to http://localhost:8888/ in your browser.

## Talk notes 
I have included the rough outline of the presentation in the [Notes.md](./docs/Notes.md) file.