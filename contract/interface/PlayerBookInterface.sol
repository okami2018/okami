pragma solidity ^0.4.24;

interface PlayerBookInterface {
    function getPlayerID(address _addr) external returns (uint256);
    function getPlayerName(uint256 _pID) external view returns (bytes32);
    function getPlayerLAff(uint256 _pID) external view returns (uint256);
    function getPlayerAddr(uint256 _pID) external view returns (address);
    function getPlayerLevel(uint256 _pID) external view returns (uint8);
    function getNameFee() external view returns (uint256);
    function deposit() external payable returns (bool);
    function updateRankBoard( uint256 _pID, uint256 _cost ) external;
    function resolveRankBoard() external;
    function setPlayerAffID(uint256 _pID,uint256 _laff) external;
    function registerNameXIDFromDapp(address _addr, bytes32 _name, uint256 _affCode, bool _all, uint8 _level) external payable returns(bool, uint256);
    function registerNameXaddrFromDapp(address _addr, bytes32 _name, address _affCode, bool _all, uint8 _level) external payable returns(bool, uint256);
    function registerNameXnameFromDapp(address _addr, bytes32 _name, bytes32 _affCode, bool _all, uint8 _level) external payable returns(bool, uint256);
}
