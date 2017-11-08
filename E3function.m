
function [medie , patrat ,inmultire]= E3function (c) 
lungime = length (c); 
medie = real(sum(c)) / lungime;
patrat = c.^2;
inmultire = c * c.';