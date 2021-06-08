# MarkovBayesian

# UNDERSTANDINGMARKOV PROCESSES & BAYESIAN STATISTICAL INFERENCE
# **Part 1**  
For the purposes of the first task, a random walk describes a process in which a particle moves about a map  
via an immediately surrounding neighbor, which is chosen randomly at each time step. In the case of task  
1, a discrete uniform random walk is performed on a two-dimensional map, where a single position from a  
countable number of neighboring positions, each with an equal probability of being chosen, is selected for  
every time step.  
**Requirements**   
• Grid Dimensions: 5x5.    
• Starting Point: (0,0) located at the bottom-left corner of the grid.  
• Simulations: 10,000.  
• Time steps/simulation: 10,000.  
**Considerations**  
• A traveling particle at the edge of the grid has 5 immediately surrounding neighbors on-grid.  
• A traveling particle at a corner of the grid has 3 immediately surrounding neighbors on-grid.  
• A traveling particle at any other position on the grid has 8 immediately surrounding neighbors.  

# **Part 2**  
A Gaussian random walk is a subset of the randomwalk, which is performed on a continuous space. For the 
purposes of the second task, a two-dimensional walk is performed where C is the covariance matrix of the bivariate Gaussian distribution.  

# **Part 3**  
The Metropolis Algorithm is used to produce samples from target distributions that cannot be sampled from,  
due to having unknown parameters, complicated calculations, or unknown distributions. This algorithm is  
defined as a Markov chain Monte Carlo method, constructing aMarkov chain with the unknown distribution as  
the equilibrium position.  
The Monte Carlo method relies on random sampling in order to produce an approximation. Using this algorithm  
sometimes requires the sample to have a burn in period, allowing the Markov chain iterations to converge to  
the target distribution. For more complicated algorithms, this may require many thousands of iterations. This is  
due to the nature of random sampling, which doesn’t accept all samples to ensure an accurate approximation of  
a given distribution.  
To start this algorithm, a transition kernel must be provided, as this algorithm works on a similar concept to a  
random walk, where the chain starts at a certain value, simulates a random walk, and the next position (sample)  
is accepted or rejected based on a factor called the acceptance probability. The algorithm is described below:  
• Choose a starting position for theMarkov chain.  
• Iterate through the number of time steps T.  
• For every time step t, sample from the proposal distribution.  
• Compute the acceptance probability.  
• Draw a random value x.  
• If x is less than the acceptance probability, store the proposed sample.  
• If x is more than the acceptance probability, store the previous sample.  
The acceptance probability is defined as the ratio of the proposed sample and previous sample after being input  
to the target distribution.

# **Part 4** 
A Multivariate Gaussian is defined as a multidimensional joint normal distribution characterized by the density
function. In order to complete this task, the joint probability distribution must be used to find
the relationship between the two variables. In this case their joint density is the product of the two individual
density functions.
