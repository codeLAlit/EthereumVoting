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
It has the Candidate name, positive and negative votes s/he got. There is also a section for neutral which means number of voters who are neutral to a candidate.
In case of draw, the candidate with maximum neutral votes will win.

##  Struct Voter
It stores whether you voted or not and value of you vote {1=positive, 2=negative, 3=neutral}.

## Event : createCandidate
It sends address of the person who created a candidate to MetaMask where we can confirm it.

## Event : createdVoteEvent
It gives information of his/her vote to the voter on his/her MetaMask which can be declined if wrongly voted or can be confirmed. Once confirmed by voter, vote cannot be changed. It provides double checking on voter’s side.

## getNumCandidate
Returns number of candidates.

## addCandidate
It will add the candidate to the voting system. If added by someone other than the Creator, he/she will not be added.

## getCandidate
Returns information of candidate i.e. positive, negative and neutral votes, total votes and voter addresses.

## vote
It is to cast your vote to a candidate.

## endVote
Its function is to end the voting process by the voting system creator.


To ensure trust and immutability, we are always allowing anyone even voters to compare hash of users and authorized persons.


