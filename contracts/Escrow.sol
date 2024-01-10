//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

interface IERC721 {
    function transferFrom(
        address _from,
        address _to,
        uint256 _id
    ) external;
}

contract Escrow {
    address public inspector,
    address public nftAddress,
    address payable public seller,
    address public lender,

    constructor(address _nftAddress, address _inspector, address payable _seller,address _lender)
    {
        nftAddress = _nftAddress;
        inspector = _inspector;
        seller = _seller;
        lender = _lender;
    }
}

