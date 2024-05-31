# Differential Evolution Algorithm
### Systems Engineering ⚙ - Unimontes 📚

This work consists of creating a differential evolution algorithm for the discipline of Evolutionary Computing.

## 🖥 Project
The developed differential evolution algorithm implements mutation and crossover operations to create new individuals and selects the best ones for the next generation. In this way, a scale factor 𝐹 is used that controls the amplification of the difference between two vectors, where each gene has a 50% probability of being replaced, except for gene j.

### Borders:
For the purpose of optimizing the algorithm, some measures were adopted, including the use of borders in order to ensure that new individuals do not exceed the limits of the search space.

### Mutation of individuals:
Another measure implemented was the use of a different mutation strategy, the notation DE/best/1/bin, in which the current best individual is used to guide the mutation.

### Scale Factor Variation:
The scale parameter 𝐹 of the difference vector does not need to vary, as the step sizes are self-adapted in the distribution of difference vectors, thus the scale factor can be kept fixed in the differential evolution algorithm without compromising its
performance significantly. However, a variation of the value of 𝐹 was implemented within a continuous range of values ​​(from 0.5 to 1, in this case) in order to increase the diversity of the difference vectors and reduce the chances of the algorithm stagnating.
