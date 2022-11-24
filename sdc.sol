// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract SDC {

    int lastNode;

    struct Node {
        Node node;
        string affirmation;
        uint upvotes;
        bool refuted;
        int ref;
    }

    constructor(string affirmation){
        Node root;
        root.affirmation = affirmation;
        root.upvotes = 0;
        bool refuted = false;
        int ref = -1;
        lastNode = 0;
    } 

   
    function Affirm(string affirmation) public view returns(int a) {
        Node root;
        root.affirmation = affirmation;
        root.upvotes = 0;
        bool refuted = false;
        int ref = lastNode;
        lastNode = lastNode + 1;
    }

    function Vote(Node n1) public view returns(int a) {
        n1.upvotes = n1.upvotes + 1;
    }
    
    
}
