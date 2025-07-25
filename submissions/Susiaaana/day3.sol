// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PollStation{
    
    string [] public candidatNames;
    mapping(string => uint256) public voteCount;

    function addCandidates(string memory _candidateNames) public {
        candidatNames.push(_candidateNames);
            voteCount[_candidateNames] = 0;
    }

    function vote(string memory _candidateNames) public {
        voteCount[_candidateNames]++;
    }

    function getCandidateNames() public view returns(string[] memory) {
        return candidatNames;
    }

    function getVote(string memory _candidateNames) public view returns (uint256){
        return voteCount[_candidateNames];
  
    }

}