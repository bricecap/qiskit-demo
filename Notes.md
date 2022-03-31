
## What are quantum computers?

In some sense all computers are "quantum" computers. Quantum just means small. Quantum physics is just the rules describing how very small things interact. My hand not going through a table is a quantum effect and requires quantum physics to describe adequately.

Modern integrated circuits almost all rely on quantum effects to function, and the semiconductors are quantum devices. Typically, this is abstracted away to digital logic (T/F)

"Quantum Computers" are those that rely on quantum effect for the computation itself, and not as just an implementation detail for binary logic, where part of the computed state is affected by quantum physical effects.

This is different to quantum cryptography, which is another topic altogether (maybe another day, eh?). 

## What do we mean by "quantum effect"?

There are many rules that govern small systems. The most interesting property for us to consider is entanglement.

That's when two states relate to each other according to some function.

Consider two numbers, A and B. I can say that A is 3B+4. 

Whenever I know what B is, I also know A, and vice versa.

Doesn't seem too weird so far.

Another is a bag in which there is a blue ball and a red ball. The "state" of any given ball is the inverse of the other. 

The problem comes up because very small systems can't be measured reliably. When measuring something that's "quantum" the measurement itself will disturb the system sufficiently that it will be irrevocably changed. 

That's like reading a number on a calculator and changing the digits wherever your eyeballs focus, or figuring out where a car is parked by firing a cannonball. 

So what we get are probabilities. For example, A above could be 16, or 19, so B could be 4 or 5. and we'll get either value randomly.

Except it's not quite random. When we measure A, we automatically change the value of B to match the measurement we made. You might think that's not so weird. If we have a blue ball and a red ball in a bag and I pick out the first one to be blue, we can infer that the second person will pick red. That would be the "Local variable hypothesis".

But remember, quantum systems aren't categorical, but probabilistic. And if the state of the two balls relate to each other in a "quantum" way, then if I pick our a ball from our quantum bag, there's 50% chance of blue, and 50% chance of red on the first draw NO MATTER WHICH BALL I PICK! That's what's when we can say that the two balls are _entangled_. Their colours aren't determined in advance when we pick them out of the bag, but _when we measure them_. Until then, the balls are both red and blue at the same time, and have the potential to be either. I can rig the system so that one player only gets red balls or balls that are in this weird state. That means there's a link between the state of the balls. Einstein called it "Spooky action at a distance". The idea that quantum systems aren't like "local variable" systems is called Bell's theorem, and has been experimentally determined (Bell inequality experiments).

And no, we don't know how it works, we just know that it does. We don't understand the rules of physics, we just know what they are to some level of details.

## OK, so how does that help us compute stuff and solve problems?

You can think of quantum computations as making a system that has the potential to be every possible solution to a problem, and measuring it in such a way as to force one of the players to end up with the solution you want according to some metric.

Let's take the graph traversal / shortest path problem. 

Now imagine a bag where one ball represents every possible complete path between your start and destination in a graph. Firstly, you'd need a big bag. Secondly, it would take a while to find the ball with the shortest path. 

Quantum computers solve this problem by spookily entangling all the path together, so that we can perform a series of measurement so that eventually next ball we read will have the solution we're looking for 

> Caveat: With some probability. These are quantum systems after all. Which means that Quantum computers are typically _non-deterministic_ and give probability distributions as results, so we typically verify that the solution is optimal using classical computers afterwards.

That's why they're interesting. They allow us to solve problems on Quantum computers that aren't practical to solve on classical computers, which have to sift through all the balls individually.

## Some nomenclature

When classical computers have bits, which can be either 1 or 0, quantum computers have qBits, which can be either 1, 0 or a mix of both with some probability. That's what a qBit is.

## Types of quantum computers

There are two major types of quantum computers.

1) Adiabatic quantum computers
    Which work by encoding a computational problem so that its solution is the lowest energy state of a system. (Think of this as entropy or heat), then an equivalent system is brought to its lowest energy state and slowly transformed into our desired computational problem.

2) Quantum circuit computers
    Define sequences of actions on a system of qBits, much like assembly instructions specifies operation on memory registers. That's what I'll be demoing today.

There are other emerging models, but I'm less familiar with these. Quantum circuit model is likely winner due to composabiliy of algorithms and practical mapping to current computation models.

## Why does it matter?

Quantum computers can solve certain classes of problems faster than traditional computers. Many orders of magnitude faster. 

Not all problems, just some. Usually involving computing solutions over problems which have a high number of correlated states.

One obvious set of problems are simulating other quantum systems, such as chemistry and physics simulation. 

A another important problem is prime factorisation. That's answering questions such as "What are the prime factors of 15?" which would be 3 and 5. 

## Demo: Shor's Algorithm with Qiskit

## Maybe Demo: Running quantum programs in the cloud

## A digression: Post-Quantum Cryptography
So, ok, you can solve certain problems much faster, great. So what? 

Why is prime factorisation important anyway?

Turns out that most of our current public key cryptography is based on fundamental algorithmic problems that Shor's algorithm is really good at solving:

1. The integer factorization problem.
2. The discrete logarithm problem.
3. The elliptic-curve discrete logarithm problem.

Public key cryptography is at the heart of most encryption and authentication these days and underlies most of our modern internet infrastructure. Having a better tool to bring to bear on these problems would disrupt both secrecy but also identity.

That's why there's a significant effort at the moment to research and develop _Post-Quantum Cryptography_ which doesn't rely on problem we know quantum computers are good at. 

It's a very active area of study and there is currently a NIST competition (this is how AES cipher came to be), currently in undergoing round 3 of the competition.

(Aside: Email threads between competing cryptographers are _savage_ and great to read even if yu barely understand the crypto.)

https://csrc.nist.gov/Projects/post-quantum-cryptography

## The impact of quantum computing

1. Order of magnitude speed improvements in simulating real quantum systems vs classical computers, with significant impact on chemistry and molecular biology. Enabling technology for computational biology and synthetic biology.
2. Deprecation of current public key encryption standards and wide scale migrations at all layers of the ISO stack to new standards in next 10-15 years.
3. Likely transformative application in simulating certain types of complex systems.
4. Likewise transformative application to machine learning efficiency by dealing with large number of superimposed states. 
4. Provably equivalent computing power (Turing completeness) means that this opens up new avenues of exploration for chip design that may help us with transistor size limits. Impact of this is uncertain.

## Wrap up and key takeaways

- Quantum computers solve certain problems much faster 
    - This is only true for _some_ problems.
    - Expected impact in computational and synthetic biology significant.
    - Impact in search and optimisation problems likely transformative.
    - Most direct and predictable impact in public key cryptography 
- Quantum computing is NOT quantum cryptography, that's something else.
- Impact on public key cryptography
    - Public key cryptography isn't broken _yet_ for the average person but the clock is counting down.
    - likelihood that QCHQ, NSA or Chinese Ministry of State Security have ways of breaking public key crypto is non-negligible based on previous experience of public vs classified progress of cryptography. Should now be included in threat assessments.
- Barriers to entry
    - Low from a tool and resources point of view. IBM, GCP, Azure and AWS have commercial services in production(!) There are multiple competing open source Quantum Computing libraries implemented.
    - Significant in relation to skills. Comparable to expertise needed to design digital logic from scratch for an application.
- Evolution of algorithms already advanced.
- Evolution of capabilities likely to be extremely fast. 
- Evolution of tooling likely to be even faster.
- Trajectory will be significantly accelerated in comparison of computing technologies because of the wide spread availability of computing itself.
- Pay attention to the NIST competition and Post-Quantum encryption, it's likely we'll engage in significant business in the next 10-15 years migrating to new encryption and authentication standards. Scale will be equivalent to Y2K. Build new authentication and encryption systems with a deprecation and repudiation path.
- Huge business opportunity in developing expertise. See Capgemini's Q Lab. Quantum computing is comparable to computing in the late 40s and early 50s. 

## Thank you and Q&A





