pragma solidity ^0.5.0;


contract Vote {

    int private count=-1;
    address private EventMaker=msg.sender;

    struct Proposal {
        string Candidate;
        uint votePos;
        uint voteNeg;
        uint voteNeutral;
        uint total;
        mapping (address => Voter) voters;
        address[] votersAddress;
    }

    struct Voter {
        uint value;
        bool voted;
    }

    Proposal[] public proposals;
    
    event CreatedCandidateEvent(int count, string Candidate, address EventMaker);
    event CreatedVoteEvent(address votersAddress);

    function getNumCandidate() public view returns (uint) {
        return proposals.length;
    }

    function addCandidate(string memory Candidate) public returns (bool) {
        if(msg.sender==EventMaker)
            {Proposal memory proposal;
            ++count;
            emit CreatedCandidateEvent(count, Candidate, msg.sender);
            proposal.Candidate = Candidate;
            proposals.push(proposal);}
        return true;
    }

     function getCandidate(uint CandidateID) public view returns (uint, string memory, uint, uint, uint, uint, address[] memory) {
        if (proposals.length > 0) {
            Proposal memory p = proposals[CandidateID]; // Get the proposal
            return (CandidateID, p.Candidate, p.votePos, p.voteNeg, p.voteNeutral, p.total, p.votersAddress);
        }
    }

    function vote(uint CandidateID, uint voteValue) public returns (bool) {
        if (proposals[CandidateID].voters[msg.sender].voted == false) { 
            require(voteValue == 1 || voteValue == 2 || voteValue == 3); 
            Proposal storage p = proposals[CandidateID]; 
            if (voteValue == 1) {
                p.votePos += 1;
            } else if (voteValue == 2) {
                p.voteNeg += 1;
            } else {
                p.voteNeutral += 1;
            }
            p.total=p.votePos-p.voteNeg;
            p.voters[msg.sender].value = voteValue;
            p.voters[msg.sender].voted = true;
            p.votersAddress.push(msg.sender);
            emit CreatedVoteEvent(msg.sender);
            return true;
        } else {
            return false;
        }
    }
    
    function endEvent() public view returns (string memory){
        if(msg.sender==EventMaker){
            Proposal memory max = proposals[0];
            for(uint i=1; i<proposals.length;i++){
                if((proposals[i].total > max.total) || ((proposals[i].total == max.total) && (proposals[i].voteNeutral > max.voteNeutral))) max = proposals[i];
            } 
            return (max.Candidate);
        }
        else return("Invalid");
    }

}