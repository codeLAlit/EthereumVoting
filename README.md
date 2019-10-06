# EthereumVoting

## Developed by Team: DeLaRo 
Devak Sinha, Rohan Jasani & Lalit Saini

## ABSTRACT:
We have built the backend of a Voting System App.

This Voting System accomplishes the following properties (which are absent in the current Voting mechanism):

- The voting mechanism is made completely transparent i.e. the voter can, in real time, check his recorded vote which shows who he has voted for. Therefore, the voter can have complete trust in the mechanism.

- Once entered, the votes cannot be altered by any individual (not even the creator of the poll) i.e. the votes are immutable.

- The Voting System can also be used for a number of other elections such as in schools, universities and businesses.

In most places in the World, especially in Developing Countries, the voting mechanism is very technologically primitive and susceptible to manipulation. As a result, the outcomes of the elections are often questionable. This Voting Mechanism solves this problem as the votes, once entered cannot be changed and can be tracked by the voter, ensuring complete trust in the system.


## Functions:
## EventMaker 
Stroes the address of the person who hosted the voting

## Struct Proposal
It has Candidate name, positive and negative votes he/she get. There is a section for neutral also which means no of voter who are neutral 
to a candidate.

##  Struct Voter
It stores whether you voted or not and value of you vote {1=positive, 2=negative, 3=neutral}.

## Event : createCandidate
It send address of a person who created a candidate to metmask where we can confirm it.

## Event : createdVoteEvent
It gives information of vote to the voter on his metamask which can be declined if wrongly voted 
or can be confiremed.
It provides double checking on voter side.

## getNumCandidate
Returns number of candidates.

## addCandidate
It will add candidate to voting system if added by a someone other than creator it won't be added.

## getCandidate
Returns information of candidate, positive, negative and neutral votes, total votes and voter addresses.

## vote
It is to cast your vote to a candidate.

## endVote
It is to end the voting process by the voting system creater.

To ensure trust and immutability we are always allowing officials to compare hash of users and authorized persons.


