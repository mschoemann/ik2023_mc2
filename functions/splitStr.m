function str=splitStr(remain,delimiter)
%splits up a string by a specified delimiter
%
% Author: Stefan Scherbaum, University of Dresden, 2011
%
% Copyright (C) 2011 Stefan Scherbaum, stefan.scherbaum@psychologie.tu-dresden.de
%
% This program is free software; you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation; either version 2 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program; if not, write to the Free Software
% Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
%
% Revision 1.0 schtefan
%


str=cell(0,0);
counter=1;
while ~isempty(remain)
   [str{counter}, remain] = strtok(remain, delimiter);
   if isempty(str{counter}),  break;  end
   counter=counter+1;
end
%str=str(1:end-1);