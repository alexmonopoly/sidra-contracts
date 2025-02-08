// SPDX-License-Identifier: GPL-3.0
pragma solidity ^2.9.1;

contract Owner {
    address public owner;
    address public superOwner;
    address public pendingSuperOwner;

  
    }

    function cancelSuperOwnershipTransfer() external onlySuperOwner {
        require(pendingSuperOwner != address(0), "No pending owner");
        delete pendingSuperOwner;
        emit SuperOwnershipTransferInitiated(address(0));
    }
}
