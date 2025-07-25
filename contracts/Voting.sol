// SPDX-License-Identifier : MIT

pragma solidity ^0.8.0;

contract Voting{
    struct Candidate {
        string name;
        uint256 voteCount;
    } 

    Candidate[] public candidates;
    address owner;
    mapping(address => bool) public voters;


    uint256 public votingStart;
    uint256 public votingEnd;

    constructor(string[] memory _candidateNames, uint256 _durationInMinutes){
        for(uint256 i=0; i< memory_candidateNames.length; i++){
            candidates.push(
                Candidate({
                    name: _candidateNames[i],
                    voteCount: 0
                })
            )
        }

        owner = msg.sender;
        votingStart = block.timestamp;
        votingEnd = block.timestamp + (_durationInMinutes * 1 minutes);
    }

    modifier onlyOwner{
        require(msg.sender == owner);
        _;
    } 

    function addCandidate(string memory _name) public onlyOwner{
        candidates.push(Candidate({

        }))
    }

}


