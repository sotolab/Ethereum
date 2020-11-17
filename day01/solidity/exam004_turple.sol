pragma solidity ^0.4.11;

contract Example004 {
  function turpleValue() {
       var  ( sun, star, moon ) = (5, 11, true);
       ( sun, star ) = ( star, sun);
       var (mon, ethan) = (sun, star);
  }
}
