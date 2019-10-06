# EthereumVoting

## Developed by Team: DeLaRo 
Devak Sinha, Rohan Jasani & Lalit Saini

## EventMaker 
Stroes the address of the person who hosted the voting

## Struct Proposal
It has Candidate name, positive and negative votes he/she get. There is a section for neutral also which means no of voter who are neutral 
to a candidate.

##  Struct Voter
It stores whether you voted or not and value of you vote {1, -1, 0}.

## Event : createCandidate
It send address of a person who created a candidate to metmask where we can confirm it.
If it is fraudlent we have its data with us.

## Event : createdVoteEvent
It gives information of vote to the voter on his metamask which can be declined if wrongly voted 
or can be confiremed.
It provides double checking on voter side.

## getNumCandidate
Returns number of candidates.

## addCandidate
It will add candidate to voting system if added by a fraund can be declined from metamask.

## getCandidate
Returns information of candidate, positive, negative and neutral votes, total votes and voter addresses.

## vote
It is to cast your vote to a candidate.

## endVote
It is to end the voting process by the voting system creater.

To ensure trust and immutability we are always callowing officials to compare hash of users and authorized persons.


